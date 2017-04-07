LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         CUout : IN  std_logic_vector(5 downto 0);
         Crs1 : IN  std_logic_vector(31 downto 0);
         MUXout : IN  std_logic_vector(31 downto 0);
         ALUout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CUout : std_logic_vector(5 downto 0) := (others => '0');
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal MUXout : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal ALUout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          CUout => CUout,
          Crs1 => Crs1,
          MUXout => MUXout,
          ALUout => ALUout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000000";
      wait for 100 ns;	
		
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000100";
		wait for 100 ns;		
		
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";	
		CUout <= "000001";
		wait for 100 ns;
				
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000101";
		wait for 100 ns;
				
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000010";
		wait for 100 ns;
				
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000110";
		wait for 100 ns;
				
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000011";
		wait for 100 ns;
				
		Crs1 <= "10101010101010101010101010101010";
		MUXout <= "01010101010101010101010101010101";
		CUout <= "000111";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
