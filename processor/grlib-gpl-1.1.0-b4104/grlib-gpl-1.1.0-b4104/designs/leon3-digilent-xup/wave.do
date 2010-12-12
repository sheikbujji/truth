onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/cpu/resetn
add wave -noupdate -radix hexadecimal /testbench/cpu/clk
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.x.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.inst
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/r
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/i.asr1
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/i.asr2
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/i.maddr
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/i.mdatar
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/i.mdataw
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/o.error
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/r.enable
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/r.reg_ta
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/r.reg_st
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/ftasip_dc0/r.reg_value
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfe1
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfe2
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfa1
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfa2
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
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f {-height 15 -radix hexadecimal -expand} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f.pc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f.branch {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e {-height 15 -radix hexadecimal -expand} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ctrl {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.aluop {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.alusel {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.aluadd {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.alucin {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ldbp1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ldbp2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.invop2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.shcnt {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.sari {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.shleft {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ymsb {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.rd {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.jmpl {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.su {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.et {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.cwp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.icc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.mulstep {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.mul {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.mac {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.bp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m {-height 15 -radix hexadecimal -expand} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl {-height 15 -radix hexadecimal -expand} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.pc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.inst {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.cnt {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.rd {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.tt {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.trap {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.annul {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.wreg {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.wicc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.wy {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.ld {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.pv {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.rett {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.ftasip_ctrl_mux_alu_op1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.result {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.y {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.icc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.nalign {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.dci {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.werr {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.wcwp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.irqen {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.irqen2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.mac {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.divz {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.su {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.mul {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.casa {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.casaz {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.x {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.w {-height 15 -radix hexadecimal}} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/dci.eaddress
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/dci.edata
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/dci
add wave -noupdate -radix hexadecimal /testbench/cpu/resetn
add wave -noupdate -radix hexadecimal /testbench/cpu/clk
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.x.ctrl.pc
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.inst
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfe1
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfe2
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfa1
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfa2
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
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.f {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.pc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.inst {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.cwp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.set {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.mexc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.cnt {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.pv {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.annul {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.inull {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.step {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.d.divrdy {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.pc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.inst {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.cnt {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.rd {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.tt {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.trap {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.annul {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.wreg {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.wicc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.wy {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.ld {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.pv {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.rett {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ctrl.ftasip_ctrl_mux_alu_op1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rs1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfa1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfa2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rsel1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rsel2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfe1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.rfe2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.cwp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.imm {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ldcheck1 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ldcheck2 {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ldchkra {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ldchkex {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.su {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.et {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.wovf {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.wunf {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.ticc {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.jmpl {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.step {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.mulstart {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.divstart {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.bp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.a.nobp {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e {-height 15 -radix hexadecimal -expand} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ctrl {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1 {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(31) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(30) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(29) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(28) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(27) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(26) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(25) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(24) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(23) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(22) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(21) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(20) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(19) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(18) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(17) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(16) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(15) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(14) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(13) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(12) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(11) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(10) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(9) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(8) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(7) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(6) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(5) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(4) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(3) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(2) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(1) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1(0) {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op2 {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.aluop {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.alusel {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.aluadd {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.alucin {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ldbp1 {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ldbp2 {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.invop2 {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.shcnt {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.sari {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.shleft {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.ymsb {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.rd {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.jmpl {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.su {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.et {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.cwp {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.icc {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.mulstep {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.mul {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.mac {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.bp {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.ctrl {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.result {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.y {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.icc {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.nalign {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.dci {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.werr {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.wcwp {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.irqen {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.irqen2 {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.mac {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.divz {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.su {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.mul {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.casa {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.m.casaz {-radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.x {-height 15 -radix hexadecimal} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.w {-height 15 -radix hexadecimal}} /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r
add wave -noupdate -radix hexadecimal /testbench/cpu/l3/cpu(0)/u0/p0/iu0/r.e.op1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1564842 ps} 0}
configure wave -namecolwidth 125
configure wave -valuecolwidth 76
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
WaveRestoreZoom {1113066 ps} {1667733 ps}
