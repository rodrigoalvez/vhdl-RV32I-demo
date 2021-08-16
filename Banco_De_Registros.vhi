
-- VHDL Instantiation Created from source file Banco_De_Registros.vhd -- 00:00:46 11/03/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Banco_De_Registros
	PORT(
		A1 : IN std_logic_vector(4 downto 0);
		A2 : IN std_logic_vector(4 downto 0);
		A3 : IN std_logic_vector(4 downto 0);
		WD3 : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reg_W : IN std_logic;
		Reset : IN std_logic;          
		RD1 : OUT std_logic_vector(31 downto 0);
		RD2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Banco_De_Registros: Banco_De_Registros PORT MAP(
		A1 => ,
		A2 => ,
		A3 => ,
		WD3 => ,
		Clk => ,
		Reg_W => ,
		Reset => ,
		RD1 => ,
		RD2 => 
	);


