library IEEE;
use IEEE.std_logic_1164.all;


entity sumadorcompleto4bits is port(

	A,B : in std_logic_vector (3 downto 0);
	Ci  : in std_logic ;
	S   : out std_logic_vector (3 downto 0);
	Co  : out std_logic);

end sumadorcompleto4bits;


architecture Ar_sumadorcompleto4bits of sumadorcompleto4bits is 

signal temp1,temp2,temp3:std_logic;

begin 

FA0 : entity work.sumadorcompleto port map( A=> A(0), B => B(0), Ci => Ci, S=> S(0), Co => temp1);
FA2 : entity work.sumadorcompleto port map( A=> A(1), B => B(1), Ci => temp1, S=> S(1), Co => temp2);
FA3 : entity work.sumadorcompleto port map( A=> A(2), B => B(2), Ci => temp2, S=> S(2), Co => temp3);
FA4 : entity work.sumadorcompleto port map( A=> A(3), B => B(3), Ci => temp3, S=> S(3), Co => Co);

end ar_sumadorcompleto4bits;