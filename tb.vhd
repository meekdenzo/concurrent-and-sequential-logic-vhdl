library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity function_f_tb is
end function_f_tb;

architecture Behavioral of function_f_tb is
    component function_f is
        Port ( A, B, C : in  STD_LOGIC;
                f : out  STD_LOGIC);
    end component;

    signal A, B, C, f : std_logic;

begin
    UUT: function_f port map (A => A, B => B, C => C, f => f);
    process
    begin
        A <= '0'; B <= '0'; C <= '1';
        wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0';
        wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1';
        wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0';
        wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1';
        wait for 10 ns;
        A <= '0'; B <= '0'; C <= '0';
        wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1';
        wait for 10 ns;
    end process;
end Behavioral;