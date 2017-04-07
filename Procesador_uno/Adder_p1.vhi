
-- VHDL Instantiation Created from source file Adder_p1.vhd -- 12:42:51 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Adder_p1
	PORT(
		pc : IN std_logic_vector(31 downto 0);          
		addout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Adder_p1: Adder_p1 PORT MAP(
		pc => ,
		addout => 
	);


