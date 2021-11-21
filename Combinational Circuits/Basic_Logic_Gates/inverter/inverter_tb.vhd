library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter_tb is
end inverter_tb;

architecture tb_arch of inverter_tb is
    signal x, y : std_logic;
begin

    uut: entity work.inverter(Behavioral)
        port map(
            x => x,
            y => y);
            
            
    process begin
    
        -- Test Input 1
        x <= '1';
        wait for 100ns;
        --Test Input 2
        x <= '0';
        wait for 100ns;
        -- Test Input 3
        x <= '1';
        wait for 100ns;
        --Terminate Simulation
        assert false
        report "simulation completed"
        severity failure;
    
    end process;
      
end tb_arch;
