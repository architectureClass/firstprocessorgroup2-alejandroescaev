library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity ALU is
    Port ( CUout : in  STD_LOGIC_VECTOR (5 downto 0);--salida de la unidad de control
           Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);--Contenido del registro 1 
           MUXout : in  STD_LOGIC_VECTOR (31 downto 0);--salida del mux (el contenido del registro 2 o el imm)
           ALUout : out  STD_LOGIC_VECTOR (31 downto 0));--salida que se generara
end ALU;

architecture Behavioral of ALU is

begin
	process(CUout, Crs1, MUXout)
		begin
			case CUout is
				when "000000" => ALUout <= Crs1 + MUXout; -- ADD
				when "000100" => ALUout <= Crs1 - MUXout; -- SUB
				when "000001" => ALUout <= Crs1 and MUXout; -- AND
				when "000101" => ALUout <= Crs1 and not(MUXout); -- ANDN
				when "000010" => ALUout <= Crs1 or MUXout; -- OR
				when "000110" => ALUout <= Crs1 or not(MUXout); -- ORN
				when "000011" => ALUout <= Crs1 xor MUXout; -- XOR
				when "000111" => ALUout <= Crs1 xnor MUXout; -- XNOR
				when others => ALUout <= "00000000000000000000000000000000";
			end case;
		end process;
end Behavioral;

