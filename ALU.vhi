
-- VHDL Instantiation Created from source file ALU.vhd -- 21:31:55 10/31/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		SrcA : IN std_logic_vector(31 downto 0);
		SrcB : IN std_logic_vector(31 downto 0);
		Alu_Op : IN std_logic_vector(2 downto 0);          
		Zero : OUT std_logic;
		Alu_R : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		SrcA => ,
		SrcB => ,
		Alu_Op => ,
		Zero => ,
		Alu_R => 
	);


