// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec  3 11:45:19 2020
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dds_125m_q -prefix
//               dds_125m_q_ dds_125m_q_sim_netlist.v
// Design      : dds_125m_q
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_125m_q,dds_compiler_v6_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_20,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dds_125m_q
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [15:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "16" *) 
  (* C_AMPLITUDE = "1" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "16" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0001100110011001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dds_125m_q_dds_compiler_v6_0_20 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[15:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZhH7Or7GCAhAFpiSiK8r6sA7RwjJ9Tdii11EzwiypNpPn0r9A7rJiiZol84XxYNanpwTLFPRwdF3
O17/caqkTg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ojNAWo89+4CzZxOHvA45GVT0ANL90cKmvVUXXwDB3fYmp9A9JzMVd1jVDc2C6zq40HRJI3LCtqYa
SANm7EdbxrlwmiFka/Vi1pmGwcvpHiXNHqEL40Ybr2rzaDJ/8s1TFl1xPgk91nvMuEUJ7Zn2ncWy
O4fQj9khXHZjQEY0hCk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ALgZm8VrZWZvRIch4Br8F+SMV+QwzLgh4lhQ7l513y3OWEbGpnpl2ftnp0u/2xp6nc3McskfP6nm
PJIcZIlaoKToyc9ZRjlnu3qXdjqRKZiEy2ry6na1WNvAIaoQUm6cedQIfaS44sUErPv5Hny28v01
jQKfzwV2u2/WdDSpq9G8hOJmD8cQ3zZchT3gKLO9morrDng3GunTKEfwYc3psoRS0ADCiN8q34xa
B0V0mmxTng2mAObVTR5v4uBWpsqq4e715mqrEjAgTT2TiRmhZA6iEH0d/cullajmHuhhllApBMPr
NQ7v5B4A3oTiYslgvPfU5+fjwE/t5C4ngf7cMQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NqL8mDDVaKZ5Rhf5kFotnTPpOfKK0XotF1IfCUjg/fLWMIgs9842rKKunnwWG4yl52a73CWOqlIU
wym62ZKwHQvNIhDYV4et8nOJ/ssF4L531FMXWk+Ax18Dho+Deap2g0iGf+xYvOf58mhjEUs+4Lpb
l6JQqgQz0Qvcux7Nb7vhRavZyxh1+omPDBi0rWxmBAAx6/3ruQBSwQYJCOtZByjb7cyYwaK2a5O+
gc37qC3xTorqIs13YdItFsS1XcyP9S+H98hyqMQtkTj9WbauO5PJXF9TgC7AZZdA6e7iPoo1P0MR
lxYNKo2yPtUYV/yEo48zAFaT6y9MWELY9FWX0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d4Ir9YmkpeWxfTLlPQYtgkUeaxN8B1i90JFB7P9JRLI2mXpcAqbM1Ddckph49f+F/oHMkaQ1Dzdy
Tej6kxJi/Wdiu5rZ5OmBuS1ZbOG2CJC6XfXj0ThvxQ1LW4KNfufD8drKKx2IixrN1qv0PX60j/6X
3tXvEQ4xFipk/uBl74M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AcG3M3dwdYa7Crux6whvnEB7jpQ3vYcVRjQE5IC/udJBxEWpsGpVQvccMKBkoDHqdapYFU/iis0y
URrcLRxuH1iKJfzTcPj3UrIKQD9hZrAokyeBmOtsQ+XAWjJkJU85Qm3Ik0ZRBpB/TLb4/lT75yA7
UVZ90xB7V73bMURI+0oh6pjmcYbZ1CLO3wNCtVzFBzmngbfwzsRdxSArLHEd3e5VZpxrrhdclpzu
0l0xLi8XYPn9IoQcyVJfd34Oj5C6xjuozB8+xokj5qXDryDzLxGuS1qWUi55uL8EBiv81cZoNk/O
K6JvjMhV3Byr7N02AfkTJtDyXNgRm5QsOdQIIQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s7hXRgGD7PplS4pBVEYIAD7ljzuh25HUgBtLBeE/2ImUhn/63TjM1VrWBdMEmMOCTVMAMtVjdkQW
NS+ZyPExJTiGBpj5ZS0pPGflQ6V7uW6IpfHQ6aa9mRriWcZ4TuEr3yMtE+luDo6Chw0hgizpV5By
lGPXBz9qv4Z/PSwxAtCxO/ksyRObQ9glxV/ECfAE/lIKYwJ+/WaCNIGStPhoMB6/bo6ZBAVbZ8wx
PuM5xkRe1qTNlQSqCRqnrSvSGG6JoxHfLwN4Y61rUk9XF6mr0zxKpwONVqkYd73dCWsbtsywPXhv
u4Gcx00Vud2slvSdQXyCJiSRTblaZrSdOApVCQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZckK18NWTOr3bQxeTQ2Hmehew8edLI59NtFiD96pysefOkcdqoNSDc6Q21XYVaYLKX0lYNCW/c6n
fv5C4G0fE7A80b0SPkQE+sipaiBKWBNNb7GwGwwySLCePoDtZybeOvpqvvaxadDa0dqtQJbA4Zgj
LzcT0GMgIQgj84Z3Eu8ooI5jQk9jwAPKrZcdar/xrnoD2kI5ELzXQbNAj6Di5OEO91+HAv8WphCC
mruqWvwON3yyTxqzXEmugM0Ro7iCh5ErefC7ej8IJ8xoJ4++2UlBwwue5mPA5gNYhtQkFcQ7Np1e
Ycs+gyHI/UVizRd+96zJ57Sq5tf88tJ9NQqRfA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rws6+VMWmHV6kQwKOlrBwauV6Z4saZJvIT7vO0puMXJlcaRlIvoj5ogg/v58Ri3VQEE9fMChgryM
pyKqZnjLcwA7Y2k+uXNfhwaaHv00BPIfbb7kyG3qs00Ja2TNlJI4WJsoMo88a5AbTegYyaQ8vJaM
0GjbbTcOuG8re5lVCUM0FM1b/1k7+iQp6Klfmh9VtIYk5dhuAyQHMRFGmOSfdE27bffNgdfYS3kp
i0DtbgNnRIDsdIlu2/RO3GojLf+2oyIm6Zf4ORn5bjGq4hduIv0GFaYbpasBvNnpNjRbeA0hPZcR
ouMej74eTG4+j2Xu7Kl+tvKu2e2a0zAkb0Z6Cg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11872)
`pragma protect data_block
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
hKQjMs30KEVlP+ckYalm4w==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZhH7Or7GCAhAFpiSiK8r6sA7RwjJ9Tdii11EzwiypNpPn0r9A7rJiiZol84XxYNanpwTLFPRwdF3
O17/caqkTg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ojNAWo89+4CzZxOHvA45GVT0ANL90cKmvVUXXwDB3fYmp9A9JzMVd1jVDc2C6zq40HRJI3LCtqYa
SANm7EdbxrlwmiFka/Vi1pmGwcvpHiXNHqEL40Ybr2rzaDJ/8s1TFl1xPgk91nvMuEUJ7Zn2ncWy
O4fQj9khXHZjQEY0hCk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ALgZm8VrZWZvRIch4Br8F+SMV+QwzLgh4lhQ7l513y3OWEbGpnpl2ftnp0u/2xp6nc3McskfP6nm
PJIcZIlaoKToyc9ZRjlnu3qXdjqRKZiEy2ry6na1WNvAIaoQUm6cedQIfaS44sUErPv5Hny28v01
jQKfzwV2u2/WdDSpq9G8hOJmD8cQ3zZchT3gKLO9morrDng3GunTKEfwYc3psoRS0ADCiN8q34xa
B0V0mmxTng2mAObVTR5v4uBWpsqq4e715mqrEjAgTT2TiRmhZA6iEH0d/cullajmHuhhllApBMPr
NQ7v5B4A3oTiYslgvPfU5+fjwE/t5C4ngf7cMQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NqL8mDDVaKZ5Rhf5kFotnTPpOfKK0XotF1IfCUjg/fLWMIgs9842rKKunnwWG4yl52a73CWOqlIU
wym62ZKwHQvNIhDYV4et8nOJ/ssF4L531FMXWk+Ax18Dho+Deap2g0iGf+xYvOf58mhjEUs+4Lpb
l6JQqgQz0Qvcux7Nb7vhRavZyxh1+omPDBi0rWxmBAAx6/3ruQBSwQYJCOtZByjb7cyYwaK2a5O+
gc37qC3xTorqIs13YdItFsS1XcyP9S+H98hyqMQtkTj9WbauO5PJXF9TgC7AZZdA6e7iPoo1P0MR
lxYNKo2yPtUYV/yEo48zAFaT6y9MWELY9FWX0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d4Ir9YmkpeWxfTLlPQYtgkUeaxN8B1i90JFB7P9JRLI2mXpcAqbM1Ddckph49f+F/oHMkaQ1Dzdy
Tej6kxJi/Wdiu5rZ5OmBuS1ZbOG2CJC6XfXj0ThvxQ1LW4KNfufD8drKKx2IixrN1qv0PX60j/6X
3tXvEQ4xFipk/uBl74M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AcG3M3dwdYa7Crux6whvnEB7jpQ3vYcVRjQE5IC/udJBxEWpsGpVQvccMKBkoDHqdapYFU/iis0y
URrcLRxuH1iKJfzTcPj3UrIKQD9hZrAokyeBmOtsQ+XAWjJkJU85Qm3Ik0ZRBpB/TLb4/lT75yA7
UVZ90xB7V73bMURI+0oh6pjmcYbZ1CLO3wNCtVzFBzmngbfwzsRdxSArLHEd3e5VZpxrrhdclpzu
0l0xLi8XYPn9IoQcyVJfd34Oj5C6xjuozB8+xokj5qXDryDzLxGuS1qWUi55uL8EBiv81cZoNk/O
K6JvjMhV3Byr7N02AfkTJtDyXNgRm5QsOdQIIQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s7hXRgGD7PplS4pBVEYIAD7ljzuh25HUgBtLBeE/2ImUhn/63TjM1VrWBdMEmMOCTVMAMtVjdkQW
NS+ZyPExJTiGBpj5ZS0pPGflQ6V7uW6IpfHQ6aa9mRriWcZ4TuEr3yMtE+luDo6Chw0hgizpV5By
lGPXBz9qv4Z/PSwxAtCxO/ksyRObQ9glxV/ECfAE/lIKYwJ+/WaCNIGStPhoMB6/bo6ZBAVbZ8wx
PuM5xkRe1qTNlQSqCRqnrSvSGG6JoxHfLwN4Y61rUk9XF6mr0zxKpwONVqkYd73dCWsbtsywPXhv
u4Gcx00Vud2slvSdQXyCJiSRTblaZrSdOApVCQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZckK18NWTOr3bQxeTQ2Hmehew8edLI59NtFiD96pysefOkcdqoNSDc6Q21XYVaYLKX0lYNCW/c6n
fv5C4G0fE7A80b0SPkQE+sipaiBKWBNNb7GwGwwySLCePoDtZybeOvpqvvaxadDa0dqtQJbA4Zgj
LzcT0GMgIQgj84Z3Eu8ooI5jQk9jwAPKrZcdar/xrnoD2kI5ELzXQbNAj6Di5OEO91+HAv8WphCC
mruqWvwON3yyTxqzXEmugM0Ro7iCh5ErefC7ej8IJ8xoJ4++2UlBwwue5mPA5gNYhtQkFcQ7Np1e
Ycs+gyHI/UVizRd+96zJ57Sq5tf88tJ9NQqRfA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rws6+VMWmHV6kQwKOlrBwauV6Z4saZJvIT7vO0puMXJlcaRlIvoj5ogg/v58Ri3VQEE9fMChgryM
pyKqZnjLcwA7Y2k+uXNfhwaaHv00BPIfbb7kyG3qs00Ja2TNlJI4WJsoMo88a5AbTegYyaQ8vJaM
0GjbbTcOuG8re5lVCUM0FM1b/1k7+iQp6Klfmh9VtIYk5dhuAyQHMRFGmOSfdE27bffNgdfYS3kp
i0DtbgNnRIDsdIlu2/RO3GojLf+2oyIm6Zf4ORn5bjGq4hduIv0GFaYbpasBvNnpNjRbeA0hPZcR
ouMej74eTG4+j2Xu7Kl+tvKu2e2a0zAkb0Z6Cg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XWctLjNIh/9j6nY1JQhTRRkHoENeWSvshE/jngcJwVf06U4/YYHMEm1WxJaIXKAY0iTSszjgFDmc
AGkkxJGPo0e4/WbhmzEKt8Ws00zhLaqgkGX8F8vRuBvGw/RKSE8BZA4oJ7wdCitxaLo/pkikLbSC
o8VBFQmAwNNuDVjVblPvsN2TtjAju/QdrTbSLUp8EZlixyqWEMVoX6AL6+esQ9biqnPIy7AsMiPd
WEG3dLkBZmtIQr4jOIclIrmrt1dlufPI22ZoOAFigKa7tkAav+wLCCxT1BCVbYF4zAeUaYvylXFp
zRWc8YotqCJY4Kpu4qx3BSlbvD95WEBAtJZmUg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u2qrcnnwUsWgQepUUirf70sViPpFVhbkt8bncCboClKEXXsgi46a8usfMfLIYP2sPjIFdWiICv/J
VRswhJzQBDnDR5sgOqpHBYUbZAOKOjTCh7g6CaOerHyLwP6LFW28bQtnnCjn3QxSvq31SVNHbqKq
QNx12adRm+VqiCNyjfaN+0dTRUICR8bAUbvU3XqxAbrK611EHJrdFPS28W13VPo8ABrxraWQxNpR
KH8wpGv8ed7Oy9AWSwUlLF93aRAm3/uk07Xs1J7QimeW4qYzQaVsB3/j24FIZbmp8eyhl/A1gUFj
8bLKBWUch+IZDGHZIDon6fZShu7oW4DB8z13mg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34528)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
