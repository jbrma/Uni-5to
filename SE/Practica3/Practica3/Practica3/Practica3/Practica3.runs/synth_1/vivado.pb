
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2G
3c:/Users/newto/uni/DE/Practica3/ip_repo/teclado_1_02default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2C
/c:/Users/newto/uni/DE/Practica3/ip_repo/rgb_1_02default:defaultZ19-1700h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
E:/Xilinx/Vivado/2023.1/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/newto/uni/DE/Practica3/Practica3/Practica3.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2y
eC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
}
Command: %s
53*	vivadotcl2L
8synth_design -top design_1_wrapper -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
65082default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2332.852 ; gain = 410.375
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2$
design_1_wrapper2default:default2|
fc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2default:default2
312default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_12default:default2t
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
18612default:default2

design_1_i2default:default2
design_12default:default2|
fc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2default:default2
482default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
18812default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
design_1_axi_gpio_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/synth/design_1_axi_gpio_0_0.vhd2default:default2
592default:default2

axi_gpio_02default:default2)
design_1_axi_gpio_0_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
22462default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2)
design_1_axi_gpio_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/synth/design_1_axi_gpio_0_0.vhd2default:default2
852default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 9 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_GPIO_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_GPIO2_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_ALL_INPUTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ALL_INPUTS_2 bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ALL_OUTPUTS bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_ALL_OUTPUTS_2 bound to: 1 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_INTERRUPT_PRESENT bound to: 0 - type: integer 
2default:defaulth p
x
� 
v
%s
*synth2^
J	Parameter C_DOUT_DEFAULT bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
� 
u
%s
*synth2]
I	Parameter C_TRI_DEFAULT bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_IS_DUAL bound to: 1 - type: integer 
2default:defaulth p
x
� 
x
%s
*synth2`
L	Parameter C_DOUT_DEFAULT_2 bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
� 
w
%s
*synth2_
K	Parameter C_TRI_DEFAULT_2 bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axi_gpio2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
12652default:default2
U02default:default2
axi_gpio2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/synth/design_1_axi_gpio_0_0.vhd2default:default2
1712default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
axi_gpio2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
13512default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2!
axi_lite_ipif2default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
29482default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2$
slave_attachment2default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
23412default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2#
address_decoder2default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
17752default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	pselect_f2default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	pselect_f2default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2-
pselect_f__parameterized02default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized02default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2-
pselect_f__parameterized12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized12default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2-
pselect_f__parameterized22default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized22default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
address_decoder2default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
17752default:default8@Z8-256h px� 
�
default block is never used226*oasys2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
25502default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
slave_attachment2default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
23412default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
axi_lite_ipif2default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
29482default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	GPIO_Core2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
1782default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
8352default:default8@Z8-226h px� 
�
synthesizing module '%s'638*oasys2
cdc_sync2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-638h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync2default:default2
02default:default2
12default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	GPIO_Core2default:default2
02default:default2
12default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
1782default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_gpio2default:default2
02default:default2
12default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
13512default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2)
design_1_axi_gpio_0_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/synth/design_1_axi_gpio_0_0.vhd2default:default2
852default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys21
design_1_axi_interconnect_0_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
12162default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2,
m00_couplers_imp_1CA5Z322default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
582default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
m00_couplers_imp_1CA5Z322default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
582default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2+
m01_couplers_imp_I4GRPB2default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
1592default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
m01_couplers_imp_I4GRPB2default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
1592default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2,
m02_couplers_imp_1BOGR4T2default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
2642default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
m02_couplers_imp_1BOGR4T2default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
2642default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2+
m03_couplers_imp_J0G1J02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
3752default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
m03_couplers_imp_J0G1J02default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
3752default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2+
s00_couplers_imp_O7FAN02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
10442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
s00_couplers_imp_O7FAN02default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
10442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
design_1_xbar_02default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_xbar_0/synth/design_1_xbar_0.v2default:default2
532default:default2
xbar2default:default2#
design_1_xbar_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
17582default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2#
design_1_xbar_02default:default2
 2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_xbar_0/synth/design_1_xbar_0.v2default:default2
532default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_29_axi_crossbar2default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48832default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys26
"axi_crossbar_v2_1_29_crossbar_sasd2default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12392default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_29_addr_decoder2default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7932default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
612default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
612default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized12default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized12default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized22default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized22default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_29_addr_decoder2default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7932default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_29_decerr_slave2default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35002default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_29_decerr_slave2default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35002default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2:
&axi_crossbar_v2_1_29_addr_arbiter_sasd2default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
642default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&axi_crossbar_v2_1_29_addr_arbiter_sasd2default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
642default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
axi_crossbar_v2_1_29_splitter2default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
axi_crossbar_v2_1_29_splitter2default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2A
-axi_crossbar_v2_1_29_splitter__parameterized02default:default2
 2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_crossbar_v2_1_29_splitter__parameterized02default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2B
.axi_register_slice_v2_1_28_axic_register_slice2default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_register_slice_v2_1_28_axic_register_slice2default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"axi_crossbar_v2_1_29_crossbar_sasd2default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12392default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_29_axi_crossbar2default:default2
 2default:default2
02default:default2
12default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48832default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
design_1_xbar_02default:default2
 2default:default2
02default:default2
12default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_xbar_0/synth/design_1_xbar_0.v2default:default2
532default:default8@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
design_1_axi_interconnect_0_02default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
12162default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2-
design_1_axi_uartlite_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/synth/design_1_axi_uartlite_0_0.vhd2default:default2
592default:default2"
axi_uartlite_02default:default2-
design_1_axi_uartlite_0_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
23762default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2-
design_1_axi_uartlite_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/synth/design_1_axi_uartlite_0_0.vhd2default:default2
862default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
q
%s
*synth2Y
E	Parameter C_S_AXI_ACLK_FREQ_HZ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_BAUDRATE bound to: 9600 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_PARITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_ODD_PARITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
axi_uartlite2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
21282default:default2
U02default:default2 
axi_uartlite2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/synth/design_1_axi_uartlite_0_0.vhd2default:default2
1622default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
axi_uartlite2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
21902default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2!
uartlite_core2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
16502default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
baudrate2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
14532default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
baudrate2default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
14532default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uartlite_rx2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
9272default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2,
cdc_sync__parameterized02default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-638h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys24
 CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5142default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5452default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5542default:default8@Z8-113h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42default:default2
FDR2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5642default:default8@Z8-113h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-1132default:default2
1002default:defaultZ17-14h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
cdc_sync__parameterized02default:default2
02default:default2
12default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2

srl_fifo_f2default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
10002default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2"
srl_fifo_rbu_f2default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
6972default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2)
cntr_incr_decr_addn_f2default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
1432default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2)
cntr_incr_decr_addn_f2default:default2
02default:default2
12default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
1432default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2

dynshreg_f2default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
3972default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

dynshreg_f2default:default2
02default:default2
12default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
3972default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
srl_fifo_rbu_f2default:default2
02default:default2
12default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
6972default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

srl_fifo_f2default:default2
02default:default2
12default:default2�
yc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd2default:default2
10002default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uartlite_rx2default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
9272default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uartlite_tx2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
4082default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uartlite_tx2default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
4082default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
uartlite_core2default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
16502default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys21
axi_lite_ipif__parameterized02default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
29482default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys24
 slave_attachment__parameterized02default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
23412default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys23
address_decoder__parameterized02default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
17752default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys23
address_decoder__parameterized02default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
17752default:default8@Z8-256h px� 
�
default block is never used226*oasys2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
25502default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys24
 slave_attachment__parameterized02default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
23412default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
axi_lite_ipif__parameterized02default:default2
02default:default2
12default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
29482default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
axi_uartlite2default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd2default:default2
21902default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2-
design_1_axi_uartlite_0_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/synth/design_1_axi_uartlite_0_0.vhd2default:default2
862default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
design_1_clk_wiz_1_02default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v2default:default2
682default:default2
	clk_wiz_12default:default2(
design_1_clk_wiz_1_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
24012default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_clk_wiz_1_02default:default2
 2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v2default:default2
682default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys20
design_1_clk_wiz_1_0_clk_wiz2default:default2
 2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v2default:default2
682default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUF2default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
717682default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
717682default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MMCME2_ADV2default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
803112default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MMCME2_ADV2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
803112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
15192default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
15192default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
design_1_clk_wiz_1_0_clk_wiz2default:default2
 2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v2default:default2
682default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_clk_wiz_1_02default:default2
 2default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v2default:default2
682default:default8@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
design_1_mdm_1_02default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/synth/design_1_mdm_1_0.vhd2default:default2
592default:default2
mdm_12default:default2$
design_1_mdm_1_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
24082default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
design_1_mdm_1_02default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/synth/design_1_mdm_1_0.vhd2default:default2
742default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DEVICE bound to: xc7a35t - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_REVISION bound to: (null) - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_JTAG_CHAIN bound to: 2 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_USE_BSCAN bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_BSCANID bound to: 76547328 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_DEBUG_INTERFACE bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_CONFIG_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AVOID_PRIMITIVES bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_INTERCONNECT bound to: 2 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_MB_DBG_PORTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_USE_UART bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DBG_REG_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DBG_MEM_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_USE_CROSS_TRIGGER bound to: 0 - type: integer 
2default:defaulth p
x
� 
r
%s
*synth2Z
F	Parameter C_EXT_TRIG_RESET_VALUE bound to: 20'b11110001001000110100 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_TRACE_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_TRACE_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_TRACE_CLK_FREQ_HZ bound to: 200000000 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_TRACE_CLK_OUT_PHASE bound to: 90 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_TRACE_ASYNC_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_TRACE_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_TRACE_ID bound to: 110 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
q
%s
*synth2Y
E	Parameter C_S_AXI_ACLK_FREQ_HZ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_M_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_M_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_THREAD_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_ADDR_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_DATA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_M_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_M_AXIS_ID_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MDM2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
126742default:default2
U02default:default2
MDM2default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/synth/design_1_mdm_1_0.vhd2default:default2
16572default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MDM2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
143582default:default8@Z8-638h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter DISABLE_JTAG bound to: FALSE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter JTAG_CHAIN bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

MB_BSCANE22default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3242default:default2
BSCAN_I2default:default2

MB_BSCANE22default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
159762default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

MB_BSCANE22default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3482default:default8@Z8-638h px� 
d
%s
*synth2L
8	Parameter DISABLE_JTAG bound to: FALSE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter JTAG_CHAIN bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

MB_BSCANE22default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3482default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter INIT bound to: 2'b10 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MB_LUT12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
15272default:default2
LUT1_I2default:default2
MB_LUT12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
159942default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2'
mdm_v3_2_24_MB_LUT12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
15412default:default8@Z8-638h px� 
M
%s
*synth25
!	Parameter INIT bound to: 2'b10 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
mdm_v3_2_24_MB_LUT12default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
15412default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MB_BUFGCE_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
4262default:default2
	BUFG_DRCK2default:default2
MB_BUFGCE_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
165052default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MB_BUFGCE_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
4402default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MB_BUFGCE_12default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
4402default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_JTAG_CHAIN bound to: 2 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_USE_BSCAN bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_CONFIG_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_SRL16 bound to: yes - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_DEBUG_INTERFACE bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_MB_DBG_PORTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_EN_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DBG_REG_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_REG_NUM_CE bound to: 4 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_REG_DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DBG_MEM_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
q
%s
*synth2Y
E	Parameter C_S_AXI_ACLK_FREQ_HZ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_M_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_M_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_USE_CROSS_TRIGGER bound to: 0 - type: integer 
2default:defaulth p
x
� 
r
%s
*synth2Z
F	Parameter C_EXT_TRIG_RESET_VALUE bound to: 20'b11110001001000110100 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_USE_UART bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_UART_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_TRACE_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_TRACE_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_TRACE_ASYNC_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_TRACE_CLK_FREQ_HZ bound to: 200000000 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_TRACE_CLK_OUT_PHASE bound to: 90 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_TRACE_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_TRACE_ID bound to: 110 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_M_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_M_AXIS_ID_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MDM_Core2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
57922default:default2
MDM_Core_I12default:default2
MDM_Core2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
166072default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MDM_Core2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
70292default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3002default:default2'
config_scan_reset_i2default:default2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
77122default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys26
"mdm_v3_2_24_xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3092default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys26
"mdm_v3_2_24_xil_scan_reset_control2default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3092default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3002default:default2!
sel_n_reset_i2default:default2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
77222default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3002default:default2#
shift_n_reset_i2default:default2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
77322default:default8@Z8-3491h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_USE_BSCAN bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_MB_DBG_PORTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_CONFIG_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_SRL16 bound to: yes - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_DEBUG_INTERFACE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DBG_REG_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DBG_MEM_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_M_AXI_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_M_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_USE_CROSS_TRIGGER bound to: 0 - type: integer 
2default:defaulth p
x
� 
r
%s
*synth2Z
F	Parameter C_EXT_TRIG_RESET_VALUE bound to: 20'b11110001001000110100 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_USE_UART bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_UART_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_TRACE_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_TRACE_PROTOCOL bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_EN_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
JTAG_CONTROL2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
30752default:default2"
JTAG_CONTROL_I2default:default2 
JTAG_CONTROL2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
104232default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
JTAG_CONTROL2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
33482default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3002default:default2,
config_with_scan_reset_i2default:default2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
36572default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
3002default:default2)
sel_with_scan_reset_i2default:default2*
xil_scan_reset_control2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
36652default:default8@Z8-3491h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MB_FDC_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
7402default:default2
FDC_I2default:default2
MB_FDC_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
37222default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MB_FDC_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
7562default:default8@Z8-638h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MB_FDC_12default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
7562default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	MB_FDRE_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
7992default:default2
	SYNC_FDRE2default:default2
	MB_FDRE_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
37322default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	MB_FDRE_12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8162default:default8@Z8-638h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	MB_FDRE_12default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8162default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_STATIC bound to: 1 - type: bool 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_SRL16 bound to: yes - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0000000101100111 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8622default:default2
SRL16E_12default:default2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
39262default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2)
mdm_v3_2_24_MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0000000101100111 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2)
mdm_v3_2_24_MB_SRL16E2default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_STATIC bound to: 1 - type: bool 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_SRL16 bound to: yes - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0100001010000111 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8622default:default2
SRL16E_22default:default2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
39442default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys29
%mdm_v3_2_24_MB_SRL16E__parameterized02default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0100001010000111 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys29
%mdm_v3_2_24_MB_SRL16E__parameterized02default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_STATIC bound to: 1 - type: bool 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_SRL16 bound to: yes - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0100010001000011 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8622default:default2
SRL16E_ID_12default:default2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
40152default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys29
%mdm_v3_2_24_MB_SRL16E__parameterized12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0100010001000011 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys29
%mdm_v3_2_24_MB_SRL16E__parameterized12default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-256h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_STATIC bound to: 1 - type: bool 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_SRL16 bound to: yes - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0101100001001101 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8622default:default2
SRL16E_ID_22default:default2
	MB_SRL16E2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
40332default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys29
%mdm_v3_2_24_MB_SRL16E__parameterized22default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter INIT bound to: 16'b0101100001001101 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys29
%mdm_v3_2_24_MB_SRL16E__parameterized22default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
8862default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
JTAG_CONTROL2default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
33482default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MDM_Core2default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
70292default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MDM2default:default2
02default:default2
12default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
143582default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
design_1_mdm_1_02default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/synth/design_1_mdm_1_0.vhd2default:default2
742default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2+
design_1_microblaze_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/synth/design_1_microblaze_0_0.vhd2default:default2
592default:default2 
microblaze_02default:default2+
design_1_microblaze_0_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
24212default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2+
design_1_microblaze_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/synth/design_1_microblaze_0_0.vhd2default:default2
1162default:default8@Z8-638h px� 
Z
%s
*synth2B
.	Parameter C_SCO bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_CONFIG_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_NUM_SYNC_FF_CLK bound to: 2 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_NUM_SYNC_FF_CLK_IRQ bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_NUM_SYNC_FF_CLK_DEBUG bound to: 2 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_NUM_SYNC_FF_DBG_CLK bound to: 1 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_NUM_SYNC_FF_DBG_TRACE_CLK bound to: 2 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_FAULT_TOLERANT bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ECC_USE_CE_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_LOCKSTEP_SLAVE bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_LOCKSTEP_MASTER bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_TEMPORAL_DEPTH bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_ENDIANNESS bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_PART bound to: xc7a35tcpg236-1 - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_DATA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_LMB_DATA_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_INSTR_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_IADDR_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_PIADDR_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DADDR_SIZE bound to: 32 - type: integer 
2default:defaulth p
x
� 
t
%s
*synth2\
H	Parameter C_INSTANCE bound to: design_1_microblaze_0_0 - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AVOID_PRIMITIVES bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_AREA_OPTIMIZED bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_OPTIMIZATION bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_INTERCONNECT bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2~
j	Parameter C_BASE_VECTORS bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_M_AXI_DP_THREAD_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DP_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DP_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_M_AXI_DP_EXCLUSIVE_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_D_BUS_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_M_AXI_IP_THREAD_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IP_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IP_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_I_BUS_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_D_LMB bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_D_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_D_AXI bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_I_LMB bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_I_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_I_AXI bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter G_TEMPLATE_LIST bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_USE_MSR_INSTR bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_USE_PCMP_INSTR bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_BARREL bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_USE_DIV bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_HW_MUL bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_USE_FPU bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_USE_REORDER_INSTR bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_UNALIGNED_EXCEPTIONS bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ILL_OPCODE_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_DIV_ZERO_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_FPU_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_FSL_LINKS bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_USE_EXTENDED_FSL_INSTR bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_FSL_EXCEPTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_USE_STACK_PROTECTION bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_IMPRECISE_EXCEPTIONS bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_USE_INTERRUPT bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_USE_EXT_BRK bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_USE_EXT_NM_BRK bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_USE_NON_SECURE bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_USE_MMU bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_MMU_DTLB_SIZE bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_MMU_ITLB_SIZE bound to: 2 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_MMU_TLB_ACCESS bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_MMU_ZONES bound to: 16 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_MMU_PRIVILEGED_INSTR bound to: 0 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter C_USE_BRANCH_TARGET_CACHE bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_BRANCH_TARGET_CACHE_SIZE bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_PC_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_PVR bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_PVR_USER1 bound to: 8'b00000000 
2default:defaulth p
x
� 
s
%s
*synth2[
G	Parameter C_PVR_USER2 bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_DYNAMIC_BUS_SIZING bound to: 0 - type: integer 
2default:defaulth p
x
� 
s
%s
*synth2[
G	Parameter C_RESET_MSR bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_OPCODE_0x0_ILLEGAL bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_DEBUG_ENABLED bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_DEBUG_INTERFACE bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_NUMBER_OF_PC_BRK bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_NUMBER_OF_RD_ADDR_BRK bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_NUMBER_OF_WR_ADDR_BRK bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_DEBUG_EVENT_COUNTERS bound to: 5 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_DEBUG_LATENCY_COUNTERS bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_DEBUG_COUNTER_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_DEBUG_TRACE_SIZE bound to: 8192 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_DEBUG_EXTERNAL_TRACE bound to: 0 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter C_DEBUG_TRACE_ASYNC_RESET bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_DEBUG_PROFILE_SIZE bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_INTERRUPT_IS_EDGE bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_EDGE_IS_POSITIVE bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ASYNC_INTERRUPT bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ASYNC_WAKEUP bound to: 3 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M0_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S0_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M1_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S1_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M2_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S2_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M3_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S3_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M4_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S4_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M5_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S5_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M6_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S6_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M7_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S7_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M8_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S8_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_M9_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S9_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M10_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_S10_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M11_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_S11_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M12_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_S12_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M13_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_S13_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M14_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_S14_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M15_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_S15_AXIS_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
m	Parameter C_ICACHE_BASEADDR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2�
m	Parameter C_ICACHE_HIGHADDR bound to: 64'b0000000000000000000000000000000000111111111111111111111111111111 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_ICACHE bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ALLOW_ICACHE_WR bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_ADDR_TAG_BITS bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_CACHE_BYTE_SIZE bound to: 8192 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ICACHE_LINE_LEN bound to: 4 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_ICACHE_ALWAYS_USED bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_ICACHE_STREAMS bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_ICACHE_VICTIMS bound to: 0 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter C_ICACHE_FORCE_TAG_LUTRAM bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_ICACHE_DATA_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_M_AXI_IC_THREAD_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IC_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IC_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IC_USER_VALUE bound to: 31 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_IC_AWUSER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_IC_ARUSER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IC_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IC_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_IC_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
m	Parameter C_DCACHE_BASEADDR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2�
m	Parameter C_DCACHE_HIGHADDR bound to: 64'b0000000000000000000000000000000000111111111111111111111111111111 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_USE_DCACHE bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ALLOW_DCACHE_WR bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_DCACHE_ADDR_TAG bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_DCACHE_BYTE_SIZE bound to: 8192 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_DCACHE_LINE_LEN bound to: 4 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_DCACHE_ALWAYS_USED bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_DCACHE_USE_WRITEBACK bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_DCACHE_VICTIMS bound to: 0 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter C_DCACHE_FORCE_TAG_LUTRAM bound to: 0 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_DCACHE_DATA_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_M_AXI_DC_THREAD_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DC_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DC_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_M_AXI_DC_EXCLUSIVE_ACCESS bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DC_USER_VALUE bound to: 31 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_DC_AWUSER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_M_AXI_DC_ARUSER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DC_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DC_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_M_AXI_DC_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

MicroBlaze2default:default2�
{c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd2default:default2
1648742default:default2
U02default:default2

MicroBlaze2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/synth/design_1_microblaze_0_0.vhd2default:default2
8202default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
design_1_microblaze_0_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/synth/design_1_microblaze_0_0.vhd2default:default2
1162default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys29
%microblaze_0_local_memory_imp_1K0VQXK2default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
4652default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys21
design_1_dlmb_bram_if_cntlr_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/synth/design_1_dlmb_bram_if_cntlr_0.vhd2default:default2
592default:default2&
dlmb_bram_if_cntlr2default:default21
design_1_dlmb_bram_if_cntlr_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
6792default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys21
design_1_dlmb_bram_if_cntlr_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/synth/design_1_dlmb_bram_if_cntlr_0.vhd2default:default2
842default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_HIGHADDR bound to: 64'b0000000000000000000000000000000000000000000000000011111111111111 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_BASEADDR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LMB bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2v
b	Parameter C_MASK bound to: 64'b0000000000000000000000000000000001000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK1 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK2 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK3 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK4 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK5 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK6 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK7 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_DWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ARBITRATION bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_INTERCONNECT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_FAULT_INJECT bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_CE_FAILING_REGISTERS bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_UE_FAILING_REGISTERS bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ECC_STATUS_REGISTERS bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_ECC_ONOFF_REGISTER bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_ECC_ONOFF_RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_CE_COUNTER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_WRITE_ACCESS bound to: 2 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BRAM_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_S_AXI_CTRL_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_S_AXI_CTRL_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
lmb_bram_if_cntlr2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
50502default:default2
U02default:default2%
lmb_bram_if_cntlr2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/synth/design_1_dlmb_bram_if_cntlr_0.vhd2default:default2
2752default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2%
lmb_bram_if_cntlr2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
52322default:default8@Z8-638h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_BASEADDR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2v
b	Parameter C_MASK bound to: 64'b0000000000000000000000000000000001000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK1 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK2 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK3 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK4 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK5 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK6 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK7 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_DWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_ECC_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LMB bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ARBITRATION bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
lmb_mux2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
41552default:default2
	lmb_mux_I2default:default2
lmb_mux2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
55582default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
lmb_mux2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
43002default:default8@Z8-638h px� 
Z
%s
*synth2B
.	Parameter C_AW bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2u
a	Parameter C_BAR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2v
b	Parameter C_MASK bound to: 64'b0000000000000000000000000000000001000000000000000000000000000000 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
pselect_mask2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
34762default:default2$
pselect_mask_lmb2default:default2 
pselect_mask2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
44132default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
pselect_mask2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
34912default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
pselect_mask2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
34912default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lmb_mux2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
43002default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
lmb_bram_if_cntlr2default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
52322default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
design_1_dlmb_bram_if_cntlr_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/synth/design_1_dlmb_bram_if_cntlr_0.vhd2default:default2
842default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
design_1_dlmb_v10_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/synth/design_1_dlmb_v10_0.vhd2default:default2
592default:default2
dlmb_v102default:default2'
design_1_dlmb_v10_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
7332default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2'
design_1_dlmb_v10_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/synth/design_1_dlmb_v10_0.vhd2default:default2
892default:default8@Z8-638h px� 
e
%s
*synth2M
9	Parameter C_LMB_NUM_SLAVES bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_DWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EXT_RESET_HIGH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
lmb_v102default:default2�
wc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd2default:default2
922default:default2
U02default:default2
lmb_v102default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/synth/design_1_dlmb_v10_0.vhd2default:default2
1652default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
lmb_v102default:default2�
wc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd2default:default2
1412default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FDS2default:default2I
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
392712default:default2
POR_FF_I2default:default2
FDS2default:default2�
wc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd2default:default2
1712default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
FDS2default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
392712default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDS2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
392712default:default8@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lmb_v102default:default2
02default:default2
12default:default2�
wc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd2default:default2
1412default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
design_1_dlmb_v10_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/synth/design_1_dlmb_v10_0.vhd2default:default2
892default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys21
design_1_ilmb_bram_if_cntlr_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/synth/design_1_ilmb_bram_if_cntlr_0.vhd2default:default2
592default:default2&
ilmb_bram_if_cntlr2default:default21
design_1_ilmb_bram_if_cntlr_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
7612default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys21
design_1_ilmb_bram_if_cntlr_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/synth/design_1_ilmb_bram_if_cntlr_0.vhd2default:default2
842default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_HIGHADDR bound to: 64'b0000000000000000000000000000000000000000000000000011111111111111 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_BASEADDR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LMB bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2v
b	Parameter C_MASK bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK1 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK2 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK3 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK4 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK5 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK6 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK7 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_DWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ARBITRATION bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_INTERCONNECT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_FAULT_INJECT bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_CE_FAILING_REGISTERS bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_UE_FAILING_REGISTERS bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ECC_STATUS_REGISTERS bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_ECC_ONOFF_REGISTER bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_ECC_ONOFF_RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_CE_COUNTER_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_WRITE_ACCESS bound to: 2 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BRAM_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_S_AXI_CTRL_ADDR_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_S_AXI_CTRL_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
lmb_bram_if_cntlr2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
50502default:default2
U02default:default2%
lmb_bram_if_cntlr2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/synth/design_1_ilmb_bram_if_cntlr_0.vhd2default:default2
2752default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys25
!lmb_bram_if_cntlr__parameterized12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
52322default:default8@Z8-638h px� 
]
%s
*synth2E
1	Parameter C_TARGET bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2z
f	Parameter C_BASEADDR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2v
b	Parameter C_MASK bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK1 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK2 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK3 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK4 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK5 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK6 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter C_MASK7 bound to: 64'b0000000000000000000000000000000000000000100000000000000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_DWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_ECC_WIDTH bound to: 7 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter C_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LMB bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ARBITRATION bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
lmb_mux2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
41552default:default2
	lmb_mux_I2default:default2
lmb_mux2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
55582default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2+
lmb_mux__parameterized12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
43002default:default8@Z8-638h px� 
Z
%s
*synth2B
.	Parameter C_AW bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2u
a	Parameter C_BAR bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2v
b	Parameter C_MASK bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
pselect_mask2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
34762default:default2$
pselect_mask_lmb2default:default2 
pselect_mask2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
44132default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys20
pselect_mask__parameterized12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
34912default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys20
pselect_mask__parameterized12default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
34912default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
lmb_mux__parameterized12default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
43002default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys25
!lmb_bram_if_cntlr__parameterized12default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd2default:default2
52322default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
design_1_ilmb_bram_if_cntlr_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/synth/design_1_ilmb_bram_if_cntlr_0.vhd2default:default2
842default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
design_1_ilmb_v10_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/synth/design_1_ilmb_v10_0.vhd2default:default2
592default:default2
ilmb_v102default:default2'
design_1_ilmb_v10_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
8152default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2'
design_1_ilmb_v10_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/synth/design_1_ilmb_v10_0.vhd2default:default2
892default:default8@Z8-638h px� 
e
%s
*synth2M
9	Parameter C_LMB_NUM_SLAVES bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_DWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_LMB_AWIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_LMB_PROTOCOL bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EXT_RESET_HIGH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
lmb_v102default:default2�
wc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd2default:default2
922default:default2
U02default:default2
lmb_v102default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/synth/design_1_ilmb_v10_0.vhd2default:default2
1652default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
design_1_ilmb_v10_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/synth/design_1_ilmb_v10_0.vhd2default:default2
892default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
design_1_lmb_bram_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/synth/design_1_lmb_bram_0.vhd2default:default2
592default:default2
lmb_bram2default:default2'
design_1_lmb_bram_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
8432default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2'
design_1_lmb_bram_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/synth/design_1_lmb_bram_0.vhd2default:default2
802default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_XDEVICEFAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_AXI_SLAVE_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 1 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_BYTE_SIZE bound to: 8 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:defaulth p
x
� 
u
%s
*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:defaulth p
x
� 
u
%s
*synth2]
I	Parameter C_INIT_FILE bound to: design_1_lmb_bram_0.mem - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_HAS_RSTA bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_HAS_ENA bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_WEA_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_WRITE_MODE_A bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_WRITE_DEPTH_A bound to: 4096 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_READ_DEPTH_A bound to: 4096 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_HAS_RSTB bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_HAS_ENB bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_WEB_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_WRITE_MODE_B bound to: WRITE_FIRST - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_READ_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 4096 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_READ_DEPTH_B bound to: 4096 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_EN_ECC_PIPE bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_LATENCY_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_SIM_COLLISION_CHECK bound to: ALL - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_EN_SLEEP_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_USE_URAM bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EN_RDADDRA_CHG bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter C_EN_RDADDRB_CHG bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_EN_DEEPSLEEP_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_EN_SHUTDOWN_PIN bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_EN_SAFETY_CKT bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_36K_BRAM bound to: 4 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_COUNT_18K_BRAM bound to: 0 - type: string 
2default:defaulth p
x
� 
�
%s
*synth2x
d	Parameter C_EST_POWER_SUMMARY bound to: Estimated Power for IP     :     20.388 mW - type: string 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
blk_mem_gen_v8_4_62default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/bb55/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd2default:default2
1953212default:default2
U02default:default2&
blk_mem_gen_v8_4_62default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/synth/design_1_lmb_bram_0.vhd2default:default2
2552default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2'
design_1_lmb_bram_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/synth/design_1_lmb_bram_0.vhd2default:default2
802default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys29
%microblaze_0_local_memory_imp_1K0VQXK2default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
4652default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
design_1_rgb_0_02default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rgb_0_0/synth/design_1_rgb_0_0.vhd2default:default2
562default:default2
rgb_02default:default2$
design_1_rgb_0_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
25002default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
design_1_rgb_0_02default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rgb_0_0/synth/design_1_rgb_0_0.vhd2default:default2
852default:default8@Z8-638h px� 
j
%s
*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
rgb_v1_02default:default2�
lc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0.vhd2default:default2
52default:default2
U02default:default2
rgb_v1_02default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rgb_0_0/synth/design_1_rgb_0_0.vhd2default:default2
1542default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
rgb_v1_02default:default2�
lc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0.vhd2default:default2
522default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
rgb_v1_0_S00_AXI2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0_S00_AXI.vhd2default:default2
52default:default2)
rgb_v1_0_S00_AXI_inst2default:default2$
rgb_v1_0_S00_AXI2default:default2�
lc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0.vhd2default:default2
912default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
rgb_v1_0_S00_AXI2default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0_S00_AXI.vhd2default:default2
902default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0_S00_AXI.vhd2default:default2
2322default:default8@Z8-226h px� 
�
default block is never used226*oasys2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0_S00_AXI.vhd2default:default2
3682default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
rgb_v1_0_S00_AXI2default:default2
02default:default2
12default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0_S00_AXI.vhd2default:default2
902default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rgb_v1_02default:default2
02default:default2
12default:default2�
lc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/55a5/hdl/rgb_v1_0.vhd2default:default2
522default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
design_1_rgb_0_02default:default2
02default:default2
12default:default2�
|c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rgb_0_0/synth/design_1_rgb_0_0.vhd2default:default2
852default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys21
design_1_rst_clk_wiz_1_100M_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/synth/design_1_rst_clk_wiz_1_100M_0.vhd2default:default2
592default:default2&
rst_clk_wiz_1_100M2default:default21
design_1_rst_clk_wiz_1_100M_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
25272default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys21
design_1_rst_clk_wiz_1_100M_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/synth/design_1_rst_clk_wiz_1_100M_0.vhd2default:default2
742default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter C_FAMILY bound to: artix7 - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter C_EXT_RESET_HIGH bound to: 1'b1 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_NUM_BUS_RST bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_NUM_PERP_RST bound to: 1 - type: integer 
2default:defaulth p
x
� 
o
%s
*synth2W
C	Parameter C_NUM_INTERCONNECT_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_NUM_PERP_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
proc_sys_reset2default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
12642default:default2
U02default:default2"
proc_sys_reset2default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/synth/design_1_rst_clk_wiz_1_100M_0.vhd2default:default2
1292default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
proc_sys_reset2default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13232default:default8@Z8-638h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
lpf2default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8162default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SRL162default:default2I
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
1321572default:default2
	POR_SRL_I2default:default2
SRL162default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8682default:default8@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
SRL162default:default2
 2default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
1321572default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SRL162default:default2
 2default:default2
02default:default2
12default:default2K
5E:/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
1321572default:default8@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2,
cdc_sync__parameterized12default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-638h px� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
cdc_sync__parameterized12default:default2
02default:default2
12default:default2�
tc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lpf2default:default2
02default:default2
12default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8162default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
sequence_psr2default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
3012default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
upcnt_n2default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
1252default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
upcnt_n2default:default2
02default:default2
12default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
1252default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
sequence_psr2default:default2
02default:default2
12default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
3012default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
proc_sys_reset2default:default2
02default:default2
12default:default2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13232default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys21
design_1_rst_clk_wiz_1_100M_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/synth/design_1_rst_clk_wiz_1_100M_0.vhd2default:default2
742default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
design_1_teclado_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_teclado_0_0/synth/design_1_teclado_0_0.vhd2default:default2
562default:default2
	teclado_02default:default2(
design_1_teclado_0_02default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
25402default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
design_1_teclado_0_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_teclado_0_0/synth/design_1_teclado_0_0.vhd2default:default2
842default:default8@Z8-638h px� 
j
%s
*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
teclado_v1_02default:default2�
pc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0.vhd2default:default2
52default:default2
U02default:default2 
teclado_v1_02default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_teclado_0_0/synth/design_1_teclado_0_0.vhd2default:default2
1522default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
teclado_v1_02default:default2�
pc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0.vhd2default:default2
512default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
teclado_v1_0_S00_AXI2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0_S00_AXI.vhd2default:default2
52default:default2-
teclado_v1_0_S00_AXI_inst2default:default2(
teclado_v1_0_S00_AXI2default:default2�
pc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0.vhd2default:default2
892default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
teclado_v1_0_S00_AXI2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0_S00_AXI.vhd2default:default2
892default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0_S00_AXI.vhd2default:default2
2472default:default8@Z8-226h px� 
�
default block is never used226*oasys2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0_S00_AXI.vhd2default:default2
3852default:default8@Z8-226h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
teclaDetect2default:default2�
oc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/src/teclaDetect.vhd2default:default2
362default:default2"
TeclaDetecInst2default:default2
teclaDetect2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0_S00_AXI.vhd2default:default2
4492default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
teclaDetect2default:default2�
oc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/src/teclaDetect.vhd2default:default2
462default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
oc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/src/teclaDetect.vhd2default:default2
1522default:default8@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
state2default:default2�
oc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/src/teclaDetect.vhd2default:default2
1072default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
teclaDetect2default:default2
02default:default2
12default:default2�
oc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/src/teclaDetect.vhd2default:default2
462default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
teclado_v1_0_S00_AXI2default:default2
02default:default2
12default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0_S00_AXI.vhd2default:default2
892default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
teclado_v1_02default:default2
02default:default2
12default:default2�
pc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/81e8/hdl/teclado_v1_0.vhd2default:default2
512default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
design_1_teclado_0_02default:default2
02default:default2
12default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_teclado_0_0/synth/design_1_teclado_0_0.vhd2default:default2
842default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_12default:default2
02default:default2
12default:default2v
`c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/synth/design_1.vhd2default:default2
18812default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
design_1_wrapper2default:default2
02default:default2
12default:default2|
fc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2default:default2
312default:default8@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[0].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[1].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[2].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[3].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[4].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[5].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[6].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[7].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[8].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
1Dual.ALLIN0_ND_G0.READ_REG_GEN[9].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2F
2Dual.ALLIN0_ND_G0.READ_REG_GEN[10].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2F
2Dual.ALLIN0_ND_G0.READ_REG_GEN[11].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2F
2Dual.ALLIN0_ND_G0.READ_REG_GEN[12].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2F
2Dual.ALLIN0_ND_G0.READ_REG_GEN[13].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2F
2Dual.ALLIN0_ND_G0.READ_REG_GEN[14].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2F
2Dual.ALLIN0_ND_G0.READ_REG_GEN[15].GPIO_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
6582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2H
4Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2I
5Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2I
5Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2I
5Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2I
5Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2I
5Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2I
5Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].GPIO2_DBus_i_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
7872default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2*
Dual.gpio2_Data_In_reg2default:default2�
xc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
9202default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2@
,gen_debug_trans_seq.debug_aw_trans_seq_i_reg2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20562default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2@
,gen_debug_trans_seq.debug_ar_trans_seq_i_reg2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20672default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2>
*gen_debug_trans_seq.debug_w_beat_cnt_i_reg2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20782default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2>
*gen_debug_trans_seq.debug_r_beat_cnt_i_reg2default:default2�
zc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20912default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_read_reg2default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
24472default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
is_write_reg2default:default2�
}c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
24482default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
set_Ext_BRK_reg2default:default2�
sc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd2default:default2
41212default:default8@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_AWPROT[2]2default:default2(
teclado_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_AWPROT[1]2default:default2(
teclado_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_AWPROT[0]2default:default2(
teclado_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_ARPROT[2]2default:default2(
teclado_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_ARPROT[1]2default:default2(
teclado_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_ARPROT[0]2default:default2(
teclado_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

prmry_aclk2default:default2,
cdc_sync__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
prmry_resetn2default:default2,
cdc_sync__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2$
prmry_vect_in[1]2default:default2,
cdc_sync__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2$
prmry_vect_in[0]2default:default2,
cdc_sync__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
scndry_resetn2default:default2,
cdc_sync__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_AWPROT[2]2default:default2$
rgb_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_AWPROT[1]2default:default2$
rgb_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_AWPROT[0]2default:default2$
rgb_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_ARPROT[2]2default:default2$
rgb_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_ARPROT[1]2default:default2$
rgb_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
S_AXI_ARPROT[0]2default:default2$
rgb_v1_0_S00_AXI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLKB2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	SBITERR_I2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	DBITERR_I2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
RDADDRECC_I[11]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2#
RDADDRECC_I[10]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[9]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[8]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[7]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[6]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[5]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[4]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[3]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[2]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[1]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
RDADDRECC_I[0]2default:default2(
blk_mem_output_block2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
DBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRA2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRB2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SLEEP2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTSBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTDBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ECCPIPECE2default:default2<
(blk_mem_gen_prim_wrapper__parameterized22default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
DBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRA2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRB2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SLEEP2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTSBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTDBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ECCPIPECE2default:default2<
(blk_mem_gen_prim_wrapper__parameterized12default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
DBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRA2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRB2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SLEEP2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTSBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTDBITERR2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ECCPIPECE2default:default2<
(blk_mem_gen_prim_wrapper__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SBITERR2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
DBITERR2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRA2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SSRB2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SLEEP2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTSBITERR2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2!
INJECTDBITERR2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ECCPIPECE2default:default2,
blk_mem_gen_prim_wrapper2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

MUX_RST[0]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
MEM_LAT_RST2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
MEM_REG_RST2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
MUX_REGCE[0]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	MEM_REGCE2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
WE2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ADDR_IN[11]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ADDR_IN[10]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[9]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[8]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[7]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[6]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[5]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[4]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[3]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[2]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[1]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

ADDR_IN[0]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[7]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[6]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[5]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[4]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[3]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[2]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[1]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
SBITERRIN[0]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[7]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[6]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[5]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[4]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[3]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[2]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[1]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
DBITERRIN[0]2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	ECCPIPECE2default:default23
blk_mem_gen_mux__parameterized02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

MUX_RST[0]2default:default2#
blk_mem_gen_mux2default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:18 ; elapsed = 00:00:25 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 2883.164 ; gain = 960.688
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.2042default:default2
2883.1642default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
8002default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc2default:default20
design_1_i/microblaze_0/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc2default:default20
design_1_i/microblaze_0/U0	2default:default8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc2default:default2/
design_1_i/clk_wiz_1/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc2default:default2/
design_1_i/clk_wiz_1/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc2default:default2/
design_1_i/clk_wiz_1/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc2default:default2/
design_1_i/clk_wiz_1/inst	2default:default8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
~c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc2default:default26
 design_1_i/rst_clk_wiz_1_100M/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc2default:default26
 design_1_i/rst_clk_wiz_1_100M/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc2default:default26
 design_1_i/rst_clk_wiz_1_100M/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc2default:default26
 design_1_i/rst_clk_wiz_1_100M/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc2default:default22
design_1_i/axi_uartlite_0/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc2default:default22
design_1_i/axi_uartlite_0/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc2default:default22
design_1_i/axi_uartlite_0/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc2default:default22
design_1_i/axi_uartlite_0/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc2default:default2.
design_1_i/axi_gpio_0/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc2default:default2.
design_1_i/axi_gpio_0/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc2default:default2.
design_1_i/axi_gpio_0/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc2default:default2.
design_1_i/axi_gpio_0/U0	2default:default8Z20-847h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
�
Parsing XDC File [%s]
179*designutils2n
XC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.srcs/constrs_1/new/Basys3_Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2n
XC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.srcs/constrs_1/new/Basys3_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2l
XC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.srcs/constrs_1/new/Basys3_Master.xdc2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2e
OC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2e
OC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2c
OC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.runs/synth_1/dont_touch.xdc2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
vc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc2default:default2)
design_1_i/mdm_1/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
vc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc2default:default2)
design_1_i/mdm_1/U0	2default:default8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
vc:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
2883.1642default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 593 instances were transformed.
  BUFGCE_1 => BUFGCTRL: 1 instance 
  FDC_1 => FDCE (inverted pins: C): 1 instance 
  FDR => FDRE: 336 instances
  FDRE_1 => FDRE (inverted pins: C): 1 instance 
  FDS => FDSE: 3 instances
  LUT6_2 => LUT6_2 (LUT5, LUT6): 96 instances
  MULT_AND => LUT2: 1 instance 
  MUXCY_L => MUXCY: 137 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 16 instances
  SRL16 => SRL16E: 1 instance 
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0482default:default2
2883.1642default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:24 ; elapsed = 00:00:32 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
J
%s
*synth22
Loading part: xc7a35tcpg236-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:24 ; elapsed = 00:00:32 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:32 . Memory (MB): peak = 2883.164 ; gain = 960.688
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2$
slave_attachment2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default24
 slave_attachment__parameterized02default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
teclaDetect2default:defaultZ8-802h px� 
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
_                 iSTATE2 |                             0001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                             0010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                             0100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                             1000 |                               11
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2$
slave_attachment2default:defaultZ8-3354h px� 
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
_                 sm_idle |                             0010 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                 sm_read |                             1000 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                sm_write |                             0100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                 sm_resp |                             0001 |                               11
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default24
 slave_attachment__parameterized02default:defaultZ8-3354h px� 
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
_         waitingpression |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_      pressiondebouncing |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                scancol1 |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                scancol2 |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                scancol3 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                scancol4 |                              101 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_       waitingdepression |                              110 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_    depressiondebouncing |                              111 |                              111
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
teclaDetect2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:27 ; elapsed = 00:00:35 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
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
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
9inst/gen_sasd.crossbar_sasd_0/reg_slice_r/m_payload_i_reg2default:default2
362default:default2
352default:default2�
�c:/Users/newto/uni/DE/Practica3/Practica3/Practica3.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
17312default:default8@Z8-3936h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS4/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
wgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
xgpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�gpio_core_1/Dual.INPUT_DOUBLE_REGS5/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys24
 design_1_i/microblaze_0/U0/Reset2default:default2@
,design_1_i/rst_clk_wiz_1_100M/U0/FDRE_inst/Q2default:defaultZ8-5578h px� 
�
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
12default:defaultZ8-5819h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:37 ; elapsed = 00:00:44 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
}Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:47 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
|Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:00:48 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
vFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
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
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|1     |AND2B1L    |     1|
2default:defaulth px� 
H
%s*synth20
|2     |BSCANE2    |     1|
2default:defaulth px� 
H
%s*synth20
|3     |BUFG       |     2|
2default:defaulth px� 
H
%s*synth20
|4     |BUFGCE     |     1|
2default:defaulth px� 
H
%s*synth20
|5     |CARRY4     |    52|
2default:defaulth px� 
H
%s*synth20
|6     |LUT1       |    38|
2default:defaulth px� 
H
%s*synth20
|7     |LUT2       |   145|
2default:defaulth px� 
H
%s*synth20
|8     |LUT3       |   333|
2default:defaulth px� 
H
%s*synth20
|9     |LUT4       |   378|
2default:defaulth px� 
H
%s*synth20
|10    |LUT5       |   485|
2default:defaulth px� 
H
%s*synth20
|11    |LUT6       |   677|
2default:defaulth px� 
H
%s*synth20
|13    |MMCME2_ADV |     1|
2default:defaulth px� 
H
%s*synth20
|14    |MULT_AND   |     1|
2default:defaulth px� 
H
%s*synth20
|15    |MUXCY_L    |   135|
2default:defaulth px� 
H
%s*synth20
|16    |MUXF7      |   108|
2default:defaulth px� 
H
%s*synth20
|17    |RAM32M     |    16|
2default:defaulth px� 
H
%s*synth20
|18    |RAMB36E1   |     4|
2default:defaulth px� 
H
%s*synth20
|19    |SRL16      |     1|
2default:defaulth px� 
H
%s*synth20
|20    |SRL16E     |   116|
2default:defaulth px� 
H
%s*synth20
|21    |SRLC16E    |     8|
2default:defaulth px� 
H
%s*synth20
|22    |XORCY      |    94|
2default:defaulth px� 
H
%s*synth20
|23    |FDCE       |   158|
2default:defaulth px� 
H
%s*synth20
|24    |FDC        |     1|
2default:defaulth px� 
H
%s*synth20
|25    |FDPE       |    16|
2default:defaulth px� 
H
%s*synth20
|26    |FDR        |   159|
2default:defaulth px� 
H
%s*synth20
|27    |FDRE       |  1580|
2default:defaulth px� 
H
%s*synth20
|29    |FDS        |     1|
2default:defaulth px� 
H
%s*synth20
|30    |FDSE       |    81|
2default:defaulth px� 
H
%s*synth20
|31    |IBUF       |    23|
2default:defaulth px� 
H
%s*synth20
|32    |OBUF       |    24|
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
v
%s
*synth2^
JSynthesis finished with 0 errors, 0 critical warnings and 15501 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:47 . Memory (MB): peak = 2883.164 ; gain = 960.688
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:42 ; elapsed = 00:00:50 . Memory (MB): peak = 2883.164 ; gain = 960.688
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0842default:default2
2883.1642default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
6552default:defaultZ29-17h px� 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
2883.1642default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 299 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 38 instances
  BUFGCE_1 => BUFGCTRL: 1 instance 
  FDC_1 => FDCE (inverted pins: C): 1 instance 
  FDR => FDRE: 159 instances
  FDRE_1 => FDRE (inverted pins: C): 1 instance 
  FDS => FDSE: 1 instance 
  LUT6_2 => LUT6_2 (LUT5, LUT6): 80 instances
  MULT_AND => LUT2: 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 16 instances
  SRL16 => SRL16E: 1 instance 
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
ea7f75dd2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5022default:default2
1422default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:462default:default2
00:00:542default:default2
2883.1642default:default2
1342.8982default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
UC:/Users/newto/uni/DE/Practica3/Practica3/Practica3.runs/synth_1/design_1_wrapper.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
vExecuting : report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov 21 18:11:07 20242default:defaultZ17-206h px� 


End Record