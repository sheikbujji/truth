--******************************************************************************
--
-- @title   Truth / Cell / Core
--
-- @file    /truth/cell/core/alu.vhd
-- 
-- @about   Integer ALU of autonomous computing cell
--
-- @author  Keun Soo Yim (yim2012@gmail.com)
--
--******************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity alu is port(
  op1   : in  std_logic_vector(31 downto 0);
  op2   : in  std_logic_vector(31 downto 0);
  opcode: in  truth_alu_opcode;
  dout  : out std_logic_vector(31 downto 0)
  );
end alu;

architecture rtl of alu is
  signal state : std_logic_vector(31 downto 0);
begin

  case opcode is
  when op_alu_add =>
    state := std_logic_vector(signed(op1) + signed(op2));
  when op_alu_sub =>
    state := std_logic_vector(signed(A) - signed(B));
  when op_alu_mul =>
  when op_alu_div =>
  when op_alu_mod =>
  when op_alu_neg =>
    state(30 downto 0) := op1(30 downto 0);
    state(31) := not op1(31);
  when op_alu_abs =>
    state(30 downto 0) := op1(30 downto 0);
    state(31) := '0';
  when op_alu_not =>
    state := not op1;
  when op_alu_and =>
    state := op1 and op2;
  when op_alu_or  =>
    state := op1 or op2;
  when op_alu_xor =>
    state := op1 xor op2;
  when op_alu_nor =>
    state := op1 nor op2;
  when op_alu_sli =>
    state(31 downto 1) := op1(30 downto 0);
    state(0) := op2(0);
  when op_alu_sri => 
    state(30 downto 0) := op1(31 downto 1);
    state(31) := op2(0);
  when alu_pass =>
    state := op1;
  when others =>
    state := (others => 'X');
  end case;

  process(clk)
    if clk='1' and clk'event then
    	dout <= state;
    end if;
  end process
end rtl;
