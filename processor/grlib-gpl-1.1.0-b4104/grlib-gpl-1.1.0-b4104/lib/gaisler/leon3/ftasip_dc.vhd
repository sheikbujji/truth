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
-- Entity: 	compe
-- File:	delayedcheck.vhd
-- Author: Keun Soo Yim	 
-- Description:	Compare and Exception Instr.
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library techmap;
use techmap.gencomp.all;

library grlib;
use grlib.stdlib.all;

library gaisler;
use gaisler.leon3.all;
use gaisler.ftasip.all;


entity ftasip_dc is
    generic (
        pclow  : integer range 0 to 2  := 2;
        id : integer range 0 to 3 := 0
    );
    port (
        rstn : in  std_ulogic;
        clk  : in  std_ulogic;
        i : in  ftasip_dc_in_type;
        o : out ftasip_dc_out_type
    );
end;

architecture rtl of ftasip_dc is
 
  type dc_type is record
    enable : std_logic;
    reg_ta: pctype;
--    reg_ta_int: integer;
    reg_st: std_logic_vector(2 downto 0);
    reg_value: std_logic_vector(31 downto 0);
  end record;

  signal rin, r: dc_type;

  signal check : std_logic;
begin

  dc_proc: process(r,check,i,i.inst, i.pc, i.value,rstn)
    variable v: dc_type;
    variable a,b,c: integer;
  begin
    v := r;

    if check = '1' then
      v.enable := '0';
    end if;
  
    if i.inst(31 downto 30) = "10" and i.inst(24 downto 19) = "110110" and
       i.inst(11 downto 8) = "0000" and
       i.inst(29 downto 28) = std_logic_vector(to_unsigned(id,2)) then
      -- DC instruction
      
      v.enable := '1';
      a := to_integer(unsigned(i.pc));
      b := to_integer(unsigned(i.inst(7 downto 0)));
      v.reg_ta := conv_std_logic_vector(a + b,32-pclow);
      v.reg_st := i.inst(27 downto 25);
      v.reg_value := i.asr1; --i.value; -- = 
      -- 
    end if;

    if rstn = '0' then
      v.enable := '0';
      v.reg_ta := (others => '0');
      v.reg_st := (others => '0');
      v.reg_value := (others => '0');
    end if;
    
    rin <= v;
  end process;

  dc_reg: process(clk)
  begin
    if rising_edge(clk) then
      r <= rin;
    end if;
  end process;

  dc_mon: process(r,i,i.fpc,i.dpc, i.apc,i.epc,i.mpc,rstn)
    variable temp : std_logic;
    variable check_temp: std_logic;
  begin
    temp := '0';
    check_temp := '0';
    if r.enable = '1' then
      if r.reg_st = "000" then
--        pc shall be a counter
        if r.reg_ta = i.fpc then
          if r.reg_value /= i.fpc then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "001" then
        if r.reg_ta = i.dpc then
          if r.reg_value /= i.dinst then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "010" then
        if r.reg_ta = i.apc then
          if r.reg_value /= i.asr1 then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "011" then
        if r.reg_ta = i.apc then
          if r.reg_value /= i.asr2 then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "100" then
        if r.reg_ta = i.epc then
          if r.reg_value /= i.ealuo then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "101" then
        if r.reg_ta = i.mpc then
          if r.reg_value /= i.maddr then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "110" then
        if r.reg_ta = i.mpc then
          if r.reg_value /= i.mdataw then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
      elsif  r.reg_st = "111" then
        if r.reg_ta = i.mpc then
          if r.reg_value /= i.mdatar then
            temp := '1';
          end if;
          check_temp := '1';
        end if;
        --if r.reg_ta = i.wpc then
--          if r.reg_value = i.wdr then
--            o.error <= '0';
--          else
--            o.error <= '1';
--          end if;
--        end if;
      end if;
    end if;

      if rstn = '0' then
        temp := '0';
        check_temp := '0';
      end if;
      o.error <= temp;
      check <= check_temp;

  end process;
end;
