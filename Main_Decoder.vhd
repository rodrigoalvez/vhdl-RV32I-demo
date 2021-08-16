----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:44 11/06/2020 
-- Design Name: 
-- Module Name:    Main_Decoder - Behavioral 
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

entity Main_Decoder is
    Port ( Op : in  STD_LOGIC_VECTOR (6 downto 0);
           Branch : out  STD_LOGIC;
           Result_Src : out  STD_LOGIC_VECTOR (1 downto 0);
           Mem_Write : out  STD_LOGIC;
           Alu_Src : out  STD_LOGIC;
           Imm_Src : out  STD_LOGIC_VECTOR (2 downto 0);
			  Alu_Op : out  STD_LOGIC_VECTOR (1 downto 0);
           Reg_Write : out  STD_LOGIC;
			  Jump : out STD_LOGIC;
			  Jump_R : out STD_LOGIC;
			  Jump1 : out STD_LOGIC);
end Main_Decoder;

----------------------------------------------------------------------------------
--SEÑALES:
--Branch: 		0 = Secuencia normal del PC
--			 		1 = Salto condicional respecto del PC
--
--Result_Src: 00 = Dato leído de memoria 
--				  01 = Resultado de la ALU
--				  10 = Campo inmediato con signo extendido
--
--Mem_Write:   0 = Escritura en memoria deshabilitada
--					1 = Escritura en memoria habilitada
--
--Alu_Src:		0 = Dato leído de rs2
--					1 = Campo inmediato con signo extendido
--
--Imm_Src:	  00 = Extensión de signo para Tipo L, I
--				  01 = Extensión de signo para Tipo S
--  			  10 = Extensión de signo para Tipo B
--				  11 = Extensión de signo para Tipo U
--Alu_Op:
--
--Reg_Write:   0 = Escritura en registro deshabilitada
--					1 = Escritura en registro habilitada 
--JumpR
----------------------------------------------------------------------------------

architecture Behavioral of Main_Decoder is

begin
	process (Op)
	begin
		case (Op) is 
			when "0000000" => -- Excepcion
					Alu_Op <= "--";
					
					Branch <= '0';
					Result_Src <= "--";
					Mem_Write <= '0';
					Alu_Src <= '-';
					Imm_Src <= "---";
					Reg_Write <= '0';
					Jump <= '0';
					Jump_R <= '-';
					Jump1 <= '0';
					
			when "0000001" => -- Break Point
					Alu_Op <= "--";
					
					Branch <= '0';
					Result_Src <= "--";
					Mem_Write <= '0';
					Alu_Src <= '-';
					Imm_Src <= "---";
					Reg_Write <= '0';
					Jump <= '1';
					Jump_R <= '-';
					Jump1 <= '1';
			when "0000011" => --Instrucciones Tipo L
					Alu_Op <= "00";
					
					Branch <= '0';
					Result_Src <= "01";
					Mem_Write <= '0';
					Alu_Src <= '1';
					Imm_Src <= "000";
					Reg_Write <= '1';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
					
			when "0100011" => --Instrucciones Tipo S
					Alu_Op <= "00";
					
					Branch <= '0';
					Result_Src <= "--"; 
					Mem_Write <= '1';
					Alu_Src <= '1';
					Imm_Src <= "001";
					Reg_Write <= '0';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
					
			when "0110011" => --Instrucciones Tipo R
					Alu_Op <= "10";
					
					Branch <= '0';
					Result_Src <= "00";
					Mem_Write <= '0';
					Alu_Src <= '0';
					Imm_Src <= "---";
					Reg_Write <= '1';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
			
			when "1100011" => --Instrucciones Tipo B
					Alu_Op <= "01";
					
					Branch <= '1';
					Result_Src <= "--";
					Mem_Write <= '0';
					Alu_Src <= '0';
					Imm_Src <= "010";
					Reg_Write <= '0';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
					
			when "0010011" => --Instrucciones Tipo I (addi)
					Alu_Op <= "00";
					
					Branch <= '0';
					Result_Src <= "00";
					Mem_Write <= '0';
					Alu_Src <= '1';
					Imm_Src <= "101";
					Reg_Write <= '1';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
			
			when "1101111" => --Instrucciones Tipo J (jal)
					Alu_Op <= "--";
					
					Branch <= '0';
					Result_Src <= "11";
					Mem_Write <= '0';
					Alu_Src <= '-';
					Imm_Src <= "100"; 
					Reg_Write <= '1';
					Jump <= '1';
					Jump_R <= '0';
					Jump1 <= '0';

			when "1100111" => --Instrucciones Tipo J (jalr)
					Alu_Op <= "--";
					
					Branch <= '0';
					Result_Src <= "11";
					Mem_Write <= '0';
					Alu_Src <= '-';
					Imm_Src <= "000"; 
					Reg_Write <= '1';
					Jump <= '1';
					Jump_R <= '1';
					Jump1 <= '0';
			
			when "0110111" =>  --Instrucciones Tipo U (lui)
					Alu_Op <= "--";
					
					Branch <= '0';
					Result_Src <= "10";
					Mem_Write <= '0';
					Alu_Src <= '-';
					Imm_Src <= "011";
					Reg_Write <= '1';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
			
			when "0010111" =>  --Instrucciones Tipo U (auipc)
					Alu_Op <= "--";
					
					Branch <= '0';
					Result_Src <= "11";
					Mem_Write <= '0';
					Alu_Src <= '-';
					Imm_Src <= "011";
					Reg_Write <= '1';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
					
			when others =>
					Alu_Op <= "00";
					
					Branch <= '0';
					Result_Src <= "00";
					Mem_Write <= '0';
					Alu_Src <= '0';
					Imm_Src <= "000";
					Reg_Write <= '0';
					Jump <= '0';
					Jump_R <= '0';
					Jump1 <= '1';
		end case;
	end process;

end Behavioral;

