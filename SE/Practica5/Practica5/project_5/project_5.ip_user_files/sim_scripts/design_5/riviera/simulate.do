transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_5  -L xpm -L xil_defaultlib -L microblaze_v11_0_11 -L lmb_v10_v3_0_12 -L lmb_bram_if_cntlr_v4_0_22 -L blk_mem_gen_v8_4_6 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_24 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_32 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_5 xil_defaultlib.glbl

do {design_5.udo}

run 1000ns

endsim

quit -force
