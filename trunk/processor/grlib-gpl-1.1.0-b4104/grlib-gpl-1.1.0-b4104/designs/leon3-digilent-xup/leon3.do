onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/cpu/resetn
add wave -noupdate -radix hexadecimal /testbench/cpu/clk
add wave -noupdate -radix hexadecimal /testbench/cpu/errorn
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_clk
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_clkb
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_clk_fb
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_clk_fb_out
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_cke
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_csb
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_web
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_rasb
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_casb
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_dm
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_dqs
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_ad
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_ba
add wave -noupdate -radix hexadecimal /testbench/cpu/ddr_dq
add wave -noupdate -radix hexadecimal /testbench/cpu/apbi
add wave -noupdate -radix hexadecimal /testbench/cpu/apbo
add wave -noupdate -radix hexadecimal /testbench/cpu/ahbsi
add wave -noupdate -radix hexadecimal /testbench/cpu/ahbso
add wave -noupdate -radix hexadecimal /testbench/cpu/ahbmi
add wave -noupdate -radix hexadecimal /testbench/cpu/ahbmo
add wave -noupdate -radix hexadecimal /testbench/cpu/clkm
add wave -noupdate -radix hexadecimal /testbench/cpu/rstn
add wave -noupdate -radix hexadecimal /testbench/cpu/ddrlock
add wave -noupdate -radix hexadecimal /testbench/cpu/lock
add wave -noupdate -radix hexadecimal /testbench/cpu/clkml
add wave -noupdate -radix hexadecimal /testbench/cpu/ddrsp0/ddr0/ddr64/ddrc/r
add wave -noupdate -radix hexadecimal /testbench/cpu/ddrsp0/ddr0/ddr64/ddrc/ra
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d {-radix hexadecimal -expand} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.pc {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.inst {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.cwp {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.set {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.mexc {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.cnt {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.pv {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.annul {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.inull {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.step {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.divrdy {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.x {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.w {-radix hexadecimal}} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10461406 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 151
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
WaveRestoreZoom {10407448 ps} {10535762 ps}
