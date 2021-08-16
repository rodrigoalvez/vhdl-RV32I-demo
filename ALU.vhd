----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:51 10/31/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( SrcA : in  STD_LOGIC_VECTOR (31 downto 0);
           SrcB : in  STD_LOGIC_VECTOR (31 downto 0);
           Alu_Op : in  STD_LOGIC_VECTOR (2 downto 0);
           Zero : out  STD_LOGIC;
           Alu_R : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is
	signal ALU_aux : std_logic_vector(31 downto 0);
begin
	
	process(Alu_Op, SrcA, SrcB) begin
		case (Alu_Op) is 
			when "000" =>
				ALU_aux <= SrcA AND SrcB;
			
			when "001" =>
				ALU_aux <= SrcA OR SrcB;
			
			when "010" =>
				ALU_aux <= std_logic_vector(signed(SrcA) + signed(SrcB));
			
			when "110" =>
				ALU_aux <= std_logic_vector(signed(SrcA) - signed(SrcB));
			
			when "111" =>
				if (SrcA < SrcB) then
					ALU_aux <= X"00000001";
				else
					ALU_aux <= X"00000000";
				end if;
			
			when others =>
				ALU_aux <= X"00000000";
		
		end case;
	end process;
	
	Zero <= '1' when signed(ALU_aux) = 0 else '0';
	Alu_R <= ALU_aux;

end Behavioral;

