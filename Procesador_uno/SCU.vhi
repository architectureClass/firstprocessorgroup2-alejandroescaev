
-- VHDL Instantiation Created from source file SCU.vhd -- 12:47:34 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SCU
	PORT(
		SCUin : IN std_logic_vector(12 downto 0);          
		SCUout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SCU: SCU PORT MAP(
		SCUin => ,
		SCUout => 
	);


