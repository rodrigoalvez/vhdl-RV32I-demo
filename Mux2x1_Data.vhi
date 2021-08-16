
-- VHDL Instantiation Created from source file Mux2x1_Data.vhd -- 10:55:03 11/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Mux2x1_Data
	PORT(
		Data_A : IN std_logic_vector(31 downto 0);
		Data_B : IN std_logic_vector(31 downto 0);
		Sel : IN std_logic;          
		D_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Mux2x1_Data: Mux2x1_Data PORT MAP(
		Data_A => ,
		Data_B => ,
		Sel => ,
		D_out => 
	);


