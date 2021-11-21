library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter is
    Port ( X : in std_logic;                -- defines an input port of type STD_LOGIC meaning it takes in either a 1 or 0
           Y : out std_logic);              -- defines an output port of type STD_LOGIC meaning it takes in either a 1 or 0
end inverter;

architecture Behavioral of inverter is
                                            -- This is where you would declare signals and other necessary variables for the architecture
begin

    Y <= not X;                             -- Y is being assigned the inverted value of X

end Behavioral;
