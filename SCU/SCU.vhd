library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SCU is
    Port ( SCUin : in  STD_LOGIC_VECTOR (12 downto 0);
           SCUout : out  STD_LOGIC_VECTOR (31 downto 0));
end SCU;

architecture Behavioral of SCU is

signal aux : std_logic_vector(18 downto 0) := (others => '0');

begin
	aux <= "1111111111111111111";
	process (SCUin) 
		begin
			if (SCUin (12) = '0') then
				SCUout <= std_logic_vector("00000000000000000000000000000000" + UNSIGNED(SCUin));
			else
				SCUout <= aux & SCUin;
			end if;
		end process;

end Behavioral;

