---------------------------------------------------------------------------
--
--  (c) Copyright 2011-2012 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES.
--
---------------------------------------------------------------------------
-- Description:
-- This is an example testbench for the Reed-Solomon Encoder IP core.
-- The testbench has been generated by Vivado to accompany the IP core
-- instance you have generated.
--
-- This testbench is for demonstration purposes only.  See note below for
-- instructions on how to use it with the netlist created for your core.
--
-- See the Reed-Solomon Encoder product guide for further information about this
-- core.
--
---------------------------------------------------------------------------
-- Using this testbench
--
-- This testbench instantiates your generated Reed-Solomon Encoder core
-- instance named "rs_encoder".
--
-- Use Vivado's Run Simulation flow to run this testbench.  See the Vivado
-- documentation for details.
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_rs_encoder is
end tb_rs_encoder;

architecture tb of tb_rs_encoder is

  -----------------------------------------------------------------------
  -- Timing constants
  -----------------------------------------------------------------------
  constant CLOCK_PERIOD : time := 100 ns;
  constant T_HOLD       : time := 10 ns;
  constant T_STROBE     : time := CLOCK_PERIOD - (1 ns);

  -----------------------------------------------------------------------
  -- DUT signals
  -----------------------------------------------------------------------

  -- Global signals
  signal aclk                           : std_logic := '0';  -- the master clock
  signal aresetn                        : std_logic := '1';  -- synchronous active low reset

  -- Input slave channel signals
  signal s_axis_input_tvalid            : std_logic := '0';  -- payload is valid
  signal s_axis_input_tready            : std_logic := '1';  -- slave is ready
  signal s_axis_input_tdata             : std_logic_vector(7 downto 0) := (others => '0');  -- data payload
  signal s_axis_input_tlast             : std_logic := '0';  -- indicates end of packet

  -- Output master channel signals
  signal m_axis_output_tvalid           : std_logic := '0';  -- payload is valid
  signal m_axis_output_tready           : std_logic := '1';  -- receiving slave is ready
  signal m_axis_output_tdata            : std_logic_vector(7 downto 0) := (others => '0');  -- data payload
  signal m_axis_output_tlast            : std_logic := '0';  -- indicates end of packet

  -- Event signals
  signal event_s_input_tlast_missing    : std_logic := '0';  -- s_axis_input_tlast low when it should be high
  signal event_s_input_tlast_unexpected : std_logic := '0';  -- s_axis_input_tlast high when it should be low

  -----------------------------------------------------------------------
  -- Aliases for AXI channel TDATA and TUSER fields
  -- These are a convenience for viewing data in a simulator waveform viewer.
  -- If using ModelSim or Questa, add "-voptargs=+acc=n" to the vsim command
  -- to prevent the simulator optimizing away these signals.
  -----------------------------------------------------------------------

  -- Input slave channel alias signals
  signal s_axis_input_tdata_data_in : std_logic_vector(7 downto 0) := (others => '0');  -- DATA_IN field

  -- Output master channel alias signals
  signal m_axis_output_tdata_data_out : std_logic_vector(7 downto 0) := (others => '0');  -- DATA_OUT field

  -----------------------------------------------------------------------
  -- Testbench constants, types and functions to create input data
  -----------------------------------------------------------------------

  type T_IP_TABLE is array (0 to 238) of std_logic_vector(7 downto 0);

  -- Function to generate input data table
  -- Data is a sinusoid with a period equal to twice the input code block size
  function create_ip_table return T_IP_TABLE is
    variable result   : T_IP_TABLE;
    variable theta    : real;
    variable sin_real : real;
    variable sin_int  : integer;
  begin
    for i in 0 to 238 loop
      theta     := real(i) / 239.0 * 2.0 * 2.0 * MATH_PI;
      sin_real  := sin(theta);
      sin_int   := integer(floor(sin_real * real(2**7)));
      result(i) := std_logic_vector(to_signed(sin_int, 8));
    end loop;
    return result;
  end function create_ip_table;

  -- Call the function to create the input data
  constant IP_DATA : T_IP_TABLE := create_ip_table;

  -----------------------------------------------------------------------
  -- Testbench types and signals
  -----------------------------------------------------------------------

  -- Overall simulation phase control enumerated type and signal
  type sim_phase_t is (phase_init,           -- test initialization, run no operations
                       phase_single,         -- encode a single codeblock, and wait for the result
                       phase_continuous,     -- encode 20 codeblocks, streaming data continuously
                       phase_axi_handshake,  -- encode 10 more codeblocks, manipulating AXI handshake signals
                       phase_aresetn,        -- demonstrate the use of synchronous reset
                       phase_end             -- end of simulation
                       );
  signal sim_phase : sim_phase_t := phase_init;


