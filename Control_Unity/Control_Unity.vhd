library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unity is
    Port ( op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           CU_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Control_Unity;

architecture Behavioral of Control_Unity is

begin

	process(op3,op)
		begin
			if(op="10") then
				case op3 is
					when "000000" => CU_out <= "000000";--add
					when "000100" => CU_out <= "000100";--sub	
					when "000001" => CU_out <= "000001";--and
					when "000101" => CU_out <= "000101";--andn
					when "000010" => CU_out <= "000010";--or
					when "000110" => CU_out <= "000110";--orn
					when "000011" => CU_out <= "000011";--xor	
					when "000111" => CU_out <= "000111";--xnor
					when others => CU_out <= "111111";
				end case;
			end if;
	end process;
			
end Behavioral;

