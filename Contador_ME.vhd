----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:45 11/28/2020 
-- Design Name: 
-- Module Name:    Contador_ME - Behavioral 
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

entity Contador_ME is
    Port ( Clk : in  STD_LOGIC;
           We : in  STD_LOGIC;
           C_out : out  STD_LOGIC);
end Contador_ME;

architecture Behavioral of Contador_ME is

	constant tiempoExcepcion : integer := 5;
	
	signal tiempoActual : integer := 0;

begin

	process(Clk, We) begin
		if (We = '1') then
			tiempoActual <= 0;
			C_out <= '0';
		elsif( Clk'event and Clk='1' ) then
			if(tiempoActual = tiempoExcepcion) then
				C_out <= '1';
			else
				tiempoActual <= tiempoActual + 1;
			end if;
		end if;
	end process;

end Behavioral;

