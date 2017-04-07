
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Adder_p1_TB IS
END Adder_p1_TB;
 
ARCHITECTURE behavior OF Adder_p1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder_p1
    PORT(
         pc : IN  std_logic_vector(31 downto 0);
         addout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pc : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal addout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder_p1 PORT MAP (
          pc => pc,
          addout => addout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		pc<="11110000110010101100111100011000";
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
