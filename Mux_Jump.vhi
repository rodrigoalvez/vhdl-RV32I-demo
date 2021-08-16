
-- VHDL Instantiation Created from source file Mux_Jump.vhd -- 00:00:13 11/29/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Mux_Jump
	PORT(
		Data_A : IN std_logic_vector(5 downto 0);
		Data_B : IN std_logic_vector(5 downto 0);
		Data_C : IN std_logic_vector(5 downto 0);
		Sel : IN std_logic_vector(1 downto 0);          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Mux_Jump: Mux_Jump PORT MAP(
		Data_A => ,
		Data_B => ,
		Data_C => ,
		Sel => ,
		D_out => 
	);


