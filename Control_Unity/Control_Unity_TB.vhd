LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Control_Unity_TB IS
END Control_Unity_TB;
 
ARCHITECTURE behavior OF Control_Unity_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control_Unity
    PORT(
         op3 : IN  std_logic_vector(5 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         CU_out : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal CU_out : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control_Unity PORT MAP (
          op3 => op3,
          op => op,
          CU_out => CU_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		op <= "10";
		op3 <= "000100";
      wait for 100 ns;	
		
		op <= "10";
		op3 <= "000101";
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
