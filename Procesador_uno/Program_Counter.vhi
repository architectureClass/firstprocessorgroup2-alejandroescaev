
-- VHDL Instantiation Created from source file Program_Counter.vhd -- 12:46:29 04/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Program_Counter
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		addresin : IN std_logic_vector(31 downto 0);          
		addresout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Program_Counter: Program_Counter PORT MAP(
		clk => ,
		rst => ,
		addresin => ,
		addresout => 
	);


