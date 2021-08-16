--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:05:20 11/02/2020
-- Design Name:   
-- Module Name:   D:/Facultad/3ro/Organizacion de las computadoras/TP2/TPI2/tb_TOP_RV32I.vhd
-- Project Name:  TPI2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP_RV32I
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
 
ENTITY tb_TOP_RV32I IS
END tb_TOP_RV32I;
 
ARCHITECTURE behavior OF tb_TOP_RV32I IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP_RV32I
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Leds : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Leds : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_RV32I PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Leds => Leds
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	


      -- insert stimulus here 
	
		Reset <= '1';
		wait for 50 ns;
		Reset <= '0';
		
      wait;
   end process;

END;
