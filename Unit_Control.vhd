----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:51 10/31/2020 
-- Design Name: 
-- Module Name:    Unit_Control - Behavioral 
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

entity Unit_Control is
    Port ( Zero : in STD_LOGIC;
			  Cod_inst : in  STD_LOGIC_VECTOR (10 downto 0);
           Alu_op : out  STD_LOGIC_VECTOR (2 downto 0);
           Sel_signal : out  STD_LOGIC_VECTOR (11 downto 0));
end Unit_Control;

architecture Behavioral of Unit_Control is

	
	COMPONENT Main_Decoder
	PORT(
		Op : IN std_logic_vector(6 downto 0);          
		Branch : OUT std_logic;
		Result_Src : OUT std_logic_vector(1 downto 0);
		Mem_Write : OUT std_logic;
		Alu_Src : OUT std_logic;
		Imm_Src : OUT std_logic_vector(2 downto 0);
		Alu_Op : OUT std_logic_vector(1 downto 0);
		Reg_Write : OUT std_logic;
		Jump : out STD_LOGIC;
		Jump_R : out STD_LOGIC;
		Jump1 : out STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT Alu_Decoder
	PORT(
		Funct3 : IN std_logic_vector(2 downto 0);
		Funct7_5 : IN std_logic;
		Alu_Op : IN std_logic_vector(1 downto 0);          
		Alu_Control : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;
	
	signal Alu_Op_intermedia : std_logic_vector(1 downto 0);
	signal branch_intermedia : std_logic;
begin
		
	Inst_Main_Decoder: Main_Decoder PORT MAP(
		Op => Cod_inst(6 downto 0),
		Branch => branch_intermedia,
		Result_Src => Sel_signal(3 downto 2),
		Mem_Write => Sel_signal(4),
		Alu_Src => Sel_signal(5),
		Imm_Src => Sel_signal(8 downto 6),
		Alu_Op => Alu_Op_intermedia,
		Reg_Write => Sel_signal(9),
		Jump => Sel_signal(1),
		Jump_R => Sel_signal(10),
		Jump1 => Sel_signal(11)
	);

	Inst_Alu_Decoder: Alu_Decoder PORT MAP(
		Funct3 => Cod_inst(9 downto 7),
		Funct7_5 => Cod_inst(10),
		Alu_Op => Alu_Op_intermedia,
		Alu_Control => Alu_Op
	);
	
	Sel_signal(0) <= branch_intermedia AND Zero;
	
	
end Behavioral;

