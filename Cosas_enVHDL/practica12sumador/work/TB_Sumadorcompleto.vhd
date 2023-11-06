library IEEE;

use IEEE.std_logic_1164.all;


entity TB_sumadorcompleto is 
end TB_sumadorcompleto;


architecture ar_tb_sumadorcompleto of tb_sumadorcompleto is 
	
signal INA : std_logic_vector(2 downto 0 ):="000";

signal OUTA : std_logic_vector (1 downto 0);


begin 

sumador1bit : entity work.sumadorcompleto port map ( INA(0), INA(1), INA(2), OUTA(0),OUTA(1));

INA(0) <= NOT INA(0) after 10 ns;
INA(1) <= NOT INA(1) after 20 ns;
INA(2) <= NOT INA(2) after 40 ns;


end ar_tb_sumadorcompleto;