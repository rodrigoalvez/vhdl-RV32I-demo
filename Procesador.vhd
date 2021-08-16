----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:06:22 10/31/2020 
-- Design Name: 
-- Module Name:    Procesador - Behavioral 
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

entity Procesador is
    Port ( Data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Address : out  STD_LOGIC_VECTOR (5 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (31 downto 0);
           We : out  STD_LOGIC);
end Procesador;

architecture Behavioral of Procesador is

	COMPONENT Camino_Datos
	PORT(
		Ctrl_in : IN std_logic_vector(14 downto 0);
		Data_load : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reset : IN std_logic;          
		Ctrl_out : OUT std_logic_vector(10 downto 0);
		Dir : OUT std_logic_vector(5 downto 0);
		D_out : OUT std_logic_vector(31 downto 0);
		We : OUT std_logic;
		Zero : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Unit_Control
	PORT(
		Zero : IN std_logic;
		Cod_inst : IN std_logic_vector(10 downto 0);          
		Alu_op : OUT std_logic_vector(2 downto 0);
		Sel_signal : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
	signal zero_intermedia : std_logic;
	
	signal Cod_intermedia : std_logic_vector(10 downto 0);
	signal Ctrl_intermedia : std_logic_vector(14 downto 0);
	signal Alu_aux : std_logic_vector(2 downto 0);
	signal Sel_aux : std_logic_vector(11 downto 0);
	
begin

	Ctrl_intermedia <= Sel_aux(11) & Alu_aux & Sel_aux(10 downto 0);


	Inst_Camino_Datos: Camino_Datos PORT MAP(
		Ctrl_in => Ctrl_intermedia,
		Data_load => Data_in,
		Clk => Clk,
		Reset => Reset,
		Ctrl_out => Cod_intermedia,
		Dir => Address,
		D_out => Data_out,
		We => We,
		Zero => zero_intermedia
	);
	
	Inst_Unit_Control: Unit_Control PORT MAP(
		Cod_inst => Cod_intermedia,
		Alu_op => Alu_aux,
		Sel_signal => Sel_aux,
		Zero => zero_intermedia
	);

	
end Behavioral;

