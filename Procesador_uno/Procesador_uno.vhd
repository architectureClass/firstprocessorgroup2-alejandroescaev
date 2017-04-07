library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Procesador_uno is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           ALUout : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador_uno;

architecture Behavioral of Procesador_uno is

COMPONENT Adder_p1
PORT(
	pc : IN std_logic_vector(31 downto 0);          
	addout : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT ALU
PORT(
	CUout : IN std_logic_vector(5 downto 0);
	Crs1 : IN std_logic_vector(31 downto 0);
	MUXout : IN std_logic_vector(31 downto 0);          
	ALUout : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT Control_Unity
PORT(
	op3 : IN std_logic_vector(5 downto 0);
	op : IN std_logic_vector(1 downto 0);          
	CU_out : OUT std_logic_vector(5 downto 0)
	);
END COMPONENT;

COMPONENT InstructionMemory_p1
PORT(
	rst : IN std_logic;
	pc : IN std_logic_vector(31 downto 0);          
	instructionout : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT MUX
PORT(
	crs2 : IN std_logic_vector(31 downto 0);
	SCUout : IN std_logic_vector(31 downto 0);
	i : IN std_logic;          
	MUXout : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT Program_Counter
PORT(
	clk : IN std_logic;
	rst : IN std_logic;
	addresin : IN std_logic_vector(31 downto 0);          
	addresout : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

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

COMPONENT SCU
PORT(
	SCUin : IN std_logic_vector(12 downto 0);          
	SCUout : OUT std_logic_vector(31 downto 0)
	);
END COMPONENT;

signal Npcout,pcout,outadd,imout,RFout1,RFout2,SEUout,outMUX,ALUresult : STD_LOGIC_VECTOR(31 downto 0):=(others => '0');
signal ALUin : STD_LOGIC_VECTOR(5 downto 0):=(others => '0');

begin

Inst_Adder_p1: Adder_p1 PORT MAP(
	pc => Npcout,
	addout => outadd
);

Inst_Next_Program_Counter: Program_Counter PORT MAP(
	clk => clk,
	rst => rst,
	addresin => outadd,
	addresout => Npcout
);

Inst_Program_Counter: Program_Counter PORT MAP(
	clk => clk,
	rst => rst,
	addresin => Npcout,
	addresout => pcout
);

Inst_InstructionMemory_p1: InstructionMemory_p1 PORT MAP(
	rst => rst,
	pc => pcout,
	instructionout => imout
);

Inst_RegisteFile: RegisteFile PORT MAP(
	rs1 => imout(18 downto 14),
	rs2 => imout(4 downto 0),
	rd => imout(29 downto 25),
	rst => rst,
	DtW => ALUresult,
	Crs1 => RFout1,
	Crs2 => RFout2
);

Inst_Control_Unity: Control_Unity PORT MAP(
	op3 => imout(24 downto 19),
	op => imout(31 downto 30),
	CU_out => ALUin
);

Inst_SCU: SCU PORT MAP(
	SCUin => imout(12 downto 0),
	SCUout => SEUout
);

Inst_MUX: MUX PORT MAP(
	crs2 => RFout2,
	SCUout => SEUout,
	i => imout(13),
	MUXout => outMUX
);

Inst_ALU: ALU PORT MAP(
	CUout => ALUin,
	Crs1 => RFout1,
	MUXout => outMUX,
	ALUout => ALUresult
);

ALUout <= ALUresult;

end Behavioral;

