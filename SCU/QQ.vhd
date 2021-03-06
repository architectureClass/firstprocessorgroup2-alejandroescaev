--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:37:15 04/06/2017
-- Design Name:   
-- Module Name:   C:/Users/FAMILIA-ESCOBAR/Documents/Alejandro docs/1UTP/Arquitectura de computadores/Project1/SCU/QQ.vhd
-- Project Name:  SCU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SCU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY QQ IS
END QQ;
 
ARCHITECTURE behavior OF QQ IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SCU
    PORT(
         SCUin : IN  std_logic_vector(12 downto 0);
         SCUout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SCUin : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal SCUout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SCU PORT MAP (
          SCUin => SCUin,
          SCUout => SCUout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		SCUin <= "1111111111111";
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
