
-- VHDL Instantiation Created from source file Main_Decoder.vhd -- 14:24:36 11/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Main_Decoder
	PORT(
		Op : IN std_logic_vector(6 downto 0);          
		Branch : OUT std_logic;
		Result_Src : OUT std_logic_vector(1 downto 0);
		Mem_Write : OUT std_logic;
		Alu_Src : OUT std_logic;
		Imm_Src : OUT std_logic_vector(1 downto 0);
		Alu_Op : OUT std_logic_vector(1 downto 0);
		Reg_Write : OUT std_logic
		);
	END COMPONENT;

	Inst_Main_Decoder: Main_Decoder PORT MAP(
		Op => ,
		Branch => ,
		Result_Src => ,
		Mem_Write => ,
		Alu_Src => ,
		Imm_Src => ,
		Alu_Op => ,
		Reg_Write => 
	);


