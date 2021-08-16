
-- VHDL Instantiation Created from source file Unidad_ME.vhd -- 23:36:13 11/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Unidad_ME
	PORT(
		Sel_in : IN std_logic_vector(1 downto 0);
		Clk : IN std_logic;
		Dir_pc : IN std_logic_vector(5 downto 0);          
		Dir_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Unidad_ME: Unidad_ME PORT MAP(
		Sel_in => ,
		Clk => ,
		Dir_pc => ,
		Dir_out => 
	);


