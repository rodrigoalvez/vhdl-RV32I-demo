----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:55:47 10/31/2020 
-- Design Name: 
-- Module Name:    Sumador_PC_4 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sumador_PC_4 is
    Port ( Op1 : in  STD_LOGIC_VECTOR (5 downto 0);
           Op2 : in  STD_LOGIC_VECTOR (5 downto 0);
           PC_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Sumador_PC_4;

architecture Behavioral of Sumador_PC_4 is

begin

	PC_out <= std_logic_vector(signed(op1) + signed(op2));

end Behavioral;

