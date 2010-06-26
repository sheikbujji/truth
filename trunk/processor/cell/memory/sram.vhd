--******************************************************************************
--
-- @title   Truth / Cell / Memory
--
-- @file    /truth/cell/memory/memory.vhd
-- 
-- @about   A memory module of autonomous computing cell
--
-- @author  Keun Soo Yim (yim2012@gmail.com)
--
--******************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library truth;
use truth_types.all;

entity SRAM is
  PORT(
    i: in  port_sram_in;
    o: out port_sram_out
  );
end SRAM;

architecture struct of SRAM is
  type   RAMBlDOut_Type is array(2**(i.addr'length-9)-1 downto 0) of  std_logic_vector(dout'range);
  signal RAMBlDOut : RAMBlDOut_Type;

  signal web    : std_logic_vector(2**(i.addr'length-9)-1 downto 0);
  signal cp2n   : std_logic;

  signal gnd    : std_logic;
begin
  gnd <= '0';

  web_dcd: for i in web'range generate
    web(i) <= '1' when (i.we='1' and i.addr(i.addr'high downto 9)=i) else
              '0';
  end generate;

  ram_inst: for i in 0 to 2**(i.addr'length-9)-1 generate
    ram_byte: component RAMB4_S8 port map(
                                      DO   => RAMBlDOut(i)(7 downto 0),
                                      ADDR => i.addr(8 downto 0),
                                      DI   => i.din(7 downto 0),
                                      EN   => i.ce,
                                      CLK  => i.cp2,
                                      WE   => web(i),
                                      RST  => gnd
                                      );
  end generate;                  

  o.dout <= RAMBlDOut(CONV_INTEGER(i.addr(i.addr'high downto 9)));
end architecture struct;

