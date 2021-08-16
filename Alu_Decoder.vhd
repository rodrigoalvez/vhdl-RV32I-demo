----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:40 11/06/2020 
-- Design Name: 
-- Module Name:    Alu_Decoder - Behavioral 
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

entity Alu_Decoder is
    Port ( Funct3 : in  STD_LOGIC_VECTOR (2 downto 0);
           Funct7_5 : in  STD_LOGIC; --Solo hace la diferencia el el bit 5 de funct7
           Alu_Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Alu_Control : out  STD_LOGIC_VECTOR (2 downto 0));
end Alu_Decoder;

architecture Behavioral of Alu_Decoder is

begin
	process(Alu_Op,Funct3,Funct7_5)
	begin
	
		case (Alu_Op) is 
			 when "00" => --Tipo L, S e I (addi) 
				  Alu_Control <= "010"; --add

			 when "01" => --Tipo B
				  Alu_Control <= "110"; --sub

			 when "10" => --Tipo R
				  case (Funct3) is
						when "000" => 
						if (Funct7_5 = '1') then
								Alu_Control <= "110"; --sub
							else 
								Alu_Control <= "010"; --add
							end if;
						when "010" =>
							Alu_Control <= "111"; --slt
						when "110" =>
							Alu_Control <= "001"; --or
						when "111" =>
							Alu_Control<= "000"; --and
						when others =>
							Alu_Control <= "011";
				  end case;

			 when others =>
				  Alu_Control <= "011";
		end case;
	end process;
		
end Behavioral;

