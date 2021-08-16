
-- VHDL Instantiation Created from source file Mux_ME.vhd -- 23:21:13 11/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Mux_ME
	PORT(
		Dir_A : IN std_logic_vector(5 downto 0);
		Dir_B : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic;          
		Dir_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Mux_ME: Mux_ME PORT MAP(
		Dir_A => ,
		Dir_B => ,
		Sel => ,
		Dir_out => 
	);


