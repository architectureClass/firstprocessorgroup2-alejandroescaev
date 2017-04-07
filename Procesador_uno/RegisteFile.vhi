
-- VHDL Instantiation Created from source file RegisteFile.vhd -- 12:46:58 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RegisteFile
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		rst : IN std_logic;
		DtW : IN std_logic_vector(31 downto 0);          
		Crs1 : OUT std_logic_vector(31 downto 0);
		Crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RegisteFile: RegisteFile PORT MAP(
		rs1 => ,
		rs2 => ,
		rd => ,
		rst => ,
		DtW => ,
		Crs1 => ,
		Crs2 => 
	);


