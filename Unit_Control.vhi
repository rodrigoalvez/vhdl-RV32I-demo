
-- VHDL Instantiation Created from source file Unit_Control.vhd -- 21:11:45 11/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Unit_Control
	PORT(
		Zero : IN std_logic;
		Cod_inst : IN std_logic_vector(11 downto 0);          
		Alu_op : OUT std_logic_vector(2 downto 0);
		Sel_signal : OUT std_logic_vector(8 downto 0)
		);
	END COMPONENT;

	Inst_Unit_Control: Unit_Control PORT MAP(
		Zero => ,
		Cod_inst => ,
		Alu_op => ,
		Sel_signal => 
	);


