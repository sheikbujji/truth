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

entity DRAM is
  PORT(
    addr:    in  std_logic_vector(15 downto 0);
    din:     in  std_logic_vector(31 downto 0);
    dout:    out std_logic_vector(31 downto 0);
    read_l:  in  std_logic;
    write_l: in  std_logic;
    reset_l: in  std_logic;
    resp_h:  in  std_logic
  );
end DRAM;

architecture struct of DRAM is
begin
  dram_proc : process(reset_l, read_l, write_l)
    type memory_arrray is array (0 to 8192) of _t_byte;
    variable mem: memory_array;
    variable int_addr: integer;
  begin
    int_addr := to_integer(unsigned(addr(12 downto 4)) * 16);
    
    if reset_l = '0' then
      resp_h <= '0';
    else
      if ((int_addr >= 0) and (int_addr < 8192)) then

        if read_l = '0' and write_l = '1' then
          dataout( 7 downto  0) <= mem(int_addr) after 500 ns;
          dataout(15 downto  8) <= mem(int_addr + 1) after 500 ns;
          dataout(23 downto 16) <= mem(int_addr + 2) after 500 ns;
          dataout(31 downto 24) <= mem(int_addr + 3) after 500 ns;
        elsif (write_l = '0' and read_l = '1') then
          mem(int_addr)     := datain( 7 downto  0);
          mem(int_addr + 1) := datain(15 downto  8);
          mem(int_addr + 2) := datain(23 downto 16);
          mem(int_addr + 3) := datain(31 downto 24);
         
          resp_h <= '1' after 500 ns, '0' after 500 + CLOCK ns;
        else
          assert false
            report "memory write"
            severity note;
        end if;
      else
        assert false
          report "invalid address"
          severity note;
      end if;
    end if;
  end process dram_proc;
end architecture struct;

