library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SCUout : in  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC;
           MUXout : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
	process(i,crs2,SCUout)
		begin
			if(i = '0') then
				MUXout <= STD_LOGIC_VECTOR(crs2);
			else
				MUXout <= STD_LOGIC_VECTOR(SCUout);
			end if;
		end process;
end Behavioral;

