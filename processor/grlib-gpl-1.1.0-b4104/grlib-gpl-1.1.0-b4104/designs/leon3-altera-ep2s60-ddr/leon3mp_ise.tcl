project new leon3mp.ise
project set family "STRATIXII"
project set device EP2S60
project set speed -3
project set package FC672
puts "Adding files to project"
lib_vhdl new grlib
xfile add "../../lib/grlib/stdlib/version.vhd" -lib_vhdl grlib
puts "../../lib/grlib/stdlib/version.vhd"
xfile add "../../lib/grlib/stdlib/config.vhd" -lib_vhdl grlib
puts "../../lib/grlib/stdlib/config.vhd"
xfile add "../../lib/grlib/stdlib/stdlib.vhd" -lib_vhdl grlib
puts "../../lib/grlib/stdlib/stdlib.vhd"
xfile add "../../lib/grlib/sparc/sparc.vhd" -lib_vhdl grlib
puts "../../lib/grlib/sparc/sparc.vhd"
xfile add "../../lib/grlib/modgen/multlib.vhd" -lib_vhdl grlib
puts "../../lib/grlib/modgen/multlib.vhd"
xfile add "../../lib/grlib/modgen/leaves.vhd" -lib_vhdl grlib
puts "../../lib/grlib/modgen/leaves.vhd"
xfile add "../../lib/grlib/amba/amba.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/amba.vhd"
xfile add "../../lib/grlib/amba/devices.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/devices.vhd"
xfile add "../../lib/grlib/amba/defmst.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/defmst.vhd"
xfile add "../../lib/grlib/amba/apbctrl.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/apbctrl.vhd"
xfile add "../../lib/grlib/amba/ahbctrl.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/ahbctrl.vhd"
xfile add "../../lib/grlib/amba/dma2ahb_pkg.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/dma2ahb_pkg.vhd"
xfile add "../../lib/grlib/amba/dma2ahb.vhd" -lib_vhdl grlib
puts "../../lib/grlib/amba/dma2ahb.vhd"
lib_vhdl new synplify
lib_vhdl new techmap
xfile add "../../lib/techmap/gencomp/gencomp.vhd" -lib_vhdl techmap
puts "../../lib/techmap/gencomp/gencomp.vhd"
xfile add "../../lib/techmap/gencomp/netcomp.vhd" -lib_vhdl techmap
puts "../../lib/techmap/gencomp/netcomp.vhd"
xfile add "../../lib/techmap/inferred/memory_inferred.vhd" -lib_vhdl techmap
puts "../../lib/techmap/inferred/memory_inferred.vhd"
xfile add "../../lib/techmap/inferred/ddr_inferred.vhd" -lib_vhdl techmap
puts "../../lib/techmap/inferred/ddr_inferred.vhd"
xfile add "../../lib/techmap/inferred/mul_inferred.vhd" -lib_vhdl techmap
puts "../../lib/techmap/inferred/mul_inferred.vhd"
xfile add "../../lib/techmap/inferred/ddr_phy_inferred.vhd" -lib_vhdl techmap
puts "../../lib/techmap/inferred/ddr_phy_inferred.vhd"
xfile add "../../lib/techmap/maps/allclkgen.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/allclkgen.vhd"
xfile add "../../lib/techmap/maps/allddr.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/allddr.vhd"
xfile add "../../lib/techmap/maps/allmem.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/allmem.vhd"
xfile add "../../lib/techmap/maps/allpads.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/allpads.vhd"
xfile add "../../lib/techmap/maps/alltap.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/alltap.vhd"
xfile add "../../lib/techmap/maps/clkgen.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/clkgen.vhd"
xfile add "../../lib/techmap/maps/clkmux.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/clkmux.vhd"
xfile add "../../lib/techmap/maps/clkand.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/clkand.vhd"
xfile add "../../lib/techmap/maps/ddr_ireg.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/ddr_ireg.vhd"
xfile add "../../lib/techmap/maps/ddr_oreg.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/ddr_oreg.vhd"
xfile add "../../lib/techmap/maps/ddrphy.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/ddrphy.vhd"
xfile add "../../lib/techmap/maps/syncram.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram.vhd"
xfile add "../../lib/techmap/maps/syncram64.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram64.vhd"
xfile add "../../lib/techmap/maps/syncram_2p.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram_2p.vhd"
xfile add "../../lib/techmap/maps/syncram_dp.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram_dp.vhd"
xfile add "../../lib/techmap/maps/syncfifo.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncfifo.vhd"
xfile add "../../lib/techmap/maps/regfile_3p.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/regfile_3p.vhd"
xfile add "../../lib/techmap/maps/tap.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/tap.vhd"
xfile add "../../lib/techmap/maps/techbuf.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/techbuf.vhd"
xfile add "../../lib/techmap/maps/nandtree.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/nandtree.vhd"
xfile add "../../lib/techmap/maps/clkpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/clkpad.vhd"
xfile add "../../lib/techmap/maps/clkpad_ds.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/clkpad_ds.vhd"
xfile add "../../lib/techmap/maps/inpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/inpad.vhd"
xfile add "../../lib/techmap/maps/inpad_ds.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/inpad_ds.vhd"
xfile add "../../lib/techmap/maps/iodpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/iodpad.vhd"
xfile add "../../lib/techmap/maps/iopad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/iopad.vhd"
xfile add "../../lib/techmap/maps/iopad_ds.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/iopad_ds.vhd"
xfile add "../../lib/techmap/maps/lvds_combo.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/lvds_combo.vhd"
xfile add "../../lib/techmap/maps/odpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/odpad.vhd"
xfile add "../../lib/techmap/maps/outpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/outpad.vhd"
xfile add "../../lib/techmap/maps/outpad_ds.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/outpad_ds.vhd"
xfile add "../../lib/techmap/maps/toutpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/toutpad.vhd"
xfile add "../../lib/techmap/maps/skew_outpad.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/skew_outpad.vhd"
xfile add "../../lib/techmap/maps/grspwc_net.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/grspwc_net.vhd"
xfile add "../../lib/techmap/maps/grspwc2_net.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/grspwc2_net.vhd"
xfile add "../../lib/techmap/maps/grlfpw_net.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/grlfpw_net.vhd"
xfile add "../../lib/techmap/maps/grfpw_net.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/grfpw_net.vhd"
xfile add "../../lib/techmap/maps/mul_61x61.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/mul_61x61.vhd"
xfile add "../../lib/techmap/maps/cpu_disas_net.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/cpu_disas_net.vhd"
xfile add "../../lib/techmap/maps/ringosc.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/ringosc.vhd"
xfile add "../../lib/techmap/maps/system_monitor.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/system_monitor.vhd"
xfile add "../../lib/techmap/maps/grgates.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/grgates.vhd"
xfile add "../../lib/techmap/maps/inpad_ddr.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/inpad_ddr.vhd"
xfile add "../../lib/techmap/maps/outpad_ddr.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/outpad_ddr.vhd"
xfile add "../../lib/techmap/maps/iopad_ddr.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/iopad_ddr.vhd"
xfile add "../../lib/techmap/maps/syncram128bw.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram128bw.vhd"
xfile add "../../lib/techmap/maps/syncram128.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram128.vhd"
xfile add "../../lib/techmap/maps/syncram156bw.vhd" -lib_vhdl techmap
puts "../../lib/techmap/maps/syncram156bw.vhd"
lib_vhdl new opencores
xfile add "../../lib/opencores/occomp/occomp.vhd" -lib_vhdl opencores
puts "../../lib/opencores/occomp/occomp.vhd"
xfile add "../../lib/opencores/i2c/i2c_master_bit_ctrl.vhd" -lib_vhdl opencores
puts "../../lib/opencores/i2c/i2c_master_bit_ctrl.vhd"
xfile add "../../lib/opencores/i2c/i2c_master_byte_ctrl.vhd" -lib_vhdl opencores
puts "../../lib/opencores/i2c/i2c_master_byte_ctrl.vhd"
xfile add "../../lib/opencores/i2c/i2coc.vhd" -lib_vhdl opencores
puts "../../lib/opencores/i2c/i2coc.vhd"
xfile add "../../lib/opencores/spi/simple_spi_top.v"
puts "../../lib/opencores/spi/simple_spi_top.v"
xfile add "../../lib/opencores/ata/ud_cnt.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/ud_cnt.vhd"
xfile add "../../lib/opencores/ata/ro_cnt.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/ro_cnt.vhd"
xfile add "../../lib/opencores/ata/atahost_dma_fifo.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_dma_fifo.vhd"
xfile add "../../lib/opencores/ata/atahost_dma_actrl.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_dma_actrl.vhd"
xfile add "../../lib/opencores/ata/atahost_dma_tctrl.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_dma_tctrl.vhd"
xfile add "../../lib/opencores/ata/atahost_pio_tctrl.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_pio_tctrl.vhd"
xfile add "../../lib/opencores/ata/atahost_pio_actrl.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_pio_actrl.vhd"
xfile add "../../lib/opencores/ata/atahost_controller.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_controller.vhd"
xfile add "../../lib/opencores/ata/atahost_pio_controller.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/atahost_pio_controller.vhd"
xfile add "../../lib/opencores/ata/ocidec2_controller.vhd" -lib_vhdl opencores
puts "../../lib/opencores/ata/ocidec2_controller.vhd"
xfile add "../../lib/opencores/ac97/ac97_top.v"
puts "../../lib/opencores/ac97/ac97_top.v"
lib_vhdl new gaisler
xfile add "../../lib/gaisler/arith/arith.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/arith/arith.vhd"
xfile add "../../lib/gaisler/arith/mul32.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/arith/mul32.vhd"
xfile add "../../lib/gaisler/arith/div32.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/arith/div32.vhd"
xfile add "../../lib/gaisler/memctrl/memctrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/memctrl/memctrl.vhd"
xfile add "../../lib/gaisler/memctrl/sdctrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/memctrl/sdctrl.vhd"
xfile add "../../lib/gaisler/memctrl/sdctrl64.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/memctrl/sdctrl64.vhd"
xfile add "../../lib/gaisler/memctrl/sdmctrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/memctrl/sdmctrl.vhd"
xfile add "../../lib/gaisler/memctrl/srctrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/memctrl/srctrl.vhd"
xfile add "../../lib/gaisler/memctrl/spimctrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/memctrl/spimctrl.vhd"
xfile add "../../lib/gaisler/leon3/leon3.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/leon3.vhd"
xfile add "../../lib/gaisler/leon3/mmuconfig.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmuconfig.vhd"
xfile add "../../lib/gaisler/leon3/mmuiface.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmuiface.vhd"
xfile add "../../lib/gaisler/leon3/libmmu.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/libmmu.vhd"
xfile add "../../lib/gaisler/leon3/libiu.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/libiu.vhd"
xfile add "../../lib/gaisler/leon3/libcache.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/libcache.vhd"
xfile add "../../lib/gaisler/leon3/libproc3.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/libproc3.vhd"
xfile add "../../lib/gaisler/leon3/cachemem.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/cachemem.vhd"
xfile add "../../lib/gaisler/leon3/mmu_icache.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmu_icache.vhd"
xfile add "../../lib/gaisler/leon3/mmu_dcache.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmu_dcache.vhd"
xfile add "../../lib/gaisler/leon3/mmu_acache.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmu_acache.vhd"
xfile add "../../lib/gaisler/leon3/mmutlbcam.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmutlbcam.vhd"
xfile add "../../lib/gaisler/leon3/mmulrue.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmulrue.vhd"
xfile add "../../lib/gaisler/leon3/mmulru.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmulru.vhd"
xfile add "../../lib/gaisler/leon3/mmutlb.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmutlb.vhd"
xfile add "../../lib/gaisler/leon3/mmutw.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmutw.vhd"
xfile add "../../lib/gaisler/leon3/mmu.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmu.vhd"
xfile add "../../lib/gaisler/leon3/mmu_cache.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mmu_cache.vhd"
xfile add "../../lib/gaisler/leon3/cpu_disasx.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/cpu_disasx.vhd"
xfile add "../../lib/gaisler/leon3/iu3.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/iu3.vhd"
xfile add "../../lib/gaisler/leon3/grfpwx.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/grfpwx.vhd"
xfile add "../../lib/gaisler/leon3/mfpwx.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/mfpwx.vhd"
xfile add "../../lib/gaisler/leon3/grlfpwx.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/grlfpwx.vhd"
xfile add "../../lib/gaisler/leon3/tbufmem.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/tbufmem.vhd"
xfile add "../../lib/gaisler/leon3/dsu3x.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/dsu3x.vhd"
xfile add "../../lib/gaisler/leon3/dsu3.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/dsu3.vhd"
xfile add "../../lib/gaisler/leon3/proc3.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/proc3.vhd"
xfile add "../../lib/gaisler/leon3/leon3s.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/leon3s.vhd"
xfile add "../../lib/gaisler/leon3/leon3cg.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/leon3cg.vhd"
xfile add "../../lib/gaisler/leon3/irqmp.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/irqmp.vhd"
xfile add "../../lib/gaisler/leon3/grfpwxsh.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/grfpwxsh.vhd"
xfile add "../../lib/gaisler/leon3/grfpushwx.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/grfpushwx.vhd"
xfile add "../../lib/gaisler/leon3/leon3sh.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/leon3/leon3sh.vhd"
xfile add "../../lib/gaisler/misc/misc.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/misc.vhd"
xfile add "../../lib/gaisler/misc/rstgen.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/rstgen.vhd"
xfile add "../../lib/gaisler/misc/gptimer.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/gptimer.vhd"
xfile add "../../lib/gaisler/misc/ahbram.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbram.vhd"
xfile add "../../lib/gaisler/misc/ahbdpram.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbdpram.vhd"
xfile add "../../lib/gaisler/misc/ahbtrace.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbtrace.vhd"
xfile add "../../lib/gaisler/misc/ahbtrace_mb.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbtrace_mb.vhd"
xfile add "../../lib/gaisler/misc/ahbmst.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbmst.vhd"
xfile add "../../lib/gaisler/misc/grgpio.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/grgpio.vhd"
xfile add "../../lib/gaisler/misc/ahbstat.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbstat.vhd"
xfile add "../../lib/gaisler/misc/logan.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/logan.vhd"
xfile add "../../lib/gaisler/misc/apbps2.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/apbps2.vhd"
xfile add "../../lib/gaisler/misc/charrom_package.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/charrom_package.vhd"
xfile add "../../lib/gaisler/misc/charrom.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/charrom.vhd"
xfile add "../../lib/gaisler/misc/apbvga.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/apbvga.vhd"
xfile add "../../lib/gaisler/misc/svgactrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/svgactrl.vhd"
xfile add "../../lib/gaisler/misc/i2cmst.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/i2cmst.vhd"
xfile add "../../lib/gaisler/misc/i2cmst_gen.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/i2cmst_gen.vhd"
xfile add "../../lib/gaisler/misc/spictrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/spictrl.vhd"
xfile add "../../lib/gaisler/misc/i2cslv.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/i2cslv.vhd"
xfile add "../../lib/gaisler/misc/wild.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/wild.vhd"
xfile add "../../lib/gaisler/misc/wild2ahb.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/wild2ahb.vhd"
xfile add "../../lib/gaisler/misc/grsysmon.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/grsysmon.vhd"
xfile add "../../lib/gaisler/misc/gracectrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/gracectrl.vhd"
xfile add "../../lib/gaisler/misc/grgpreg.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/grgpreg.vhd"
xfile add "../../lib/gaisler/misc/ahbmst2.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahbmst2.vhd"
xfile add "../../lib/gaisler/misc/ahb_mst_iface.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/misc/ahb_mst_iface.vhd"
xfile add "../../lib/gaisler/uart/uart.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/uart/uart.vhd"
xfile add "../../lib/gaisler/uart/libdcom.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/uart/libdcom.vhd"
xfile add "../../lib/gaisler/uart/apbuart.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/uart/apbuart.vhd"
xfile add "../../lib/gaisler/uart/dcom.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/uart/dcom.vhd"
xfile add "../../lib/gaisler/uart/dcom_uart.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/uart/dcom_uart.vhd"
xfile add "../../lib/gaisler/uart/ahbuart.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/uart/ahbuart.vhd"
xfile add "../../lib/gaisler/jtag/jtag.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/jtag/jtag.vhd"
xfile add "../../lib/gaisler/jtag/libjtagcom.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/jtag/libjtagcom.vhd"
xfile add "../../lib/gaisler/jtag/jtagcom.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/jtag/jtagcom.vhd"
xfile add "../../lib/gaisler/jtag/ahbjtag.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/jtag/ahbjtag.vhd"
xfile add "../../lib/gaisler/jtag/ahbjtag_bsd.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/jtag/ahbjtag_bsd.vhd"
xfile add "../../lib/gaisler/ddr/ddr_phy.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddr_phy.vhd"
xfile add "../../lib/gaisler/ddr/ddrsp16a.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddrsp16a.vhd"
xfile add "../../lib/gaisler/ddr/ddrsp32a.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddrsp32a.vhd"
xfile add "../../lib/gaisler/ddr/ddrsp64a.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddrsp64a.vhd"
xfile add "../../lib/gaisler/ddr/ddrspa.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddrspa.vhd"
xfile add "../../lib/gaisler/ddr/ddr2spa.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddr2spa.vhd"
xfile add "../../lib/gaisler/ddr/ddr2buf.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddr2buf.vhd"
xfile add "../../lib/gaisler/ddr/ddr2spax.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddr2spax.vhd"
xfile add "../../lib/gaisler/ddr/ddr2spax_ahb.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddr2spax_ahb.vhd"
xfile add "../../lib/gaisler/ddr/ddr2spax_ddr.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ddr/ddr2spax_ddr.vhd"
xfile add "../../lib/gaisler/ata/ata.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/ata.vhd"
xfile add "../../lib/gaisler/ata/ata_inf.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/ata_inf.vhd"
xfile add "../../lib/gaisler/ata/atahost_amba_slave.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/atahost_amba_slave.vhd"
xfile add "../../lib/gaisler/ata/atahost_ahbmst.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/atahost_ahbmst.vhd"
xfile add "../../lib/gaisler/ata/ocidec2_amba_slave.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/ocidec2_amba_slave.vhd"
xfile add "../../lib/gaisler/ata/atactrl_nodma.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/atactrl_nodma.vhd"
xfile add "../../lib/gaisler/ata/atactrl_dma.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/atactrl_dma.vhd"
xfile add "../../lib/gaisler/ata/atactrl.vhd" -lib_vhdl gaisler
puts "../../lib/gaisler/ata/atactrl.vhd"
lib_vhdl new esa
xfile add "../../lib/esa/memoryctrl/memoryctrl.vhd" -lib_vhdl esa
puts "../../lib/esa/memoryctrl/memoryctrl.vhd"
xfile add "../../lib/esa/memoryctrl/mctrl.vhd" -lib_vhdl esa
puts "../../lib/esa/memoryctrl/mctrl.vhd"
lib_vhdl new work
xfile add "../../boards/altera-ep2s60-ddr/leon3mp.ucf"
xfile add "config.vhd" -lib_vhdl work
puts "config.vhd"
xfile add "ahbrom.vhd" -lib_vhdl work
puts "ahbrom.vhd"
xfile add "smc_mctrl.vhd" -lib_vhdl work
puts "smc_mctrl.vhd"
xfile add "leon3mp.vhd" -lib_vhdl work
puts "leon3mp.vhd"
project set top "rtl" "leon3mp"
project set "Bus Delimiter" ()
project set "FSM Encoding Algorithm" None
project set "Pack I/O Registers into IOBs" yes
project set "Verilog Macros" ""
project set "Other XST Command Line Options" "" -process "Synthesize - XST"
project set "Allow Unmatched LOC Constraints" true -process "Translate"
project set "Macro Search Path" "../../netlists/xilinx/STRATIXII" -process "Translate"
project set "Pack I/O Registers/Latches into IOBs" {For Inputs and Outputs}
project set "Other MAP Command Line Options" "" -process Map
project set "Drive Done Pin High" true -process "Generate Programming File"
project set "Create ReadBack Data Files" true -process "Generate Programming File"
project set "Create Mask File" true -process "Generate Programming File"
project set "Run Design Rules Checker (DRC)" false -process "Generate Programming File"
project close
exit
