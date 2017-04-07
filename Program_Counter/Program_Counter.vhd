library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Program_Counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           addresin : in  STD_LOGIC_VECTOR (31 downto 0);
           addresout : out  STD_LOGIC_VECTOR (31 downto 0));
end Program_Counter;

architecture Behavioral of Program_Counter is

begin
	process(clk,rst,addresin)
		begin
			if(rst = '1') then
				addresout <= (others => '0');
			else
				if(rising_edge(clk)) then
					addresout <= addresin;
				end if;
			end if;
	end process;

end Behavioral;

