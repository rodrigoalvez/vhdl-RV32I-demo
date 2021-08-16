----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:56:03 10/31/2020 
-- Design Name: 
-- Module Name:    Camino_Datos - Behavioral 
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

entity Camino_Datos is
    Port ( Ctrl_in : in  STD_LOGIC_VECTOR (14 downto 0);
           Data_load : in  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Ctrl_out : OUT STD_LOGIC_VECTOR (10 downto 0);
           Dir : out  STD_LOGIC_VECTOR (5 downto 0);
           D_out : out  STD_LOGIC_VECTOR (31 downto 0);
           We : out  STD_LOGIC;
			  Zero : out  STD_LOGIC);
end Camino_Datos;

architecture Behavioral of Camino_Datos is
	
	COMPONENT Mux_Jump
	PORT(
		Data_A : IN std_logic_vector(5 downto 0);
		Data_B : IN std_logic_vector(5 downto 0);
		Data_C : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic_vector(1 downto 0);          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux_PCPlus4
	PORT(
		Data_A : IN std_logic_vector(5 downto 0);
		Data_B : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic;          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Sumador_PC_4
	PORT(
		Op1 : IN std_logic_vector(5 downto 0);
		Op2 : IN std_logic_vector(5 downto 0);          
		PC_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Contador_De_Programa
	PORT(
		PC_next : IN std_logic_vector(5 downto 0);
		Clk : IN std_logic;
		Reset : IN std_logic;          
		PC_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT mem_ROM
	PORT(
		Address : IN std_logic_vector(5 downto 0);          
		RD : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Banco_De_Registros
	PORT(
		A1 : IN std_logic_vector(4 downto 0);
		A2 : IN std_logic_vector(4 downto 0);
		A3 : IN std_logic_vector(4 downto 0);
		WD3 : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reg_W : IN std_logic;
		Reset : IN std_logic;          
		RD1 : OUT std_logic_vector(31 downto 0);
		RD2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Gen_Imm
	PORT(
		D_in : IN std_logic_vector(24 downto 0);          
		Imm_Src : IN std_logic_vector(2 downto 0);
		D_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux_JR
	PORT(
		Data_A : IN std_logic_vector(5 downto 0);
		Data_B : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic;          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PC_Jump
	PORT(
		Op1 : IN std_logic_vector(5 downto 0);
		Op2 : IN std_logic_vector(5 downto 0);          
		PCJump : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux2x1_SrcB
	PORT(
		Data_A : IN std_logic_vector(31 downto 0);
		Data_B : IN std_logic_vector(31 downto 0);
		Sel : IN std_logic;
		D_out : out std_logic_vector(31 downto 0)      
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(
		SrcA : IN std_logic_vector(31 downto 0);
		SrcB : IN std_logic_vector(31 downto 0);
		Alu_Op : IN std_logic_vector(2 downto 0);          
		Zero : OUT std_logic;
		Alu_R : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux_Auipc
	PORT(
		Data_A : IN std_logic_vector(5 downto 0);
		Data_B : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic;          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux2x1_Data
	PORT(
		Data_A : IN std_logic_vector(31 downto 0);
		Data_B : IN std_logic_vector(31 downto 0);
		Data_C : IN std_logic_vector(31 downto 0);
		Data_D : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic_vector (1 downto 0);          
		D_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Unidad_ME
	PORT(
		Sel_in : IN std_logic;
		Clk : IN std_logic;
		Dir_pc : IN std_logic_vector(5 downto 0);          
		Dir_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	
	
	
--Señales
	signal PC_intermedia, PC_Next_intermedia, PCPlus4_intermedia, PCJump_intermedia, ME_D_out_intermedia,
				MuxPCPlus4_intermedia, MuxJR_intermedia, Mux_Auipc_intermedia : std_logic_vector(5 downto 0);
	signal RD_intermedia, RD2_intermedia, SrcA_intermedia, SrcB_intermedia,
			 Imm_intermedia, WD3_intermedia, Alu_Aux: std_logic_vector(31 downto 0);
	signal Sel_intermedia : std_logic_vector (1 downto 0);

begin

	Sel_intermedia <= Ctrl_in(14) & Ctrl_in(1);
	
	Inst_Mux_Jump: Mux_Jump PORT MAP(
		Data_A => PCPlus4_intermedia,
		Data_B => PCJump_intermedia,
		Data_C => ME_D_out_intermedia,
		Sel => Sel_intermedia,
		D_out => PC_Next_intermedia
	);
	
	Inst_Mux_PCPlus4: Mux_PCPlus4 PORT MAP(
		Data_A => "000001",
		Data_B => Imm_intermedia(5 downto 0),
		Sel => Ctrl_in(0),
		D_out => MuxPCPlus4_intermedia
	);

	Inst_Sumador_PC_4: Sumador_PC_4 PORT MAP(
		Op1 => PC_intermedia,
		Op2 => MuxPCPlus4_intermedia,
		PC_out => PCPlus4_intermedia
	);

	Inst_Contador_De_Programa: Contador_De_Programa PORT MAP(
		PC_next => PC_Next_intermedia,
		Clk => Clk,
		Reset => Reset,
		PC_out => PC_intermedia
	);
	
	Inst_mem_ROM: mem_ROM PORT MAP(
		Address => PC_intermedia,
		RD => RD_intermedia
	);

	Inst_Banco_De_Registros: Banco_De_Registros PORT MAP(
		A1 => RD_intermedia(19 downto 15),
		A2 => RD_intermedia(24 downto 20),
		A3 => RD_intermedia(11 downto 7),
		WD3 => WD3_intermedia,
		Clk => Clk,
		Reg_W => Ctrl_in(9),
		Reset => Reset,
		RD1 => SrcA_intermedia,
		RD2 => RD2_intermedia
	);
	
	Inst_Gen_Imm: Gen_Imm PORT MAP(
		D_in => RD_intermedia(31 downto 7),
		Imm_Src => Ctrl_in(8 downto 6),
		D_out => Imm_intermedia
	);
	
	Inst_Mux_JR: Mux_JR PORT MAP(
		Data_A => SrcA_intermedia(5 downto 0),
		Data_B => PC_intermedia,
		Sel => Ctrl_in(10),
		D_out => MuxJR_intermedia
	);
	
	Inst_PC_Jump: PC_Jump PORT MAP(
		Op1 => MuxJR_intermedia,
		Op2 => Imm_intermedia(5 downto 0),
		PCJump => PCJump_intermedia
	);
	
	Inst_Mux2x1_SrcB: Mux2x1_SrcB PORT MAP(
		Data_A => RD2_intermedia,
		Data_B => Imm_intermedia,
		Sel => Ctrl_in(5),
		D_out => SrcB_intermedia
	);
	
	Inst_ALU: ALU PORT MAP(
		SrcA => SrcA_intermedia,
		SrcB => SrcB_intermedia,
		Alu_Op => Ctrl_in(13 downto 11),
		Zero => Zero,
		Alu_R => Alu_Aux
	);
	
	Inst_Mux_Auipc: Mux_Auipc PORT MAP(
		Data_A => PCJump_intermedia,
		Data_B => PCPlus4_intermedia,
		Sel => Ctrl_in(1),
		D_out => Mux_Auipc_intermedia
	);
	
	Inst_Mux2x1_Data: Mux2x1_Data PORT MAP(
		Data_A => Data_load,
		Data_B => Alu_Aux,
		Data_C => Imm_intermedia,
		Data_D => Mux_Auipc_intermedia,
		Sel => Ctrl_in(3 downto 2),
		D_out => WD3_intermedia
	);
	
	Inst_Unidad_ME: Unidad_ME PORT MAP(
		Sel_in => Ctrl_in(1),
		Clk => Clk,
		Dir_pc => PCPlus4_intermedia,
		Dir_out => ME_D_out_intermedia
	);
	
	We <= Ctrl_in(4);
	Ctrl_out <= RD_intermedia(30) & RD_intermedia(14 downto 12) & RD_intermedia(6 downto 0);
	Dir <= Alu_Aux(5 downto 0);
	D_out <= RD2_intermedia;
	

end Behavioral;

