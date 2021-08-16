----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:58 11/15/2020 
-- Design Name: 
-- Module Name:    Mux_JR - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_JR is
    Port ( Data_A : in  STD_LOGIC_VECTOR (5 downto 0);
           Data_B : in  STD_LOGIC_VECTOR (5 downto 0);
           Sel : in  STD_LOGIC;
           D_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Mux_JR;

architecture Behavioral of Mux_JR is

begin
	
	D_out <= Data_A when Sel = '1' else Data_B;

end Behavioral;

