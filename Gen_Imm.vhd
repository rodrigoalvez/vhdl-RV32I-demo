----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:31 10/31/2020 
-- Design Name: 
-- Module Name:    Gen_Imm - Behavioral 
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

entity Gen_Imm is
    Port ( D_in : in  STD_LOGIC_VECTOR (24 downto 0);
           D_out : out  STD_LOGIC_VECTOR (31 downto 0);
			  Imm_Src : in STD_LOGIC_VECTOR (2 downto 0));
end Gen_Imm;

architecture Behavioral of Gen_Imm is

begin
	
	process(Imm_Src, D_in)
	begin
		case (Imm_Src) is 
			when "000" => --Tipo L (lw) y Tipo J (JalR)
				if(D_in(24) = '0') then
					D_out <= X"00000" & "00" & D_in(24 downto 15);
				else
					D_out <= X"FFFFF" & "11" & D_in(24 downto 15);
				end if;
				
			when "001" => --Tipo S
				if(D_in(24) = '0') then
					D_out <= X"00000" & "00" & D_in(24 downto 18) & D_in(4 downto 2);
				else
					D_out <= X"FFFFF" & "11" & D_in(24 downto 18) & D_in(4 downto 2);
				end if;
			
			when "010" => --Tipo B
				if(D_in(24) = '0') then
					D_out <= X"00000" & "0" & D_in(24) & D_in(0) & D_in(23 downto 18) & D_in(4 downto 2);
				else
					D_out <= X"FFFFF" & "1" & D_in(24) & D_in(0) & D_in(23 downto 18) & D_in(4 downto 2);
				end if;
				
			when "011" => -- Tipo U
				D_out <= D_in(24 downto 5) & X"000";
				
			when "100" => -- Jal
				if(D_in(24) = '0') then
					D_out <= X"000" & "0" & D_in(24) & D_in(12 downto 5) & D_in(13) & D_in(23 downto 15);
				else
					D_out <= X"FFF" & "1" & D_in(24) & D_in(12 downto 5) & D_in(13) & D_in(23 downto 15);
				end if;
			when "101" => --Tipo I (addi)
				if(D_in(24) = '0') then
					D_out <= X"00000" & D_in(24 downto 13);
				else
					D_out <= X"FFFFF" & D_in(24 downto 13);
				end if;
				
			when others =>
				D_out <= X"00000000";
		end case;
	end process;
	

end Behavioral;

