
-- VHDL Instantiation Created from source file Reg_ME.vhd -- 23:21:41 11/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Reg_ME
	PORT(
		We : IN std_logic;
		D_in : IN std_logic_vector(5 downto 0);          
		D_out : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Reg_ME: Reg_ME PORT MAP(
		We => ,
		D_in => ,
		D_out => 
	);


