library ieee;
use ieee.std_logic_1164.all;


entity tbsum2bits is 

end  tbsum2bits ;


architecture artbsum2bits of tbsum2bits is 

signal TI0 : std_logic := '0';
signal TI1 : std_logic :='0';
signal TCI : std_logic :='0';

signal TRES : std_logic;
signal TCO   : std_logic;


begin

sumprueba : entity work.sum2bits port map (TI0,TI1,TCI, TRES, TCO);

TI0 <= NOT TI0 after 10 ns;
TI1 <= NOT TI1 after 20 ns;
TCI <= NOT TCI after 40 ns;




end artbsum2bits;
