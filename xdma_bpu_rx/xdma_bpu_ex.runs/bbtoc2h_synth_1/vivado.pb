
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:082default:default2
00:00:122default:default2
2488.5042default:default2
443.0002default:default2
455412default:default2
576012default:defaultZ17-722h px� 
�
Command: %s
53*	vivadotcl2]
Isynth_design -top bbtoc2h -part xcku040-ffva1156-2-e -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcku0402default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcku0402default:defaultZ17-349h px� 
[
Loading part %s157*device2(
xcku040-ffva1156-2-e2default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
a
#Helper process launched with PID %s4824*oasys2
1135962default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 2582.227 ; gain = 85.715 ; free physical = 44648 ; free virtual = 56769
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
bbtoc2h2default:default2
 2default:default2y
c/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/synth/bbtoc2h.v2default:default2
582default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2-
axis_data_fifo_v2_0_4_top2default:default2
 2default:default2�
t/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_data_fifo_v2_0_vl_rfs.v2default:default2
542default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: kintexu - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_AXIS_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXIS_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXIS_SIGNAL_SET bound to: 27 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_FIFO_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_FIFO_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_IS_ACLK_ASYNC bound to: 1 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_SYNCHRONIZER_STAGE bound to: 3 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_ACLKEN_CONV_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_FIFO_MEMORY_TYPE bound to: auto - type: string 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_USE_ADV_FEATURES bound to: 825241648 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_PROG_EMPTY_THRESH bound to: 5 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_PROG_FULL_THRESH bound to: 11 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter LP_CDC_SYNC_STAGES bound to: 3 - type: integer 
2default:defaulth p
x
� 
t
%s
*synth2\
H	Parameter LP_CLOCKING_MODE bound to: independent_clock - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter LP_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter LP_FIFO_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter LP_FIFO_MEMORY_TYPE bound to: auto - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter LP_PACKET_FIFO bound to: false - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter LP_PROG_EMPTY_THRESH bound to: 5 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter LP_PROG_FULL_THRESH bound to: 11 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter LP_RD_DATA_COUNT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter LP_RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter LP_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter LP_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LP_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter LP_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter LP_USE_ADV_FEATURES bound to: 825241648 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter LP_WR_DATA_COUNT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter LP_S_ACLKEN_CAN_TOGGLE bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter LP_M_ACLKEN_CAN_TOGGLE bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2L
8axis_infrastructure_v1_1_0_util_aclken_converter_wrapper2default:default2
 2default:default2�
y/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
6002default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_SIGNAL_SET bound to: 255 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S_ACLKEN_CAN_TOGGLE bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M_ACLKEN_CAN_TOGGLE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_TPAYLOAD_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2?
+axis_infrastructure_v1_1_0_util_axis2vector2default:default2
 2default:default2�
y/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_SIGNAL_SET bound to: 255 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 72 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 80 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 81 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 82 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 83 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axis_infrastructure_v1_1_0_util_axis2vector2default:default2
 2default:default2
12default:default2
12default:default2�
y/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
8102default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2?
+axis_infrastructure_v1_1_0_util_vector2axis2default:default2
 2default:default2�
y/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter C_TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_TPAYLOAD_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_SIGNAL_SET bound to: 255 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_INDX_SS_TREADY bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDATA bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TSTRB bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TKEEP bound to: 3 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TLAST bound to: 4 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter G_INDX_SS_TID bound to: 5 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TDEST bound to: 6 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_INDX_SS_TUSER bound to: 7 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TREADY bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TDATA bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TSTRB bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_MASK_SS_TKEEP bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TLAST bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter G_MASK_SS_TID bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter G_MASK_SS_TDEST bound to: 64 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter G_MASK_SS_TUSER bound to: 128 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter G_TASK_SEVERITY_ERR bound to: 2 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter G_TASK_SEVERITY_WARNING bound to: 1 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter G_TASK_SEVERITY_INFO bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter P_TDATA_INDX bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TSTRB_INDX bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TKEEP_INDX bound to: 72 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TLAST_INDX bound to: 80 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter P_TID_INDX bound to: 81 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TDEST_INDX bound to: 82 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_TUSER_INDX bound to: 83 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axis_infrastructure_v1_1_0_util_vector2axis2default:default2
 2default:default2
22default:default2
12default:default2�
y/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
9922default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2L
8axis_infrastructure_v1_1_0_util_aclken_converter_wrapper2default:default2
 2default:default2
32default:default2
12default:default2�
y/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_infrastructure_v1_1_vl_rfs.v2default:default2
6002default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_fifo_axis2default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
23392default:default8@Z8-6157h px� 
q
%s
*synth2Y
E	Parameter CLOCKING_MODE bound to: independent_clock - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter FIFO_MEMORY_TYPE bound to: auto - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter PACKET_FIFO bound to: false - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TDATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter TID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter TDEST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter TUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter USE_ADV_FEATURES bound to: 825241648 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter WR_DATA_COUNT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter RD_DATA_COUNT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter PROG_FULL_THRESH bound to: 11 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter PROG_EMPTY_THRESH bound to: 5 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter CDC_SYNC_STAGES bound to: 3 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter EN_ADV_FEATURE_AXIS bound to: 16'b0001000000000000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter EN_ALMOST_FULL_INT bound to: 1'b0 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter EN_ALMOST_EMPTY_INT bound to: 1'b0 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter EN_DATA_VALID_INT bound to: 1'b1 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter EN_ADV_FEATURE_AXIS_INT bound to: 16'b0001000000000000 
2default:defaulth p
x
� 
q
%s
*synth2Y
E	Parameter USE_ADV_FEATURES_INT bound to: 825241648 - type: integer 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter PKT_SIZE_LT8 bound to: 1'b0 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter LOG_DEPTH_AXIS bound to: 10 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter TDATA_OFFSET bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter TSTRB_OFFSET bound to: 72 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter TKEEP_OFFSET bound to: 80 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter TID_OFFSET bound to: 81 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter TDEST_OFFSET bound to: 82 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter TUSER_OFFSET bound to: 83 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter AXIS_DATA_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_COMMON_CLOCK bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_FIFO_MEMORY_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter P_ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter P_PKT_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter AXIS_FINAL_DATA_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter TUSER_MAX_WIDTH bound to: 4013 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2$
xpm_cdc_sync_rst2default:default2
 2default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
10592default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 3 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000000000000 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter DEF_VAL bound to: 1'b0 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_cdc_sync_rst2default:default2
 2default:default2
42default:default2
12default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
10592default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_fifo_base2default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter FIFO_MEMORY_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter FIFO_WRITE_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter WRITE_DATA_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter WR_DATA_COUNT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter PROG_FULL_THRESH bound to: 11 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter USE_ADV_FEATURES bound to: 825241648 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter READ_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter FIFO_READ_LATENCY bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter READ_DATA_WIDTH bound to: 84 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter RD_DATA_COUNT_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter PROG_EMPTY_THRESH bound to: 5 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter DOUT_RESET_VALUE bound to: (null) - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 3 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter FULL_RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter REMOVE_WR_RD_PROT_LOGIC bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter invalid bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter stage1_valid bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter stage2_valid bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter both_stages_valid bound to: 3 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_MEM_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter RD_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ENABLE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter FIFO_READ_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FIFO_SIZE bound to: 86016 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter WR_WIDTH_LOG bound to: 7 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter WR_DEPTH_LOG bound to: 10 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter WR_PNTR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter RD_PNTR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter FULL_RST_VAL bound to: 1'b1 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter WR_RD_RATIO bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter READ_MODE_LL bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter PF_THRESH_ADJ bound to: 9 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter PE_THRESH_ADJ bound to: 3 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter PF_THRESH_MIN bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter PF_THRESH_MAX bound to: 1019 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter PE_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter PE_THRESH_MAX bound to: 1019 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter WR_DC_WIDTH_EXT bound to: 11 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter RD_DC_WIDTH_EXT bound to: 11 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter RD_LATENCY bound to: 2 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter WIDTH_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter EN_ADV_FEATURE bound to: 16'b0001000000000000 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EN_OF bound to: 1'b0 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EN_PF bound to: 1'b0 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter EN_WDC bound to: 1'b0 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EN_AF bound to: 1'b0 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter EN_WACK bound to: 1'b0 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter FG_EQ_ASYM_DOUT bound to: 1'b0 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EN_UF bound to: 1'b0 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EN_PE bound to: 1'b0 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter EN_RDC bound to: 1'b0 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter EN_AE bound to: 1'b0 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter EN_DVLD bound to: 1'b1 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2#
xpm_memory_base2default:default2
 2default:default2Z
D/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter MEMORY_SIZE bound to: 86016 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter CLOCKING_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter MEMORY_INIT_PARAM bound to: (null) - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 84 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 84 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 84 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_A bound to: 10 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 84 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 84 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 84 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_B bound to: 10 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter READ_RESET_VALUE_B bound to: (null) - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter WRITE_MODE_B bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_MEMORY_PRIMITIVE bound to: auto - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 84 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 84 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 84 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 84 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MAX_DEPTH_DATA bound to: 1024 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_MEMORY_OPT bound to: yes - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_A bound to: 84 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 84 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_A bound to: 10 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_B bound to: 10 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_A bound to: 10 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_B bound to: 10 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_SDP_WRITE_MODE bound to: yes - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter rsta_loop_iter bound to: 84 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 84 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter NUM_CHAR_LOC bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter MAX_NUM_CHAR bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 84 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_MIN_WIDTH_DATA_LDW bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Synth Info: %s 4384*oasys2�
�[XPM_MEMORY 20-1] MEMORY_PRIMITIVE (0) instructs Vivado Synthesis to choose the memory primitive type. Depending on their values, other XPM_MEMORY parameters may preclude the choice of certain memory primitive types. Review XPM_MEMORY documentation and parameter values to understand any limitations, or set MEMORY_PRIMITIVE to a different value. 2default:default2Z
D/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
4882default:default8@Z8-6059h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
xpm_memory_base2default:default2
 2default:default2
52default:default2
12default:default2Z
D/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
xpm_cdc_gray2default:default2
 2default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter REG_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter SIM_LOSSLESS_GRAY_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xpm_cdc_gray2default:default2
 2default:default2
62default:default2
12default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
xpm_fifo_reg_vec2default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18802default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter REG_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_fifo_reg_vec2default:default2
 2default:default2
72default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18802default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
xpm_cdc_gray__parameterized02default:default2
 2default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 5 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter REG_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter SIM_LOSSLESS_GRAY_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xpm_cdc_gray__parameterized02default:default2
 2default:default2
72default:default2
12default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
 xpm_fifo_reg_vec__parameterized02default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18802default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter REG_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_fifo_reg_vec__parameterized02default:default2
 2default:default2
72default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18802default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
xpm_cdc_gray__parameterized12default:default2
 2default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter REG_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter SIM_LOSSLESS_GRAY_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xpm_cdc_gray__parameterized12default:default2
 2default:default2
72default:default2
12default:default2T
>/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6155h px� 
�
default block is never used226*oasys2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12042default:default8@Z8-226h px� 
�
default block is never used226*oasys2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12712default:default8@Z8-226h px� 
�
default block is never used226*oasys2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12932default:default8@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2$
xpm_fifo_reg_bit2default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
19022default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter RST_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_fifo_reg_bit2default:default2
 2default:default2
82default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
19022default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
xpm_counter_updn2default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_counter_updn2default:default2
 2default:default2
92default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
xpm_fifo_rst2default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
16182default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xpm_fifo_rst2default:default2
 2default:default2
102default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
16182default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized02default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized02default:default2
 2default:default2
102default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized12default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized12default:default2
 2default:default2
102default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized22default:default2
 2default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized22default:default2
 2default:default2
102default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18542default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_fifo_base2default:default2
 2default:default2
112default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_fifo_axis2default:default2
 2default:default2
122default:default2
12default:default2V
@/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
23392default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
axis_data_fifo_v2_0_4_top2default:default2
 2default:default2
132default:default2
12default:default2�
t/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/hdl/axis_data_fifo_v2_0_vl_rfs.v2default:default2
542default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bbtoc2h2default:default2
 2default:default2
142default:default2
12default:default2y
c/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/synth/bbtoc2h.v2default:default2
582default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 2631.133 ; gain = 134.621 ; free physical = 44678 ; free virtual = 56806
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 2648.945 ; gain = 152.434 ; free physical = 44672 ; free virtual = 56802
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 2648.945 ; gain = 152.434 ; free physical = 44672 ; free virtual = 56802
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2648.9452default:default2
0.0002default:default2
446672default:default2
567962default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2y
c/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/bbtoc2h_ooc.xdc2default:default2
inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2y
c/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/bbtoc2h/bbtoc2h_ooc.xdc2default:default2
inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2t
^/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.runs/bbtoc2h_synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2t
^/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.runs/bbtoc2h_synth_1/dont_touch.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2X
D/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2-
.Xil/bbtoc2h_propImpl.xdc2default:defaultZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2^
J/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst_axis.tcl2default:default2-
.Xil/bbtoc2h_propImpl.xdc2default:defaultZ1-236h px� 
l
2%s XPM XDC files have been applied to the design.
665*project2
32default:defaultZ1-1715h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2878.7582default:default2
0.0002default:default2
446062default:default2
567432default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.102default:default2
00:00:00.122default:default2
2878.7582default:default2
0.0002default:default2
446072default:default2
567442default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44648 ; free virtual = 56785
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Loading part: xcku040-ffva1156-2-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44648 ; free virtual = 56785
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44647 ; free virtual = 56784
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys22
gen_rst_ic.curr_wrst_state_reg2default:default2 
xpm_fifo_rst2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys22
gen_rst_ic.curr_rrst_state_reg2default:default2 
xpm_fifo_rst2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys20
gen_fwft.curr_fwft_state_reg2default:default2!
xpm_fifo_base2default:defaultZ8-802h px� 
�
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
12default:default2G
3"xpm_memory_base:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5779h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2G
3"xpm_memory_base:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2G
3"xpm_memory_base:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
122default:default2G
3"xpm_memory_base:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2!
default_state2default:default22
gen_rst_ic.curr_wrst_state_reg2default:default2 
xpm_fifo_rst2default:defaultZ8-5552h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_               WRST_IDLE |                            00001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 WRST_IN |                            00010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                WRST_OUT |                            00100 |                              111
2default:defaulth p
x
� 
�
%s
*synth2s
_               WRST_EXIT |                            01000 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_            WRST_GO2IDLE |                            10000 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys22
gen_rst_ic.curr_wrst_state_reg2default:default2
one-hot2default:default2 
xpm_fifo_rst2default:defaultZ8-3354h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2!
default_state2default:default22
gen_rst_ic.curr_rrst_state_reg2default:default2 
xpm_fifo_rst2default:defaultZ8-5552h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                               01 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                               10 |                               11
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                               11 |                               01
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys22
gen_rst_ic.curr_rrst_state_reg2default:default2

sequential2default:default2 
xpm_fifo_rst2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 invalid |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_            stage1_valid |                               01 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_       both_stages_valid |                               10 |                               11
2default:defaulth p
x
� 
�
%s
*synth2s
_            stage2_valid |                               11 |                               01
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys20
gen_fwft.curr_fwft_state_reg2default:default2

sequential2default:default2!
xpm_fifo_base2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44635 ; free virtual = 56777
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   11 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   10 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 38    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               84 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 14    
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
k
%s
*synth2S
?	              84K Bit	(1024 X 84 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 33    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2o
[Part Resources:
DSPs: 1920 (col length:120)
BRAMs: 1200 (col length: RAMB18 120 RAMB36 60)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
iOptimized %s bits of RAM "%s" due to constant propagation. Old ram width %s bits, new ram width %s bits.
4187*oasys2
112default:default24
 gen_wr_a.gen_word_narrow.mem_reg2default:default2
842default:default2
732default:defaultZ8-5784h px� 
�
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
12default:default2�
z"inst/\gen_fifo.xpm_fifo_axis_inst /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5779h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2�
z"inst/\gen_fifo.xpm_fifo_axis_inst /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
362default:default2�
z"inst/\gen_fifo.xpm_fifo_axis_inst /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
12default:default2�
z"inst/\gen_fifo.xpm_fifo_axis_inst /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:20 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44616 ; free virtual = 56766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name                                                                             | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px� 
�
%s*synth2�
�|inst/\gen_fifo.xpm_fifo_axis_inst /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 84(NO_CHANGE)    | W |   | 1 K x 84(WRITE_FIRST)  |   | R | Port A and B     | 1      | 2      | 1,1,1           | 
2default:defaulth px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:35 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44356 ; free virtual = 56528
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:36 . Memory (MB): peak = 2878.758 ; gain = 382.246 ; free physical = 44351 ; free virtual = 56524
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name                                                                             | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|inst/\gen_fifo.xpm_fifo_axis_inst /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 84(NO_CHANGE)    | W |   | 1 K x 84(WRITE_FIRST)  |   | R | Port A and B     | 1      | 2      | 1,1,1           | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:36 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44349 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |CARRY8   |     2|
2default:defaulth px� 
F
%s*synth2.
|2     |LUT1     |     5|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT2     |    53|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT3     |    26|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT4     |    32|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT5     |    35|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT6     |    50|
2default:defaulth px� 
F
%s*synth2.
|8     |RAMB18E2 |     1|
2default:defaulth px� 
F
%s*synth2.
|9     |RAMB36E2 |     2|
2default:defaulth px� 
F
%s*synth2.
|10    |FDRE     |   288|
2default:defaulth px� 
F
%s*synth2.
|11    |FDSE     |     6|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.539 ; gain = 383.027 ; free physical = 44348 ; free virtual = 56521
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:27 ; elapsed = 00:00:36 . Memory (MB): peak = 2879.539 ; gain = 153.215 ; free physical = 44370 ; free virtual = 56542
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:29 ; elapsed = 00:00:39 . Memory (MB): peak = 2879.547 ; gain = 383.027 ; free physical = 44370 ; free virtual = 56542
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2882.5082default:default2
0.0002default:default2
443622default:default2
565342default:defaultZ17-722h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2992.4302default:default2
0.0002default:default2
444142default:default2
565872default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
792default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:422default:default2
00:00:592default:default2
2992.4302default:default2
503.9262default:default2
445582default:default2
567312default:defaultZ17-722h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.runs/bbtoc2h_synth_1/bbtoc2h.dcp2default:defaultZ17-1381h px� 
�
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
bbtoc2h2default:default2$
7abb75a5080583952default:defaultZ2-1648h px� 
Q
Renamed %s cell refs.
330*coretcl2
212default:defaultZ2-1174h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.runs/bbtoc2h_synth_1/bbtoc2h.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file bbtoc2h_utilization_synth.rpt -pb bbtoc2h_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jan 14 00:47:50 20212default:defaultZ17-206h px� 


End Record