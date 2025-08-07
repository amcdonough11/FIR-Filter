onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ahb_subordinate/clk
add wave -noupdate /tb_ahb_subordinate/n_rst
add wave -noupdate /tb_ahb_subordinate/test_name
add wave -noupdate -divider {FIR OUT}
add wave -noupdate /tb_ahb_subordinate/err
add wave -noupdate /tb_ahb_subordinate/modwait
add wave -noupdate /tb_ahb_subordinate/fir_out
add wave -noupdate -divider {AHB_sub IN}
add wave -noupdate /tb_ahb_subordinate/hsel
add wave -noupdate /tb_ahb_subordinate/htrans
add wave -noupdate /tb_ahb_subordinate/haddr
add wave -noupdate /tb_ahb_subordinate/hsize
add wave -noupdate /tb_ahb_subordinate/hwrite
add wave -noupdate /tb_ahb_subordinate/hwdata
add wave -noupdate /tb_ahb_subordinate/clear_coeff
add wave -noupdate /tb_ahb_subordinate/coefficient_num
add wave -noupdate -divider {AHB_sub OUT}
add wave -noupdate /tb_ahb_subordinate/hrdata
add wave -noupdate /tb_ahb_subordinate/hresp
add wave -noupdate /tb_ahb_subordinate/sample_data
add wave -noupdate /tb_ahb_subordinate/data_ready
add wave -noupdate /tb_ahb_subordinate/new_coefficient_set
add wave -noupdate /tb_ahb_subordinate/fir_coefficient
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {1 ns}
