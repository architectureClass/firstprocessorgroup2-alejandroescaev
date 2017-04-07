LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_TB IS
END MUX_TB;
 
ARCHITECTURE behavior OF MUX_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         crs2 : IN  std_logic_vector(31 downto 0);
         SCUout : IN  std_logic_vector(31 downto 0);
         i : IN  std_logic;
         MUXout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal SCUout : std_logic_vector(31 downto 0) := (others => '0');
   signal i : std_logic := '0';

 	--Outputs
   signal MUXout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          crs2 => crs2,
          SCUout => SCUout,
          i => i,
          MUXout => MUXout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		i <= '0';
      crs2 <= "00110011110001000110110011111111";
		SCUout <= "00110011110001000110110011000000";
		wait for 100 ns;
		
		i <= '1';
      crs2 <= "00110011110001000110110011111111";
		SCUout <= "00110011110001000110110011000000";
		wait for 100 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
