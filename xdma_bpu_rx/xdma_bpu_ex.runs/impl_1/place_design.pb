
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcku0402default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcku0402default:defaultZ17-349h px� 
Q
Running DRC with %s threads
24*drc2
162default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
Q
Running DRC with %s threads
24*drc2
162default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
~
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
162default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.032default:default2
5253.5512default:default2
0.0002default:default2
535952default:default2
605302default:defaultZ17-722h px� 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1b85cdb24
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.13 ; elapsed = 00:00:00.22 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53594 ; free virtual = 605302default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
5253.5512default:default2
0.0002default:default2
535942default:default2
605302default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 12ccf0bf8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:31 ; elapsed = 00:00:13 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53614 ; free virtual = 605522default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1300defdf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:35 ; elapsed = 00:00:41 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53386 ; free virtual = 603262default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1300defdf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:35 ; elapsed = 00:00:42 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53385 ; free virtual = 603262default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1300defdf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:36 ; elapsed = 00:00:42 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53373 ; free virtual = 603142default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 13fee7225
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:51 ; elapsed = 00:00:49 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53295 ; free virtual = 602352default:defaulth px� 
�

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px� 
W
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 15e43d60d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:00 ; elapsed = 00:00:53 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53290 ; free virtual = 602312default:defaulth px� 
x

Phase %s%s
101*constraints2
2.3 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
2.3.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
�
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
412default:default2
71522default:defaultZ32-1035h px� 
�
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
382default:default2
32default:default2
412default:default2
02default:defaultZ32-1044h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
30262default:default2!
nets or cells2default:default2
412default:default2
cells2default:default2
29852default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
62default:default2
nets2default:defaultZ32-76h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[0].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[0].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[1].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[1].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[2].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[2].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[3].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[3].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[4].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[4].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]2default:default8Z32-571h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2�
�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[6].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]�tpu_pushstream/layer1_pushstream/layer1_transmit/layer1_transmit_lane[6].rs_encoder/U0/e1/obsncgd/obsnhbizx5cdiboi5dsrgpke5ykictc/obsncsau20/obsnebk52daeya[7]2default:default8Z32-571h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
5253.5512default:default2
0.0002default:default2
531882default:default2
601372default:defaultZ17-722h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
BPass %s: Identified %s candidate %s for BRAM register optimization298*physynth2
12default:default2
162default:default2
cells2default:defaultZ32-527h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[6].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[6].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[7].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[7].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[1].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[1].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[6].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[6].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[3].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[3].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[0].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[0].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[4].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[4].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[0].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[0].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[7].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[7].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[5].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[5].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[4].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[4].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[3].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[3].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[1].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[1].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[5].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[5].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[2].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[2].axis_fifo_t8Q/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
#Processed cell %s. %s %s pushed %s.339*physynth2�
�tpu_pushstream/buffer[2].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0	�tpu_pushstream/buffer[2].axis_fifo_t8I/inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
92default:default2"
registers were2default:default2
out2default:default8Z32-665h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
162default:default2!
nets or cells2default:default2
1442default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.102default:default2
00:00:00.112default:default2
5253.5512default:default2
0.0002default:default2
531842default:default2
601322default:defaultZ17-722h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
5253.5512default:default2
0.0002default:default2
531852default:default2
601332default:defaultZ17-722h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT Combining                                    |           41  |           2985  |                  3026  |           0  |           1  |  00:00:05  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |          144  |              0  |                    16  |           0  |           1  |  00:00:03  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |          185  |           2985  |                  3042  |           0  |           8  |  00:00:10  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
T
?Phase 2.3.1 Physical Synthesis In Placer | Checksum: 20fa76a7f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:07 ; elapsed = 00:02:53 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53175 ; free virtual = 601242default:defaulth px� 
K
6Phase 2.3 Global Placement Core | Checksum: 162db5aac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:15 ; elapsed = 00:02:56 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53163 ; free virtual = 601112default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 162db5aac
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:15 ; elapsed = 00:02:56 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53224 ; free virtual = 601722default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 125096265
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:25 ; elapsed = 00:03:00 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53215 ; free virtual = 601632default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 18e9e91ef
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:06:44 ; elapsed = 00:03:10 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53213 ; free virtual = 601612default:defaulth px� 
q

Phase %s%s
101*constraints2
3.3 2default:default2"
Small Shape DP2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
3.3.1 2default:default2*
Small Shape Clustering2default:defaultZ18-101h px� 
N
9Phase 3.3.1 Small Shape Clustering | Checksum: 1cab82c42
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:07:19 ; elapsed = 00:03:25 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53121 ; free virtual = 600702default:defaulth px� 
t

Phase %s%s
101*constraints2
3.3.2 2default:default2#
DP Optimization2default:defaultZ18-101h px� 
G
2Phase 3.3.2 DP Optimization | Checksum: 14dd1bcdf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:04 ; elapsed = 00:03:42 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53103 ; free virtual = 600522default:defaulth px� 
�

