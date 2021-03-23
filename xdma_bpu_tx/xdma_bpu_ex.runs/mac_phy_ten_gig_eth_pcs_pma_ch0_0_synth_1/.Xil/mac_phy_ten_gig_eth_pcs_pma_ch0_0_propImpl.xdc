set_property SRC_FILE_INFO {cfile:/home/caohy/Work/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt.xdc rfile:../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt.xdc id:1 order:EARLY scoped_inst:inst/ten_gig_eth_pcs_pma_block_i/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_i/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/caohy/Work/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0.xdc rfile:../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
current_instance inst/ten_gig_eth_pcs_pma_block_i/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_i/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X0Y10 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[2].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
current_instance
current_instance inst
set_property src_info {type:SCOPED_XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~ *elastic*rd_truegray_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_cells -hierarchical -filter {NAME =~ *elastic*rag_writesync0_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -datapath_only 6.400
set_property src_info {type:SCOPED_XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~ *elastic*wr_gray_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_cells -hierarchical -filter {NAME =~ *elastic*wr_gray_rdclk0_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -datapath_only 3.100
set_property src_info {type:SCOPED_XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~ *elastic*rd_lastgray_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_cells -hierarchical -filter {NAME =~ *elastic*rd_lastgray_wrclk0_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -datapath_only 6.400
set_property src_info {type:SCOPED_XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -of [all_fanin -flat [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *resyncs*d1_reg}] -filter {NAME =~ *D}]] -filter {IS_SEQUENTIAL=="1" && NAME !~ "*resyncs*d1_reg"}] -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *resyncs*d1_reg}] -filter {NAME =~ *D}] 3.100 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -of [all_fanin -flat [get_pins -of_objects [get_cells -hier -filter {NAME =~ *coreclk_rxusrclk2_timer_125us_resync/*synchc_inst*d1_reg}] -filter {NAME =~ *D}]]  -filter {IS_SEQUENTIAL=="1" && NAME !~ "*coreclk_rxusrclk2_timer_125us_resync/*synchc_inst*d1_reg"}]  -to [get_pins -of_objects [get_cells -hier -filter {NAME =~ *coreclk_rxusrclk2_timer_125us_resync/*synchc_inst*d1_reg}] -filter {NAME =~ *D}] 3.200
set_property src_info {type:SCOPED_XDC file:2 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -hierarchical -filter {NAME =~ *drp_ipif_i*synch_*d_reg_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *drp_ipif_i*synch_*q_reg*}] -filter {NAME =~ *D || NAME =~ *R || NAME =~ *S}] 3.100
set_property src_info {type:SCOPED_XDC file:2 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_COMMON_X0Y2  [get_cells -hier -filter {NAME=~  *ten_gig_eth_pcs_pma_gt_common_block/*gthe3_common*}]
set_property src_info {type:SCOPED_XDC file:2 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_COMMON_X0Y2  [get_cells -hier -filter {NAME=~  *shared*ibufds_inst}]
