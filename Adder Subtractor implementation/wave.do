onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 40 /tb_Adder_subtractor/bit_len
add wave -noupdate -height 40 /tb_Adder_subtractor/A
add wave -noupdate -height 40 /tb_Adder_subtractor/B
add wave -noupdate -height 40 /tb_Adder_subtractor/SEL
add wave -noupdate -height 40 /tb_Adder_subtractor/SUM
add wave -noupdate -height 40 /tb_Adder_subtractor/C_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 198
configure wave -valuecolwidth 89
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {37 ps}
