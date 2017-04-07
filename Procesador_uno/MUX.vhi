
-- VHDL Instantiation Created from source file MUX.vhd -- 12:45:56 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		crs2 : IN std_logic_vector(31 downto 0);
		SCUout : IN std_logic_vector(31 downto 0);
		i : IN std_logic;          
		MUXout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		crs2 => ,
		SCUout => ,
		i => ,
		MUXout => 
	);


