----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:09 11/08/2020 
-- Design Name: 
-- Module Name:    Sumador_Branch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_Jump is
    Port ( Op1 : in  STD_LOGIC_VECTOR (5 downto 0);
           Op2 : in  STD_LOGIC_VECTOR (5 downto 0);
           PCJump : out  STD_LOGIC_VECTOR (5 downto 0));
end PC_Jump;

architecture Behavioral of PC_Jump is

begin
	
	PCJump <= std_logic_vector(signed(op1) + signed(op2));
	
end Behavioral;

