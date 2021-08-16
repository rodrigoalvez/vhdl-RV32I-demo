
-- VHDL Instantiation Created from source file Procesador.vhd -- 21:11:03 11/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Procesador
	PORT(
		Data_in : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reset : IN std_logic;          
		Address : OUT std_logic_vector(5 downto 0);
		Data_out : OUT std_logic_vector(31 downto 0);
		We : OUT std_logic
		);
	END COMPONENT;

	Inst_Procesador: Procesador PORT MAP(
		Data_in => ,
		Clk => ,
		Reset => ,
		Address => ,
		Data_out => ,
		We => 
	);


