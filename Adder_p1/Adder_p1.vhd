library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder_p1 is
    Port ( pc : in  STD_LOGIC_VECTOR (31 downto 0);
           addout : out  STD_LOGIC_VECTOR (31 downto 0));
end Adder_p1;

architecture Behavioral of Adder_p1 is

begin
	addout<=STD_LOGIC_VECTOR(unsigned(pc)+1);
end Behavioral;

