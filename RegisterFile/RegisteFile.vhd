library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegisteFile is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           rst : in  STD_LOGIC;
           DtW : in  STD_LOGIC_VECTOR (31 downto 0);
           Crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisteFile;

architecture Behavioral of RegisteFile is

type ram is array (39 downto 0) of STD_LOGIC_VECTOR (31 downto 0);
signal registros : ram := (others => "00000000000000000000000000000000");

begin
	process(rs1, rs2, rd, rst, DtW)
		begin
			if (rst='1') then
				registros <= (others => "00000000000000000000000000000000");
				Crs1 <= (others => '0');
				Crs2 <= (others => '0');
			else
				if (rd /= "00000") then
				registros(conv_integer(rd)) <= DtW;
				end if;
				Crs1 <= registros(conv_integer(rs1));
				Crs2 <= registros(conv_integer(rs2));
			end if;
	end process;


end Behavioral;

