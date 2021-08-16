----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:44 11/06/2020 
-- Design Name: 
-- Module Name:    Mux2x1_Data - Behavioral 
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

entity Mux2x1_Data is
    Port ( Data_A : in  STD_LOGIC_VECTOR (31 downto 0);
           Data_B : in  STD_LOGIC_VECTOR (31 downto 0);
			  Data_C : in  STD_LOGIC_VECTOR (31 downto 0); --Generador de Inmediatos
			  Data_D : in  STD_LOGIC_VECTOR (5 downto 0); --PC Plus 4
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           D_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux2x1_Data;

architecture Behavioral of Mux2x1_Data is

begin

	
	process(Sel,Data_A,Data_B,Data_C)
	begin
	
	   case (Sel) is 
			when "00" =>
				D_out <= Data_B;
			when "01" =>
				D_out <= Data_A;
			when "10" =>
				D_out <= Data_C;
			when "11" =>
				D_out <= X"000000" & "00" & Data_D;
			when others =>
				D_out <= Data_B;
		end case;
	
	end process;

end Behavioral;

