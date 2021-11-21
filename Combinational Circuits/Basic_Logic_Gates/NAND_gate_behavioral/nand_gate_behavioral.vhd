library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    port(
        A , B : in std_logic;
        Y     : out std_logic);
end nand_gate;


architecture Behavioral of nand_gate is

begin

    Y <= A nand B;

end Behavioral;
