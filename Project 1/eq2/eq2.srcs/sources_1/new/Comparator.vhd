----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2016 02:06:02 PM
-- Design Name: 
-- Module Name: Comparator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Comparator is
    port(
        i0, i1 : in std_logic;
        eq     : out std_logic
    );
end Comparator;

architecture Behavioral of Comparator is
    signal p0, p1: std_logic;
begin
    --sum of two product terms
    eq <= p0 or p1;
    --product terms
    p0 <= (not i0) and (not i1);
    p1 <= i0 and i1;

end Behavioral;
