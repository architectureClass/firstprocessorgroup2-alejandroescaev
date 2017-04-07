
-- VHDL Instantiation Created from source file InstructionMemory_p1.vhd -- 12:45:30 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT InstructionMemory_p1
	PORT(
		rst : IN std_logic;
		pc : IN std_logic_vector(31 downto 0);          
		instructionout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_InstructionMemory_p1: InstructionMemory_p1 PORT MAP(
		rst => ,
		pc => ,
		instructionout => 
	);


