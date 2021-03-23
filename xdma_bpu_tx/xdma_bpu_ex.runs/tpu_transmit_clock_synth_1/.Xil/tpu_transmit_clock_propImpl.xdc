set_property SRC_FILE_INFO {cfile:/home/caohy/Work/dual_line_process/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/tpu_transmit_clock/tpu_transmit_clock.xdc rfile:../../../xdma_bpu_ex.gen/sources_1/ip/tpu_transmit_clock/tpu_transmit_clock.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.064
