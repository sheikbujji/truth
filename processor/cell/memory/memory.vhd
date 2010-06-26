
library ieee;
use ieee.std_logic_1164.all;

package memory is
  component SRAM is port(
    addr:    in  std_logic_vector(15 downto 0);
    din:     in  std_logic_vector(31 downto 0);
    dout:    out std_logic_vector(31 downto 0);
    ce:      in  std_logic;
    we:      in  std_logic;
    cp2:     in  std_logic;
    );
  end component;
	
  component DRAM is port(
    addr:    in  std_logic_vector(15 downto 0);
    din:     in  std_logic_vector(31 downto 0);
    dout:    out std_logic_vector(31 downto 0);
    read_l:  in  std_logic;
    write_l: in  std_logic;
    reset_l: in  std_logic;
    resp_h:  in  std_logic;
    );
  end component;
end memory;