begin

  -----------------------------------------------------------------------
  -- Instantiate the DUT
  -----------------------------------------------------------------------

  dut : entity work.rs_encoder
    port map (
      -- Global signals
      aclk                           => aclk,
      aresetn                        => aresetn,
      -- AXI4-Stream slave channel for input data
      s_axis_input_tvalid            => s_axis_input_tvalid,
      s_axis_input_tready            => s_axis_input_tready,
      s_axis_input_tdata             => s_axis_input_tdata,
      s_axis_input_tlast             => s_axis_input_tlast,
      -- AXI4-Stream master channel for output data
      m_axis_output_tvalid           => m_axis_output_tvalid,
      m_axis_output_tready           => m_axis_output_tready,
      m_axis_output_tdata            => m_axis_output_tdata,
      m_axis_output_tlast            => m_axis_output_tlast,
      -- Event signals
      event_s_input_tlast_missing    => event_s_input_tlast_missing,
      event_s_input_tlast_unexpected => event_s_input_tlast_unexpected
      );


  -----------------------------------------------------------------------
  -- Generate clock
  -----------------------------------------------------------------------

  clock_gen : process
  begin
    aclk <= '0';
    wait for CLOCK_PERIOD;
    loop
      aclk <= '0';
      wait for CLOCK_PERIOD/2;
      aclk <= '1';
      wait for CLOCK_PERIOD/2;
    end loop;
  end process clock_gen;


  -----------------------------------------------------------------------
  -- Simulation control
  -- Run a series of demonstrations, each in a separate test phase
  -- This process controls all other stimuli processes
  -----------------------------------------------------------------------

  sim_control : process
  begin

    -- Drive simulation control synchronous to the rising edge of the clock
    wait until rising_edge(aclk);

    -- Encode a single code block, and wait for the result
    sim_phase <= phase_single;
    wait until rising_edge(aclk) and
               m_axis_output_tvalid = '1' and m_axis_output_tready = '1' and m_axis_output_tlast = '1';
    wait for 5 * CLOCK_PERIOD;

    -- Encode 20 codeblocks, streaming data continuously
    sim_phase <= phase_continuous;
    for i in 1 to 20 loop
      wait until rising_edge(aclk) and
                 m_axis_output_tvalid = '1' and m_axis_output_tready = '1' and m_axis_output_tlast = '1';
    end loop;
    wait for 5 * CLOCK_PERIOD;

    -- Encode 10 more codeblocks, manipulating AXI handshake signals
    sim_phase <= phase_axi_handshake;
    for i in 1 to 10 loop
      wait until rising_edge(aclk) and
                 m_axis_output_tvalid = '1' and m_axis_output_tready = '1' and m_axis_output_tlast = '1';
    end loop;
    wait for 5 * CLOCK_PERIOD;

    -- Demonstrate the use of synchronous reset
    sim_phase <= phase_aresetn;
    wait until rising_edge(aclk) and
               m_axis_output_tvalid = '1' and m_axis_output_tready = '1' and m_axis_output_tlast = '1';
    wait for 5 * CLOCK_PERIOD;

    -- End of simulation
    sim_phase <= phase_end;
    wait for CLOCK_PERIOD;
    report "Not a real failure. Simulation finished successfully. Test completed successfully" severity failure;
    wait;

  end process sim_control;


  -----------------------------------------------------------------------
  -- Generate input slave channel inputs
  -----------------------------------------------------------------------

  input_stimuli : process

    -- Variables for random number generation
    variable seed1, seed2 : positive;
    variable rand         : real;

    -- Procedure to drive a single symbol on the input channel
    -- tdata and tlast are the transaction payload
    -- valid_mode defines how to drive TVALID: 0=TVALID always high, otherwise TVALID low 1 in valid_mode cycles
    -- abort is set if a reset aborts the transaction
    procedure drive_input_symbol(tdata          : std_logic_vector(7 downto 0);
                                 tlast          : std_logic;
                                 valid_mode     : integer := 0;
                                 variable abort : out boolean) is
    begin
      -- Drive AXI signals
      s_axis_input_tdata  <= tdata;
      s_axis_input_tlast  <= tlast;

      -- Drive AXI control signal TVALID
      if valid_mode > 0 then
        uniform(seed1, seed2, rand);  -- generate random number
        if rand < 1.0 / real(valid_mode) then
          s_axis_input_tvalid <= '0';  -- deassert TVALID
          uniform(seed1, seed2, rand);  -- generate another random number
          wait for CLOCK_PERIOD * integer(ceil(rand * 4.0));  -- hold low for up to 4 cycles
        end if;
      end if;
      s_axis_input_tvalid <= '1';  -- assert TVALID
      abort := false;
      loop
        wait until rising_edge(aclk);
        if aresetn = '0' then
          abort := true;
          exit;
        end if;
        exit when s_axis_input_tready = '1';
      end loop;
      wait for T_HOLD;
      s_axis_input_tvalid <= '0';
    end procedure drive_input_symbol;

    -- Procedure to drive a code block on the input channel, using the pregenerated input data table
    -- valid_mode defines how to drive TVALID: 0=TVALID always high, otherwise TVALID low 1 in valid_mode cycles
    procedure drive_input_codeblock(valid_mode   : integer := 0 ) is
      variable index : integer;
      variable tdata : std_logic_vector(7 downto 0);
      variable tlast : std_logic;
      variable abort : boolean;
    begin
      codeblock_loop : for i in 0 to 238 loop
        -- Look up sample data in data table, construct TDATA value
        tdata(7 downto 0) := IP_DATA(i);
        -- TLAST indicates the last symbol in the input code block
        if i = 238 then
          tlast := '1';
        else
          tlast := '0';
        end if;

        -- Drive the AXI transaction
        drive_input_symbol(tdata      => tdata,
                           tlast      => tlast,
                           valid_mode => valid_mode,
                           abort      => abort);

        exit codeblock_loop when abort;  -- abort all transactions if reset occurred
      end loop codeblock_loop;
    end procedure drive_input_codeblock;

  begin

    -- Wait for simulation control to signal the first phase
    wait until sim_phase = phase_single;
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    -- Encode a single codeblock, and wait for the result
    drive_input_codeblock;

    -- Wait for simulation control to signal the next phase
    wait until sim_phase = phase_continuous;
    wait until rising_edge(aclk);  -- synchronize to the clock
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock
    -- Encode 20 codeblocks, streaming data continuously
    for i in 1 to 20 loop
      drive_input_codeblock;
    end loop;

    -- Wait for simulation control to signal the next phase
    wait until sim_phase = phase_axi_handshake;
    wait until rising_edge(aclk);  -- synchronize to the clock
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    -- Encode 10 more codeblocks, manipulating AXI handshake signals
    for i in 1 to 10 loop
      drive_input_codeblock(valid_mode => 12 - i);  -- gradually increase how often TVALID is low
    end loop;

    -- Wait for simulation control to signal the next phase
    wait until sim_phase = phase_aresetn;
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    -- Demonstrate the use of synchronous reset
    drive_input_codeblock;

    -- That codeblock will be aborted by a reset.  After the reset, drive the codeblock again.
    wait until rising_edge(aclk) and aresetn = '0';  -- synchronous reset is active low
    wait until rising_edge(aclk) and aresetn = '1';  -- wait until the reset is released
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    -- Drive the codeblock again
    drive_input_codeblock;

    -- End of test
    wait;

  end process input_stimuli;


  -----------------------------------------------------------------------
  -- Generate output master channel TREADY input
  -----------------------------------------------------------------------

  output_tready_stimuli : process

    -- Variables for random number generation
    variable seed1, seed2 : positive;
    variable rand         : real;

    -- Codeblock number tracking
    variable axi_handshake_output_codeblock : integer := 1;

  begin

    -- Output channel TREADY is high in all phases except AXI handshake manipulation phase
    m_axis_output_tready <= '1';
    wait until sim_phase = phase_axi_handshake;
    wait until rising_edge(aclk);  -- synchronize to the clock
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    -- Decode 10 more codeblocks, manipulating AXI handshake signals
    -- Gradually decrease how often TREADY is low
    while sim_phase = phase_axi_handshake loop

      -- Drive AXI control signal TREADY
      uniform(seed1, seed2, rand);  -- generate random number
      if rand < 1.0 / real(axi_handshake_output_codeblock) then
        m_axis_output_tready <= '0';  -- deassert TREADY
        uniform(seed1, seed2, rand);  -- generate another random number
        wait for CLOCK_PERIOD * integer(ceil(rand * 10.0));  -- hold low for up to 10 cycles
      end if;
      m_axis_output_tready <= '1';  -- assert TREADY

    -- Keep track of the output codeblock number
      wait until rising_edge(aclk);
      if m_axis_output_tvalid = '1' and m_axis_output_tlast = '1' and aresetn = '1' then
        axi_handshake_output_codeblock := axi_handshake_output_codeblock + 1;
      end if;
      wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    end loop;

    -- End of test
    wait;

  end process output_tready_stimuli;


  -----------------------------------------------------------------------
  -- Generate synchronous reset input
  -----------------------------------------------------------------------

  aresetn_stimuli : process
  begin

    -- Synchronous reset input is active low.
    -- Synchronous reset is high (inactive) in all phases except reset demonstration
    aresetn <= '1';
    wait until sim_phase = phase_aresetn;

    -- A codeblock is processed by the core.
    -- Wait until the core starts to output data, then reset the core.
    -- Note that reset must be asserted for a minimum of two clock cycles (see the datasheet for details).
    wait until rising_edge(aclk) and m_axis_output_tvalid = '1' and m_axis_output_tready = '1';
    wait for CLOCK_PERIOD * 2;  -- allow two symbols to be output
    wait for T_HOLD;  -- drive inputs T_HOLD after the rising edge of the clock

    -- Assert reset for two clock cycles
    aresetn <= '0';  -- reset is active low
    wait for CLOCK_PERIOD * 2;
    aresetn <= '1';

    -- End of test
    wait;

  end process aresetn_stimuli;


  -----------------------------------------------------------------------
  -- Check outputs
  -----------------------------------------------------------------------

  check_outputs : process
    variable check_ok : boolean := true;
    -- Previous values of output master channel signals
    variable output_tvalid_prev : std_logic := '0';
    variable output_tready_prev : std_logic := '0';
    variable output_tdata_prev  : std_logic_vector(7 downto 0) := (others => '0');
    variable output_tlast_prev  : std_logic := '0';
  begin

    -- Check outputs T_STROBE time after rising edge of clock
    wait until rising_edge(aclk);
    wait for T_STROBE;

    -- Do not check the output payload values, as this requires a numerical model
    -- which would make this demonstration testbench unwieldy.
    -- Instead, check the protocol of the output master channel:
    -- check that the payload is valid (not X) when TVALID is high
    -- and check that the payload does not change while TVALID is high until TREADY goes high

    if m_axis_output_tvalid = '1' and aresetn = '1' then
      if is_x(m_axis_output_tdata) then
        report "ERROR: m_axis_output_tdata is invalid when m_axis_output_tvalid is high" severity error;
        check_ok := false;
      end if;
      if is_x(m_axis_output_tlast) then
        report "ERROR: m_axis_output_tlast is invalid when m_axis_output_tvalid is high" severity error;
        check_ok := false;
      end if;

      if output_tvalid_prev = '1' and output_tready_prev = '0' then  -- payload must be the same as last cycle
        if m_axis_output_tdata /= output_tdata_prev then
          report "ERROR: m_axis_output_tdata changed while m_axis_output_tvalid was high and m_axis_output_tready was low" severity error;
          check_ok := false;
        end if;
        if m_axis_output_tlast /= output_tlast_prev then
          report "ERROR: m_axis_output_tlast changed while m_axis_output_tvalid was high and m_axis_output_tready was low" severity error;
          check_ok := false;
        end if;
      end if;

    end if;

    assert check_ok
      report "ERROR: terminating test with failures." severity failure;

    -- Record payload values for checking next clock cycle
    if check_ok then
      output_tvalid_prev := m_axis_output_tvalid;
      output_tready_prev := m_axis_output_tready;
      output_tdata_prev  := m_axis_output_tdata;
      output_tlast_prev  := m_axis_output_tlast;
    end if;

  end process check_outputs;


  -----------------------------------------------------------------------
  -- Assign TDATA / TUSER fields to aliases, for easy simulator waveform viewing
  -----------------------------------------------------------------------

  -- Input slave channel alias signals
  s_axis_input_tdata_data_in <= s_axis_input_tdata(7 downto 0);

  -- Output master channel alias signals
  m_axis_output_tdata_data_out <= m_axis_output_tdata(7 downto 0);

end tb;

