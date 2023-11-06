library ieee;
use ieee.std_logic_1164.all;


entity tbmux41 is
end tbmux41;



architecture ar_tbmux41 of tbmux41 is 

signal entradas : std_logic_vector (3 downto 0):="0000";   
signal seleccion : std_logic_vector (1 downto 0):="00";

signal res :std_logic;

begin 

muxprueba : entity work.mux41 port map (INA=> entradas, INS=> seleccion, S =>res);

entradas(0)<= not entradas (0) after 10 ns;
entradas(1)<= not entradas (1) after 20 ns;
entradas(2)<= not entradas (2) after 40 ns;
entradas(3)<= not entradas (3) after 80 ns;

seleccion(0)<= not seleccion (0) after 160 ns;
seleccion(1)<= not seleccion (1) after 320 ns;

end ar_tbmux41;
