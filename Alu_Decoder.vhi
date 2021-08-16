
-- VHDL Instantiation Created from source file Alu_Decoder.vhd -- 14:26:15 11/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Alu_Decoder
	PORT(
		Funct3 : IN std_logic_vector(2 downto 0);
		Funct7_5 : IN std_logic;
		Alu_Op : IN std_logic_vector(1 downto 0);          
		Alu_Control : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_Alu_Decoder: Alu_Decoder PORT MAP(
		Funct3 => ,
		Funct7_5 => ,
		Alu_Op => ,
		Alu_Control => 
	);


