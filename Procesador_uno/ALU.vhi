
-- VHDL Instantiation Created from source file ALU.vhd -- 12:44:03 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		CUout : IN std_logic_vector(5 downto 0);
		Crs1 : IN std_logic_vector(31 downto 0);
		MUXout : IN std_logic_vector(31 downto 0);          
		ALUout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		CUout => ,
		Crs1 => ,
		MUXout => ,
		ALUout => 
	);


