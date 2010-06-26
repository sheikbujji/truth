--******************************************************************************
--
-- @title   Truth / Cell / Core
--
-- @file    /truth/cell/core/datapath.vhd
-- 
-- @about   Top-level datapath of autonomous computing cell
--
-- @author  Keun Soo Yim (yim2012@gmail.com)
--
--******************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library truth;
use truth_types.all;

entity datapath is
  PORT(
    so    : out port_sram_in;
    si    : in  port_sram_out;
  );
end datapath;

architecture struct of SRAM is
  type   RAMBlDOut_Type is array(2**(addr'length-9)-1 downto 0) of  std_logic_vector(dout'range);
  signal RAMBlDOut : RAMBlDOut_Type;

  signal web    : std_logic_vector(2**(addr'length-9)-1 downto 0);
  signal cp2n   : std_logic;

  signal gnd    : std_logic;
begin

  

  gnd <= '0';

  web_dcd: for i in web'range generate
    web(i) <= '1' when (we='1' and addr(addr'high downto 9)=i) else
              '0';
  end generate;

  ram_inst: for i in 0 to 2**(addr'length-9)-1 generate
    ram_byte: component RAMB4_S8 port map(
                                      DO   => RAMBlDOut(i)(7 downto 0),
                                      ADDR => addr(8 downto 0),
                                      DI   => din(7 downto 0),
                                      EN   => ce,
                                      CLK  => cp2,
                                      WE   => web(i),
                                      RST  => gnd
                                      );
  end generate;                  

  dout <= RAMBlDOut(CONV_INTEGER(addr(addr'high downto 9)));
end architecture struct;

