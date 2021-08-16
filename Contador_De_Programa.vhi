
-- VHDL Instantiation Created from source file Contador_De_Programa.vhd -- 19:13:19 10/31/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Contador_De_Programa
	PORT(
		PC_next : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reset : IN std_logic;          
		PC_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Contador_De_Programa: Contador_De_Programa PORT MAP(
		PC_next => ,
		Clk => ,
		Reset => ,
		PC_out => 
	);


