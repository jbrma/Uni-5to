## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## ADC
set_property PACKAGE_PIN K3 [get_ports {conv_clk_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_clk_0}]
set_property PACKAGE_PIN N1 [get_ports {conv_ale_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_ale_0}]
set_property PACKAGE_PIN L3 [get_ports {conv_start_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_start_0}]
set_property PACKAGE_PIN M3 [get_ports {conv_oe_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_oe_0}]

set_property PACKAGE_PIN G3 [get_ports {conv_eoc_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_eoc_0}]

set_property PACKAGE_PIN M2 [get_ports {conv_addr_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_addr_0[0]}]
set_property PACKAGE_PIN M1 [get_ports {conv_addr_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_addr_0[1]}]
set_property PACKAGE_PIN N2 [get_ports {conv_addr_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_addr_0[2]}]

set_property PACKAGE_PIN M19 [get_ports {conv_data_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[0]}]
set_property PACKAGE_PIN M18 [get_ports {conv_data_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[1]}]
set_property PACKAGE_PIN L17 [get_ports {conv_data_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[2]}]
set_property PACKAGE_PIN K17 [get_ports {conv_data_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[3]}]
set_property PACKAGE_PIN G2 [get_ports {conv_data_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[4]}]
set_property PACKAGE_PIN H2 [get_ports {conv_data_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[5]}]
set_property PACKAGE_PIN J2 [get_ports {conv_data_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[6]}]
set_property PACKAGE_PIN K2 [get_ports {conv_data_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {conv_data_0[7]}]


## matriz
set_property PACKAGE_PIN A15 [get_ports {row_serial_out_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {row_serial_out_0}]
set_property PACKAGE_PIN A16 [get_ports {row_clk_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {row_clk_0}]
set_property PACKAGE_PIN P18 [get_ports {col_serial_out_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_serial_out_0}]
set_property PACKAGE_PIN R18 [get_ports {col_clk_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_clk_0}]
set_property PACKAGE_PIN A14 [get_ports {reset_out_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset_out_0}]
set_property PACKAGE_PIN A17 [get_ports {reset2_out_0}]
    set_property IOSTANDARD LVCMOS33 [get_ports {reset2_out_0}]
