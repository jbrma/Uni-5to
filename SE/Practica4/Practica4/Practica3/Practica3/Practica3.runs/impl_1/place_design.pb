
O
*Debug cores have already been implemented
153*	chipscopeZ16-240h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
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
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
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
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
2206.7732default:default2
0.0002default:defaultZ17-268h px� 
s
%s*common2Z
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 125e6d987
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.016 . Memory (MB): peak = 2206.773 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
2206.7732default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�"
�IO placement is infeasible. Number of unplaced IO Ports (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
322default:default2
242default:default2� 
�
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 24 sites available on device, but needs 32 sites.
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[31]<MSGMETA::END>

"�
dip_switches_16bits_tri_io[0]2�
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 24 sites available on device, but needs 32 sites.
	Term: :
	Term: "+
dip_switches_16bits_tri_io[1]:
	Term: "+
dip_switches_16bits_tri_io[2]:
	Term: "+
dip_switches_16bits_tri_io[3]:
	Term: "+
dip_switches_16bits_tri_io[4]:
	Term: "+
dip_switches_16bits_tri_io[5]:
	Term: "+
dip_switches_16bits_tri_io[6]:
	Term: "+
dip_switches_16bits_tri_io[7]:
	Term: "+
dip_switches_16bits_tri_io[8]:
	Term: "+
dip_switches_16bits_tri_io[9]:
	Term: ",
dip_switches_16bits_tri_io[10]:
	Term: ",
dip_switches_16bits_tri_io[11]:
	Term: ",
dip_switches_16bits_tri_io[12]:
	Term: ",
dip_switches_16bits_tri_io[13]:
	Term: ",
dip_switches_16bits_tri_io[14]:
	Term: ",
dip_switches_16bits_tri_io[15]:
	Term: ",
dip_switches_16bits_tri_io[16]:
	Term: ",
dip_switches_16bits_tri_io[17]:
	Term: ",
dip_switches_16bits_tri_io[18]:
	Term: ",
dip_switches_16bits_tri_io[19]:
	Term: ",
dip_switches_16bits_tri_io[20]:
	Term: ",
dip_switches_16bits_tri_io[21]:
	Term: ",
dip_switches_16bits_tri_io[22]:
	Term: ",
dip_switches_16bits_tri_io[23]:
	Term: ",
dip_switches_16bits_tri_io[24]:
	Term: ",
dip_switches_16bits_tri_io[25]:
	Term: ",
dip_switches_16bits_tri_io[26]:
	Term: ",
dip_switches_16bits_tri_io[27]:
	Term: ",
dip_switches_16bits_tri_io[28]:
	Term: ",
dip_switches_16bits_tri_io[29]:
	Term: ",
dip_switches_16bits_tri_io[30]:
	Term: "&
dip_switches_16bits_tri_io[31]:

2default:default8Z30-58h px� 
�"
�IO placement is infeasible. Number of unplaced IO Ports (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
622default:default2
242default:default2� 
�
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 24 sites available on device, but needs 32 sites.
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>dip_switches_16bits_tri_io[31]<MSGMETA::END>

"�
dip_switches_16bits_tri_io[0]2�
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  BiDi RangeId: 1 Drv: 12  has only 24 sites available on device, but needs 32 sites.
	Term: :
	Term: "+
dip_switches_16bits_tri_io[1]:
	Term: "+
dip_switches_16bits_tri_io[2]:
	Term: "+
dip_switches_16bits_tri_io[3]:
	Term: "+
dip_switches_16bits_tri_io[4]:
	Term: "+
dip_switches_16bits_tri_io[5]:
	Term: "+
dip_switches_16bits_tri_io[6]:
	Term: "+
dip_switches_16bits_tri_io[7]:
	Term: "+
dip_switches_16bits_tri_io[8]:
	Term: "+
dip_switches_16bits_tri_io[9]:
	Term: ",
dip_switches_16bits_tri_io[10]:
	Term: ",
dip_switches_16bits_tri_io[11]:
	Term: ",
dip_switches_16bits_tri_io[12]:
	Term: ",
dip_switches_16bits_tri_io[13]:
	Term: ",
dip_switches_16bits_tri_io[14]:
	Term: ",
dip_switches_16bits_tri_io[15]:
	Term: ",
dip_switches_16bits_tri_io[16]:
	Term: ",
dip_switches_16bits_tri_io[17]:
	Term: ",
dip_switches_16bits_tri_io[18]:
	Term: ",
dip_switches_16bits_tri_io[19]:
	Term: ",
dip_switches_16bits_tri_io[20]:
	Term: ",
dip_switches_16bits_tri_io[21]:
	Term: ",
dip_switches_16bits_tri_io[22]:
	Term: ",
dip_switches_16bits_tri_io[23]:
	Term: ",
dip_switches_16bits_tri_io[24]:
	Term: ",
dip_switches_16bits_tri_io[25]:
	Term: ",
dip_switches_16bits_tri_io[26]:
	Term: ",
dip_switches_16bits_tri_io[27]:
	Term: ",
dip_switches_16bits_tri_io[28]:
	Term: ",
dip_switches_16bits_tri_io[29]:
	Term: ",
dip_switches_16bits_tri_io[30]:
	Term: "&
dip_switches_16bits_tri_io[31]:

2default:default8Z30-58h px� 
�,
'IO placer failed to find a solution
%s
374*place2�+
�+Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 14 |    50 |     6 | LVCMOS33(6)                                                            |                                          |        |  +3.30 |    YES |     |
| 16 |    12 |     3 | LVCMOS33(3)                                                            |                                          |        |  +3.30 |    YES |     |
| 34 |    24 |     0 |                                                                        |                                          |        |        |        |     |
| 35 |    20 |    11 | LVCMOS33(11)                                                           |                                          |        |  +3.30 |    YES |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   106 |    20 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 14     | col_clk_0            | LVCMOS33        | IOB_X0Y21            | R18                  |                      |
|        | col_serial_out_0     | LVCMOS33        | IOB_X0Y22            | P18                  |                      |
|        | conv_data_0[0]       | LVCMOS33        | IOB_X0Y27            | M19                  |                      |
|        | conv_data_0[1]       | LVCMOS33        | IOB_X0Y28            | M18                  |                      |
|        | conv_data_0[2]       | LVCMOS33        | IOB_X0Y26            | L17                  |                      |
|        | conv_data_0[3]       | LVCMOS33        | IOB_X0Y25            | K17                  |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 16     | reset_out_0          | LVCMOS33        | IOB_X0Y125           | A17                  |                      |
|        | row_clk_0            | LVCMOS33        | IOB_X0Y126           | A16                  |                      |
|        | row_serial_out_0     | LVCMOS33        | IOB_X0Y137           | A15                  | *                    |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 35     | conv_addr_0[0]       | LVCMOS33        | IOB_X1Y82            | M2                   |                      |
|        | conv_addr_0[1]       | LVCMOS33        | IOB_X1Y81            | M1                   |                      |
|        | conv_addr_0[2]       | LVCMOS33        | IOB_X1Y80            | N2                   |                      |
|        | conv_ale_0           | LVCMOS33        | IOB_X1Y79            | N1                   |                      |
|        | conv_data_0[4]       | LVCMOS33        | IOB_X1Y97            | G2                   |                      |
|        | conv_data_0[5]       | LVCMOS33        | IOB_X1Y96            | H2                   |                      |
|        | conv_data_0[6]       | LVCMOS33        | IOB_X1Y95            | J2                   |                      |
|        | conv_data_0[7]       | LVCMOS33        | IOB_X1Y90            | K2                   |                      |
|        | conv_eoc_0           | LVCMOS33        | IOB_X1Y98            | G3                   |                      |
|        | conv_oe_0            | LVCMOS33        | IOB_X1Y83            | M3                   |                      |
|        | conv_start_0         | LVCMOS33        | IOB_X1Y84            | L3                   |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px� 
�
%s*common2g
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 19a0e582b
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.545 . Memory (MB): peak = 2206.773 ; gain = 0.0002default:defaulth px� 
a
%s*common2H
4Phase 1 Placer Initialization | Checksum: 19a0e582b
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.547 . Memory (MB): peak = 2206.773 ; gain = 0.0002default:defaulth px� 
�
�Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px� 
V
%s*common2=
)Ending Placer Task | Checksum: 1b34704e0
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.550 . Memory (MB): peak = 2206.773 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
752default:default2
72default:default2
142default:default2
52default:defaultZ4-41h px� 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px� 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jan 20 15:04:10 20252default:defaultZ17-206h px� 


End Record