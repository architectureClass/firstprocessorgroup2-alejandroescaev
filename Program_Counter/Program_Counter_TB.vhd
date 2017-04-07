LIBRARY ieee;
USE ieee.std_logic_1164.ALL;ENTITY Program_Counter_TB IS
END Program_Counter_TB;
 
ARCHITECTURE behavior OF Program_Counter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Program_Counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         addresin : IN  std_logic_vector(31 downto 0);
         addresout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal addresin : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal addresout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Program_Counter PORT MAP (
          clk => clk,
          rst => rst,
          addresin => addresin,
          addresout => addresout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		addresin <= "11110000010101011111000001010101";
		rst <= '0';
      wait for 100 ns;	
		
		addresin <= "11110000010101010001000001010101";
		rst <= '1';
      wait for 100 ns;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
