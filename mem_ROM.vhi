
-- VHDL Instantiation Created from source file mem_ROM.vhd -- 18:12:37 11/08/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mem_ROM
	PORT(
		Address : IN std_logic_vector(5 downto 0);          
		RD : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_mem_ROM: mem_ROM PORT MAP(
		Address => ,
		RD => 
	);


