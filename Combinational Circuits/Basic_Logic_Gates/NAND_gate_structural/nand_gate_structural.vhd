library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is 
	port(
		A, B : in std_logic;
		Y    : out std_logic);
end nand_gate;

architecture Structural of nand_gate is
    signal and_out : std_logic;
begin

and_gate: entity work.and_gate(Behavioral)
	port map(
		A => A,
		B => B,
		Y => and_out);

inv: entity work.inverter(Behavioral)
	port map(
		x => and_out,
		y => Y);


end Structural;
