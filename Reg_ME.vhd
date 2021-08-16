----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:16:34 11/28/2020 
-- Design Name: 
-- Module Name:    Reg_ME - Behavioral 
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

entity Reg_ME is
    Port ( We : in  STD_LOGIC;
			  Clk : in STD_LOGIC;
           D_in : in  STD_LOGIC_VECTOR (5 downto 0);
           D_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Reg_ME;

architecture Behavioral of Reg_ME is

	signal registro : std_logic_vector (5 downto 0) := "000000";

begin
	
	process(Clk) begin
		if(Clk'event and Clk='1' and We = '1') then
			registro <= D_in;
		end if;
	end process;

	D_out <= registro;

end Behavioral;

