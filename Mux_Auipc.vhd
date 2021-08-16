----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:48:18 11/16/2020 
-- Design Name: 
-- Module Name:    Mux_Auipc - Behavioral 
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

entity Mux_Auipc is
    Port ( Data_A : in  STD_LOGIC_VECTOR (5 downto 0);
           Data_B : in  STD_LOGIC_VECTOR (5 downto 0);
           Sel : in  STD_LOGIC;
           D_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Mux_Auipc;

architecture Behavioral of Mux_Auipc is

begin

	D_out <= Data_A when Sel = '0' else Data_B;

end Behavioral;

