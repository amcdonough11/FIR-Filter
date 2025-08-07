onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_coefficient_loader/clk
add wave -noupdate /tb_coefficient_loader/n_rst
add wave -noupdate -divider in
add wave -noupdate /tb_coefficient_loader/new_coefficient_set
add wave -noupdate /tb_coefficient_loader/modwait
add wave -noupdate -divider out
add wave -noupdate /tb_coefficient_loader/load_coeff
add wave -noupdate /tb_coefficient_loader/clear_coeff
add wave -noupdate /tb_coefficient_loader/coefficient_num
add wave -noupdate -divider state
add wave -noupdate /tb_coefficient_loader/test_name
add wave -noupdate /tb_coefficient_loader/DUT/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {137455 ps} 0}
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
WaveRestoreZoom {0 ps} {168 ns}
