library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    port(
        A , B : in std_logic;
        Y     : out std_logic);
end or_gate;


architecture Behavioral of or_gate is

begin

    Y <= A or B;

end Behavioral;