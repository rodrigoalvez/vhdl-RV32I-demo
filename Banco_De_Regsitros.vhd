----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:06 10/31/2020 
-- Design Name: 
-- Module Name:    Banco_De_Regsitros - Behavioral 
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

entity Banco_De_Registros is
    Port ( A1 : in  STD_LOGIC_VECTOR (4 downto 0);
           A2 : in  STD_LOGIC_VECTOR (4 downto 0);
           A3 : in  STD_LOGIC_VECTOR (4 downto 0);
           WD3 : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
           Reg_W : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           RD1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RD2 : out  STD_LOGIC_VECTOR (31 downto 0));
end Banco_De_Registros;

architecture Behavioral of Banco_De_Registros is

	type array_32 is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
	signal Banco_Reg: array_32:= (others => x"00000000");

begin
	
	process(Clk, Reset)
	begin
		if Reset = '1' then
				Banco_Reg <= (others => x"00000000");	
			elsif Clk'event and Clk = '1' then
				if ( Reg_W = '1' and to_integer(unsigned(A3)) /= 0 )then 
					Banco_Reg(to_integer(unsigned(A3))) <= WD3;
				end if;
		end if;
	end process;
	
	process (A1, A2,Banco_Reg)
	begin	
		if (to_integer(unsigned(A1)) = 0) then 
			RD1 <= X"00000000";
				else 
			RD1 <= Banco_Reg(to_integer(unsigned(A1)));
		end if;
		if (to_integer(unsigned(A2)) = 0) then 
			RD2 <= X"00000000";
		else 
			RD2 <= Banco_Reg(to_integer(unsigned(A2)));
		end if;
	end process;


end Behavioral;

