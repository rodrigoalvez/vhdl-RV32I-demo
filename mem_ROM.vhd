----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:56:06 10/31/2020 
-- Design Name: 
-- Module Name:    mem_ROM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_ROM is
    Port ( Address : in  STD_LOGIC_VECTOR (5 downto 0);
           RD : out  STD_LOGIC_VECTOR (31 downto 0));
end mem_ROM;

architecture Behavioral of mem_ROM is
	
	type array_64 is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0);
	signal rom : array_64:= (
			x"00000000",  --> Excepcion
--		#	Codigo de prueba 

--#	Inicializo dos variables
			x"00300413",  --> addi $s0, $zero, 3	# a = 3
         x"00100493",  --> addi $s1, $zero, 1	# b = 1
         x"01000913",  --> addi $s2, $zero, 16	# cte = 16
			
--#	operaciones logicas aritmeticas y slt		
         x"009462b3", --or  t0, s0, s1    # c = 3
         x"00947333", --and t1, s0, s1    # d = 1
         x"009403b3", --add t2, s0, s1    # e = 4
         x"40940e33", --sub t3, s0, s1    # f = 2
         x"40848eb3", --sub t4, s1, s0    # g = 0xfffffffe = -2
         x"00942f33", --slt t5, s0, s1    # h = 0
         x"0084afb3", --slt t6, s1, s0    # i = 1
			
			x"00000001",  --> Break Point
			
--#	un while usando beq y j 
--#	Inicializo 3 variables
--# s2 = 0x10 cte para comparar (16)
	
			x"00100293",  --> addi $t0, $0, 1 	# var = 1, variable de trabajo
			x"00000313",  --> addi $t1, $0, 0 	# cuenta = 0, un contador
--while:
			x"01228863",  --> beq  $t0, $s2, sal1 	# si var == cte, sale del while.
			x"005282b3",  --> add  $t0, $t0, $t0 	# var = var + var
			x"00130313",  --> addi $t1, $t1, 1 	# cuenta = cuenta + 1
			x"ff5ff06f",  --> j while
--sal1:

--#	Debió quedar var en 0x10 y cuenta en 4
--#	un loop
--#	Inicializo 3 variables
--# $t0 = i, $s1 = var
			x"000004b3",  --> add  $s1, $0, $0 	# var = 0, $s0
--#add $s0, $0, 3		# cte = 3, $s1
			x"00000293",  --> addi $t0, $0, 0 	# indice = 0, $t0
			x"00a00313",  --> addi $t1, $0, 10 	# veces = 10, $t1
--for:
			x"00628863",  --> beq  $t0, $t1, sal2 	# if indice == veces, branch to done
			x"008484b3",  --> add  $s1, $s1, $s0 	# var = var + cte 
			x"00128293",  --> addi $t0, $t0, 1 	# incremento indice
			x"ff5ff06f",  --> j for
			
			x"00000001",  --> Break Point
--sal2:
--#    Debio quedar var en 30 (0x1e) e incremento en 10 (0xa)

--#     almacenamiento (escritura) sw
         x"00802023", --# guarda $s0 en registro 0
         x"00902223", --# guarda $s1 en registro 4
         x"01202423", --# guarda $s2 en registro 8
--#    carga (lectura) lw
         x"00002403", --# lee registro 0 en $s0
         x"00402483", --# lee registro 4 en $s1
         x"00802903", --# lee registro 8 en $s2		 
			
        others => X"00000002"
    );                        

begin
		RD <= rom(to_integer(unsigned(Address)));
end Behavioral;

