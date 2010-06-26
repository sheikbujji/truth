
library ieee;
use ieee.std_logic_1164.all;

package truth_types is

  constant DELAY_REG32 : time := 100 ns;

  constant op_alu_add      : truth_alu_opcode := "0000000";
  constant op_alu_sub      : truth_alu_opcode := "0000001";
  constant op_alu_mul      : truth_alu_opcode := "0000010";
  constant op_alu_div      : truth_alu_opcode := "0000011";
  constant op_alu_mod      : truth_alu_opcode := "0000100";
  constant op_alu_neg      : truth_alu_opcode := "0000101";
  constant op_alu_abs      : truth_alu_opcode := "0000110";
  constant op_alu_not      : truth_alu_opcode := "0000111";
  constant op_alu_and      : truth_alu_opcode := "0001000";
  constant op_alu_or       : truth_alu_opcode := "0001001";
  constant op_alu_xor      : truth_alu_opcode := "0001010";
  constant op_alu_nor      : truth_alu_opcode := "0001011";
  constant op_alu_sli      : truth_alu_opcode := "0001100";
  constant op_alu_sri      : truth_alu_opcode := "0001101";

  -- type 0
  constant op_add      : truth_opcode := "0000000";
  constant op_sub      : truth_opcode := "0000001";
  constant op_mul      : truth_opcode := "0000010";
  constant op_div      : truth_opcode := "0000011";
  constant op_mod      : truth_opcode := "0000100";
  constant op_neg      : truth_opcode := "0000101";
  constant op_abs      : truth_opcode := "0000110";
  constant op_not      : truth_opcode := "0000111";
  constant op_and      : truth_opcode := "0001000";
  constant op_or       : truth_opcode := "0001001";
  constant op_xor      : truth_opcode := "0001010";
  constant op_nor      : truth_opcode := "0001011";
  constant op_sli      : truth_opcode := "0001100";
  constant op_sri      : truth_opcode := "0001101";
  constant op_mov      : truth_opcode := "0001110";
  constant op_swap     : truth_opcode := "0001111";

  constant op_cmp_eq   : truth_opcode := "0010000";
  constant op_cmp_ne   : truth_opcode := "0010001";
  constant op_cmp_lt   : truth_opcode := "0010010";
  constant op_cmp_gt   : truth_opcode := "0010011";
  constant op_cmp_le   : truth_opcode := "0010100";
  constant op_cmp_ge   : truth_opcode := "0010101";

  -- type 1
  constant op_load     : truth_opcode := "0100000";
  constant op_store    : truth_opcode := "0101000";

  constant op_pop      : truth_opcode := "0110000";
  constant op_push     : truth_opcode := "0111000";

  -- type 2
  constant op_br       : truth_opcode := "1000000";
  constant op_br_true  : truth_opcode := "1000100";
  constant op_br_false : truth_opcode := "1001000";
  constant op_ret      : truth_opcode := "1001100";
  constant op_jmp      : truth_opcode := "1010000";

  constant op_trap     : truth_opcode := "1010100";
  constant op_iret     : truth_opcode := "1011000";


  type port_sram_in is record
    addr:    std_logic_vector(15 downto 0);
    din:     std_logic_vector(31 downto 0);
    ce:      std_logic;
    we:      std_logic;
    cp2:     std_logic;
  end record;

  type port_sram_out is record
    dout:    std_logic_vector(31 downto 0);
  end record;

end truth_types;
