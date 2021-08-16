----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:56 10/31/2020 
-- Design Name: 
-- Module Name:    mem_RAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_RAM is
    Port ( Address : in  STD_LOGIC_VECTOR (5 downto 0);
           Data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
			  Reset : in STD_LOGIC;
           We : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (31 downto 0));
end mem_RAM;

architecture Behavioral of mem_RAM is

	type array_64 is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0);
	signal ram : array_64 := (
			others => X"00000000"
			);
			
begin
	
	process (Clk, Reset)
	begin
		if Reset = '1' then
			ram <= (others => x"00000000");
		elsif (Clk'event and Clk = '1') then
          if (We = '1') then
              ram(to_integer(unsigned(Address)))<= Data_in;
          end if;
      end if;
	end process;
	
	Data_out <= ram(to_integer(unsigned(Address)));

	
end Behavioral;

