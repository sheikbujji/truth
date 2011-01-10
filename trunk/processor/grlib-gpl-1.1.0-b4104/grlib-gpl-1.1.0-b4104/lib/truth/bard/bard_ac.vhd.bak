------------------------------------------------------------------------------
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
-----------------------------------------------------------------------------
-- Entity: bard_ac
-- File:	bard_ac.vhd
-- Author: Keun Soo Yim	 
-- Description:	Address Conversion Instruction in Bard
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library truth;
use truth.bard.all;

library techmap;
use techmap.gencomp.all;

library grlib;
use grlib.stdlib.all;

library gaisler;
use gaisler.leon3.all;

entity bard_ac is
    generic (
        pclow  : integer range 0 to 2  := 2
    );
    port (
        rstn : in  std_ulogic;
        clk  : in  std_ulogic;
        i : in  bard_ac_in_type;
        o : out bard_ac_out_type
    );
end;

architecture rtl of bard_ac is
begin

  dc_proc: process(i,rstn)
    variable addto: std_logic_vector(31 downto 0);
    variable shiftright: integer;
    variable temp: std_logic_vector(31 downto 0);
  begin
    if i.inst(31 downto 30) = "10" and i.inst(24 downto 19) = "110110" and
       i.inst(12 downto 8) = "00001" then
      -- AC instruction
      
      --tbl_base := X"40000000";
      --src_base := X"20000000";
      --addto := tbl_base - (src_base >> SRL);
      if i.inst(7 downto 5) = "000" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "001" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "010" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "011" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "100" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "101" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "110" then
        shiftright := 3;
        addto := X"40020000";
      elsif i.inst(7 downto 5) = "111" then
        shiftright := 3;
        addto := X"40020000";
      end if;
      
      -- right shift logical by srl
      if shiftright = 0 then
        temp(31 downto 0) := i.sr1(31 downto 0);
      elsif shiftright = 1 then
        temp(30 downto 0) := i.sr1(31 downto 1);
        temp(31 downto 31) := (others => '0');
      elsif shiftright = 2 then
        temp(29 downto 0) := i.sr1(31 downto 2);
        temp(31 downto 30) := (others => '0');
      elsif shiftright = 3 then
        temp(28 downto 0) := i.sr1(31 downto 3);
        temp(31 downto 29) := (others => '0');
      elsif shiftright = 4 then
        temp(27 downto 0) := i.sr1(31 downto 4);
        temp(31 downto 28) := (others => '0');
      elsif shiftright = 5 then
        temp(26 downto 0) := i.sr1(31 downto 5);
        temp(31 downto 27) := (others => '0');
      elsif shiftright = 6 then
        temp(25 downto 0) := i.sr1(31 downto 6);
        temp(31 downto 26) := (others => '0');
      elsif shiftright = 7 then
        temp(24 downto 0) := i.sr1(31 downto 7);
        temp(31 downto 25) := (others => '0');
      end if;
      -- addition
      o.dr <= conv_std_logic_vector(to_integer(unsigned(temp)) + to_integer(unsigned(addto)), 32);
      o.enable <= '1';
    else
      o.enable <= '0';
    end if;
  end process;

end;
