
-- VHDL Instantiation Created from source file Gen_Imm.vhd -- 10:24:15 11/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Gen_Imm
	PORT(
		D_in : IN std_logic_vector(11 downto 0);
		Imm_Src : IN std_logic_vector(1 downto 0);          
		D_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Gen_Imm: Gen_Imm PORT MAP(
		D_in => ,
		D_out => ,
		Imm_Src => 
	);


