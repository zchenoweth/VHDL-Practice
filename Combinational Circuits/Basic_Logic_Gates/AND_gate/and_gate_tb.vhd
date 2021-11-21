library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_tb is
end and_gate_tb;

architecture tb_arch of and_gate_tb is
    signal A , B , Y : std_logic;
begin

    uut: entity work.and_gate(Behavioral)
        port map(
            A => A,
            B => B,
            Y => Y);

    process begin
        
        -- Test Input 1
        A <= '0';
        B <= '0';
        wait for 100ns;
        -- Test Input 2
        A <= '0';
        B <= '1';
        wait for 100ns;
        -- Test Input 3
        A <= '1';
        B <= '0';        
        wait for 100ns;
        -- Test Input 4
        A <= '1';
        B <= '1';        
        wait for 100ns;
        -- Terminate Simulation
        assert false
        report "simulation complete"
        severity failure;
        
    end process;

end tb_arch;
