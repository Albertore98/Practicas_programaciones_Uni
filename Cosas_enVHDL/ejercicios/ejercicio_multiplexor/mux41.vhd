library ieee;
use ieee.std_logic_1164.all;


entity mux41 is port (

INA : in std_logic_vector (3 downto 0);

INS :in  std_logic_vector (1 downto 0);

S   : out std_logic );

end mux41;


architecture ar_mux41 of mux41 is 

signal temp1,temp2:std_logic;

begin 

mux0: entity work.mux21 port map (primero => INA(0), segundo => INA (1), selector => INS(0), resultado => temp1);
mux1: entity work.mux21 port map (primero =>INA(2),segundo=> INA(3),selector=>INS(0),resultado=>temp2);

muxf: entity work.mux21 port map(primero =>temp1, segundo=> temp2, selector => INS(1), resultado =>S);


end ar_mux41;
