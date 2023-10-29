library IEEE;

use IEEE.std_logic_1164.all;


entity tbmux41_vector is

end tbmux41_vector;


architecture ar_tbmux_41 of tbmux41_vector is

signal  TB_S  :  std_logic_vector (1 downto 0):= "00";
	
signal	TB_D :  std_logic_vector (3 downto 0):="0000";
signal	TB_DS : std_logic;
	

begin 

mux41 : entity work.mux41_vector port map(TB_S,TB_D,TB_DS);

	
TB_S(0)<= not TB_S(0) after 10 ns;
TB_S(1)<= not TB_S(1) after 20 ns;
TB_D(0)<= not TB_D(0) after 40 ns;
TB_D(1)<= not TB_D(1) after 80 ns;
TB_D(2)<= not TB_D(2) after 160 ns;
TB_D(3)<= not TB_D(3) after 320 ns;


end ar_tbmux_41;
	
	
	