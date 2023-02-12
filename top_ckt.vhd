library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity function_f is
    Port ( A, B, C : in  STD_LOGIC;
           f : out  STD_LOGIC);
end function_f;

architecture Behavioral of function_f is
begin
    -- concurrent statement
    CSA: process (A, B, C)
    begin
        -- sequential statements
        if (A = '0' and B = '0' and C = '1') then
            f <= '1';
        elsif (A = '1' and B = '0' and C = '0') then
            f <= '1';
        else
            f <= '0';
        end if;
    end process CSA;
end Behavioral;
