
-- VHDL Instantiation Created from source file Mux_PCPlus4.vhd -- 22:52:24 11/15/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Mux_PCPlus4
	PORT(
		Data_A : IN std_logic_vector(5 downto 0);
		Data_B : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic;          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Mux_PCPlus4: Mux_PCPlus4 PORT MAP(
		Data_A => ,
		Data_B => ,
		Sel => ,
		D_out => 
	);


