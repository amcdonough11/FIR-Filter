onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fir_filter/clk
add wave -noupdate -divider in
add wave -noupdate -color Magenta /tb_fir_filter/n_rst
add wave -noupdate -color Magenta /tb_fir_filter/load_coeff
add wave -noupdate -color Magenta /tb_fir_filter/data_ready
add wave -noupdate -color Magenta /tb_fir_filter/modwait
add wave -noupdate -color Magenta /tb_fir_filter/err
add wave -noupdate -expand -group in_data -color Cyan /tb_fir_filter/sample_data
add wave -noupdate -expand -group in_data -color Cyan /tb_fir_filter/fir_coefficient
add wave -noupdate -divider out
add wave -noupdate -expand -group reg -color {Light Blue} /tb_fir_filter/DUT/data/op
add wave -noupdate -expand -group reg -color {Light Blue} /tb_fir_filter/DUT/data/src1
add wave -noupdate -expand -group reg -color {Light Blue} /tb_fir_filter/DUT/data/src2
add wave -noupdate -expand -group reg -color {Light Blue} /tb_fir_filter/DUT/data/dest
add wave -noupdate -expand -group out -color Goldenrod /tb_fir_filter/DUT/data/overflow
add wave -noupdate -expand -group out -color Goldenrod /tb_fir_filter/fir_out
add wave -noupdate -expand -group out -color Goldenrod /tb_fir_filter/DUT/control/state
add wave -noupdate -divider test_names
add wave -noupdate /tb_fir_filter/test_name
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {209448 ps}
