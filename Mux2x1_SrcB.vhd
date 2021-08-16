----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:46 11/06/2020 
-- Design Name: 
-- Module Name:    Mux2x1_SrcB - Behavioral 
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

entity Mux2x1_SrcB is
    Port ( Data_A : in  STD_LOGIC_VECTOR (31 downto 0);
           Data_B : in  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC;
           D_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux2x1_SrcB;

architecture Behavioral of Mux2x1_SrcB is

begin

	D_out <= Data_A when Sel = '0' else Data_B;

end Behavioral;

