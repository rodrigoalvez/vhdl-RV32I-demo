
-- VHDL Instantiation Created from source file Camino_Datos.vhd -- 18:14:07 11/08/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Camino_Datos
	PORT(
		Ctrl_in : IN std_logic_vector(11 downto 0);
		Data_load : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		Reset : IN std_logic;          
		Ctrl_out : OUT std_logic_vector(10 downto 0);
		Dir : OUT std_logic_vector(5 downto 0);
		D_out : OUT std_logic_vector(31 downto 0);
		We : OUT std_logic;
		Zero : OUT std_logic
		);
	END COMPONENT;

	Inst_Camino_Datos: Camino_Datos PORT MAP(
		Ctrl_in => ,
		Data_load => ,
		Clk => ,
		Reset => ,
		Ctrl_out => ,
		Dir => ,
		D_out => ,
		We => ,
		Zero => 
	);


