
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eq2 is
    port(
        a, b : in std_logic_vector(1 downto 0);
        aeqb : out std_logic
    );
end eq2;

architecture Behavioral of eq2 is
    signal e0, e1: std_logic;
 
begin
    eq_bit0_unit: entity work.Comparator(Behavioral)
        port map(
            i0 => a(0),
            i1 => b(0),
            eq => e0
        );
    eq_bit1_unit: entity work.Comparator(Behavioral)
    port map(
        i0 => a(1),
        i1 => b(1),
        eq => e1
    );
    aeqb <= e0 and e1;
end Behavioral;
