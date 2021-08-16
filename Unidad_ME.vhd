----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:03:28 11/28/2020 
-- Design Name: 
-- Module Name:    Unidad_ME - Behavioral 
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

entity Unidad_ME is
    Port ( Sel_in : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Dir_pc : in  STD_LOGIC_VECTOR (5 downto 0);
           Dir_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Unidad_ME;

architecture Behavioral of Unidad_ME is

	COMPONENT Reg_ME
	PORT(
		We : IN std_logic;
		Clk : in STD_LOGIC;
		D_in : IN std_logic_vector(5 downto 0);          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	COMPONENT Contador_ME
	PORT(
		Clk : IN std_logic;
		We : IN std_logic;          
		C_out : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Mux_ME
	PORT(
		Dir_A : IN std_logic_vector(5 downto 0);
		Dir_B : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic;          
		Dir_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	signal Reg_D_out_intermedia : std_logic_vector(5 downto 0);
	signal Contador_C_out_intermedia : std_logic;


begin

	Inst_Reg_ME: Reg_ME PORT MAP(
		We => Sel_in,
		Clk => Clk,
		D_in => Dir_pc,
		D_out => Reg_D_out_intermedia
	);
	
	Inst_Contador_ME: Contador_ME PORT MAP(
		Clk => Clk,
		We => Sel_in,
		C_out => Contador_C_out_intermedia
	);

	Inst_Mux_ME: Mux_ME PORT MAP(
		Dir_A => Reg_D_out_intermedia,
		Dir_B => "000000",
		Sel => Contador_C_out_intermedia,
		Dir_out => Dir_out
	);

end Behavioral;

