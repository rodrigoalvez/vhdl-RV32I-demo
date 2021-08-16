
-- VHDL Instantiation Created from source file mem_RAM.vhd -- 16:13:58 10/31/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mem_RAM
	PORT(
		Address : IN std_logic_vector(5 downto 0);
		Data_in : IN std_logic_vector(31 downto 0);
		Clk : IN std_logic;
		We : IN std_logic;          
		Data_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_mem_RAM: mem_RAM PORT MAP(
		Address => ,
		Data_in => ,
		Clk => ,
		We => ,
		Data_out => 
	);


