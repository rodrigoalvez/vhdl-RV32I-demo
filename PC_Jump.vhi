
-- VHDL Instantiation Created from source file PC_Jump.vhd -- 22:17:31 11/15/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC_Jump
	PORT(
		Op1 : IN std_logic_vector(5 downto 0);
		Op2 : IN std_logic_vector(5 downto 0);          
		PCJump : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_PC_Jump: PC_Jump PORT MAP(
		Op1 => ,
		Op2 => ,
		PCJump => 
	);


