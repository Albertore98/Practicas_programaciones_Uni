library IEEE;

use IEEE.std_logic_1164.all;



entity sumadorcompleto is port(

	A,B,Ci : in std_logic;
	S,Co   : out std_logic);

end sumadorcompleto;


architecture ar_sumadorcompleto of sumadorcompleto is

begin 

S<= A xor B xor Ci;
Co <=(A and B) or ((A xor B) and Ci);

end ar_sumadorcompleto;

