----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:40 10/31/2020 
-- Design Name: 
-- Module Name:    Contador_De_Programa - Behavioral 
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

entity Contador_De_Programa is
    Port ( PC_next : in  STD_LOGIC_VECTOR (5 downto 0);
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           PC_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Contador_De_Programa;

architecture Behavioral of Contador_De_Programa is

begin

	process(Clk, Reset)
	begin
		if Reset = '1' then
			PC_out <="000001";
		elsif Clk'event and Clk='1' then
				PC_out <= PC_next;
		end if;
	end process;

end Behavioral;

