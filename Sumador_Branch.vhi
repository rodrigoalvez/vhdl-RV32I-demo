
-- VHDL Instantiation Created from source file Sumador_Branch.vhd -- 18:14:16 11/08/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sumador_Branch
	PORT(
		Op1 : IN std_logic_vector(5 downto 0);
		Op2 : IN std_logic_vector(5 downto 0);          
		PCNext_Branch : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Sumador_Branch: Sumador_Branch PORT MAP(
		Op1 => ,
		Op2 => ,
		PCNext_Branch => 
	);