Phase %s%s
101*constraints2
3.3.3 2default:default20
Flow Legalize Slice Clusters2default:defaultZ18-101h px� 
T
?Phase 3.3.3 Flow Legalize Slice Clusters | Checksum: 2103e80fa
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:05 ; elapsed = 00:03:42 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53107 ; free virtual = 600562default:defaulth px� 
t

Phase %s%s
101*constraints2
3.3.4 2default:default2#
Slice Area Swap2default:defaultZ18-101h px� 
G
2Phase 3.3.4 Slice Area Swap | Checksum: 1508211f3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:11 ; elapsed = 00:04:06 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53061 ; free virtual = 600102default:defaulth px� 
C
.Phase 3.3 Small Shape DP | Checksum: e3614df0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:41 ; elapsed = 00:04:16 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53064 ; free virtual = 600132default:defaulth px� 
u

Phase %s%s
101*constraints2
3.4 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.4 Re-assign LUT pins | Checksum: 161d55dcd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:48 ; elapsed = 00:04:24 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53074 ; free virtual = 600232default:defaulth px� 
�

Phase %s%s
101*constraints2
3.5 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.5 Pipeline Register Optimization | Checksum: 227841083
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:08:49 ; elapsed = 00:04:24 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53076 ; free virtual = 600252default:defaulth px� 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px� 
G
2Phase 3.6 Fast Optimization | Checksum: 19272aa24
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:49 ; elapsed = 00:04:38 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53044 ; free virtual = 599932default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 19272aa24
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:09:50 ; elapsed = 00:04:38 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53044 ; free virtual = 599932default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 15ae26ad2
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
162default:defaultZ32-721h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.4402default:default2
-23.7542default:defaultZ32-619h px� 
T
?Phase 1 Physical Synthesis Initialization | Checksum: 774ecb9f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:01 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53104 ; free virtual = 600542default:defaulth px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px� 
J
5Ending Physical Synthesis Task | Checksum: 13db2032a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:10 ; elapsed = 00:00:02 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53104 ; free virtual = 600532default:defaulth px� 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 15ae26ad2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:13 ; elapsed = 00:04:57 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53107 ; free virtual = 600572default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.3392default:defaultZ30-746h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:39 ; elapsed = 00:05:21 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53103 ; free virtual = 600532default:defaulth px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: fd7ae66e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:39 ; elapsed = 00:05:22 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53103 ; free virtual = 600532default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.042default:default2
5253.5512default:default2
0.0002default:default2
531082default:default2
600572default:defaultZ17-722h px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1890af613
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:42 ; elapsed = 00:05:25 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53117 ; free virtual = 600662default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                4x4|
|___________|___________________|___________________|
|      South|                1x1|                4x4|
|___________|___________________|___________________|
|       East|                1x1|                4x4|
|___________|___________________|___________________|
|       West|                1x1|                4x4|
|___________|___________________|___________________|
2default:defaultZ30-612h px� 
R
=Phase 4.3.1 Print Estimated Congestion | Checksum: 1890af613
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:43 ; elapsed = 00:05:26 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53118 ; free virtual = 600682default:defaulth px� 
F
1Phase 4.3 Placer Reporting | Checksum: 1890af613
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:44 ; elapsed = 00:05:26 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53118 ; free virtual = 600682default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.152default:default2
00:00:00.152default:default2
5253.5512default:default2
0.0002default:default2
531182default:default2
600672default:defaultZ17-722h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:45 ; elapsed = 00:05:27 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53118 ; free virtual = 600672default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 176cb82a0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:46 ; elapsed = 00:05:28 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53117 ; free virtual = 600662default:defaulth px� 
>
)Ending Placer Task | Checksum: 131923b07
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:11:46 ; elapsed = 00:05:28 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53117 ; free virtual = 600672default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1132default:default2
22default:default2
12default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:11:572default:default2
00:05:322default:default2
5253.5512default:default2
0.0002default:default2
533252default:default2
602742default:defaultZ17-722h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:172default:default2
00:00:062default:default2
5253.5512default:default2
0.0002default:default2
531012default:default2
602322default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2r
^/home/caohy/Work/dual_line_process/xdma_bpu_tx/xdma_bpu_ex.runs/impl_1/tpu_transmit_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:322default:default2
00:00:192default:default2
5253.5512default:default2
0.0002default:default2
532732default:default2
602632default:defaultZ17-722h px� 
g
%s4*runtcl2K
7Executing : report_io -file tpu_transmit_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.29 ; elapsed = 00:00:00.45 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53245 ; free virtual = 60235
*commonh px� 
�
%s4*runtcl2�
pExecuting : report_utilization -file tpu_transmit_utilization_placed.rpt -pb tpu_transmit_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2h
TExecuting : report_control_sets -verbose -file tpu_transmit_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.76 ; elapsed = 00:00:00.94 . Memory (MB): peak = 5253.551 ; gain = 0.000 ; free physical = 53268 ; free virtual = 60263
*commonh px� 


End Record