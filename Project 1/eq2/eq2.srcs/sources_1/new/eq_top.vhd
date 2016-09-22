
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eq_top is
    port(
        sw  : in std_logic_vector(3 downto 0);
        led : out std_logic_vector (0 downto 0)
    );
end eq_top;

architecture Behavioral of eq_top is

begin
    eq2_unit: entity work.eq2(Behavioral)
        port map(
            a => sw(3 downto 2),
            b => sw(1 downto 0),
            aeqb => led(0)
        );

end Behavioral;
