----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:18:45 11/15/2020 
-- Design Name: 
-- Module Name:    Mux_Jump - Behavioral 
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

entity Mux_Jump is
    Port ( Data_A : in  STD_LOGIC_VECTOR (5 downto 0); -- pcplus4
           Data_B : in  STD_LOGIC_VECTOR (5 downto 0); -- jump
			  Data_C : in  STD_LOGIC_VECTOR (5 downto 0); -- Unidad_ME
			  Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           D_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Mux_Jump;

architecture Behavioral of Mux_Jump is

begin
	
	process(Data_A, Data_B, Data_C, Sel) begin
	
		case (Sel) is 
			when "00" =>
				D_out <= Data_C;
			when "01" =>
				D_out <= Data_B;
			when "10" =>
				D_out <= Data_A;
			when "11" =>
				D_out <= "000000";
			when others =>
				D_out <= Data_A;
		end case;

	end process;
	
end Behavioral;

