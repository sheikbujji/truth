--******************************************************************************
--
-- @title   Truth / Cell / Core / Register
--
-- @file    /truth/cell/core/reg32.vhd
-- 
-- @about   A register for autonomous computing cell
--
-- @author  Keun Soo Yim (yim2012@gmail.com)
--
--******************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library truth;
use truth_types.all;

entity reg32 is
  port(
    reset_l   : in  std_logic;
    clk       : in  std_logic;
    en        : in  std_logic;
    din       : in  std_logic_vector(31 downto 0);
    dout      : out std_logic_vector(31 downto 0)
  );
end reg32;

architecture struct of reg32 is
  signal state : std_logic_vector(31 downto 0);
begin

  comp: process(reset_l, en, din)
  begin
    if reset_l = '0' then
      state := (others => '0');
    elsif en = '1' then
      state := din;
    end if;
  end process reg;

  reg: process(clk)
  begin
    if clk = '0' and clk'event then
      dout <= state;
    end if;
  end process;

end architecture struct;

