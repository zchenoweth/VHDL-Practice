library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is 
	port(
		A, B : in std_logic;
		Y    : out std_logic);
end nand_gate;

architecture Structural of nand_gate is

    component and_gate is                                       --This line instantiates the AND gate.
	   port(
		  A, B : in std_logic;
		  Y    : out std_logic);
    end component;
    
    component inverter is                                       --This line instantiates the inverter component. 
	   port(
		  x    : in std_logic;
		  y    : out std_logic);
    end component;
    
    signal and_out : std_logic;
    
begin

    U1 : and_gate port map ( A => A, B => B, Y => and_out);     --This line defines the port mapping for the AND gate.
    U2 : inverter port map ( x => and_out, y => Y);             --This line defines the port mapping for the INVERTER.

end Structural;
