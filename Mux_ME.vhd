----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:19:48 11/28/2020 
-- Design Name: 
-- Module Name:    Mux_ME - Behavioral 
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

entity Mux_ME is
    Port ( Dir_A : in  STD_LOGIC_VECTOR (5 downto 0);
           Dir_B : in  STD_LOGIC_VECTOR (5 downto 0);
           Sel : in  STD_LOGIC;
           Dir_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Mux_ME;

architecture Behavioral of Mux_ME is

begin
	
	Dir_out <= Dir_A when Sel = '1' else Dir_B;

end Behavioral;

