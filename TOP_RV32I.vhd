----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:39 10/31/2020 
-- Design Name: 
-- Module Name:    TOP_RV32I - Behavioral 
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

entity TOP_RV32I is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Leds : out  STD_LOGIC_VECTOR (7 downto 0));
end TOP_RV32I;

architecture Behavioral of TOP_RV32I is
	
		COMPONENT Procesador
	PORT(
		Data_in : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reset : IN std_logic;          
		Address : OUT std_logic_vector(5 downto 0);
		Data_out : OUT std_logic_vector(31 downto 0);
		We : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT mem_RAM
	PORT(
		Address : IN std_logic_vector(5 downto 0);
		Data_in : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reset : in STD_LOGIC;
		We : IN std_logic;          
		Data_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal Data_intermedia_p , Data_intermedia_m : std_logic_vector(31 downto 0);
	signal Address_intermedia : std_logic_vector(5 downto 0);
	signal We_intermedia : std_logic;
	
begin
	
		Inst_Procesador: Procesador PORT MAP(
		Data_in => Data_intermedia_p,
		Clk => Clk,
		Reset => Reset,
		Address => Address_intermedia,
		Data_out => Data_intermedia_m,
		We => We_intermedia
	);
	
		Inst_mem_RAM: mem_RAM PORT MAP(
		Address => Address_intermedia,
		Data_in => Data_intermedia_m,
		Clk => Clk,
		Reset => Reset,
		We => We_intermedia,
		Data_out => Data_intermedia_P
	);
	
	Leds <= Address_intermedia & Data_intermedia_m (1 downto 0);

end Behavioral;

