onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ahb_fir_filter/clk
add wave -noupdate /tb_ahb_fir_filter/n_rst
add wave -noupdate /tb_ahb_fir_filter/test_name
add wave -noupdate -divider in
add wave -noupdate /tb_ahb_fir_filter/hsel
add wave -noupdate /tb_ahb_fir_filter/hsize
add wave -noupdate /tb_ahb_fir_filter/hwrite
add wave -noupdate /tb_ahb_fir_filter/haddr
add wave -noupdate /tb_ahb_fir_filter/htrans
add wave -noupdate /tb_ahb_fir_filter/hwdata
add wave -noupdate -divider out
add wave -noupdate /tb_ahb_fir_filter/hrdata
add wave -noupdate /tb_ahb_fir_filter/hresp
add wave -noupdate -divider fir_internal
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/sample_data
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/fir_coefficient
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/load_coeff
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/data_ready
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/modwait
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/fir_out
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/err
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/cnt_up
add wave -noupdate -divider {fir reg}
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/data/ext_data1
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/data/ext_data2
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/outreg_data
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/src1
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/data/src1_data
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/src2
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/data/src2_data
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/data/dest_data
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/dest
add wave -noupdate /tb_ahb_fir_filter/DUT/fir/control/state
add wave -noupdate /tb_ahb_fir_filter/DUT/coeff/state
add wave -noupdate -divider {REG Values}
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/results_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/status_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/new_sample_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/F0_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/F1_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/F2_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/F3_reg
add wave -noupdate /tb_ahb_fir_filter/DUT/sub/new_coeff_set_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1161625 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {41356371 ps} {42812823 ps}
