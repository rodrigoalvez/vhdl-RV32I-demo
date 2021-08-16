
-- VHDL Instantiation Created from source file Sumador_PC_4.vhd -- 21:55:56 10/31/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sumador_PC_4
	PORT(
		Op1 : IN std_logic_vector(5 downto 0);
		Op2 : IN std_logic_vector(31 downto 0);          
		PC_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Sumador_PC_4: Sumador_PC_4 PORT MAP(
		Op1 => ,
		Op2 => ,
		PC_out => 
	);


