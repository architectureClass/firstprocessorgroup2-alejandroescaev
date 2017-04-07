
-- VHDL Instantiation Created from source file Control_Unity.vhd -- 12:44:49 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_Unity
	PORT(
		op3 : IN std_logic_vector(5 downto 0);
		op : IN std_logic_vector(1 downto 0);          
		CU_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Control_Unity: Control_Unity PORT MAP(
		op3 => ,
		op => ,
		CU_out => 
	);


