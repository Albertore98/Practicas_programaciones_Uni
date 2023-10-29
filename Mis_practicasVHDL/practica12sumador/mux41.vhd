library IEEE;

use IEEE.std_logic_1164.all;


entity mux41_vector is port(

	S  : in std_logic_vector (1 downto 0);
	D : in std_logic_vector (3 downto 0);
	DS : out std_logic);

end mux41_vector;


architecture Ar_mux41_vector of mux41_vector is 

signal DS1,DS2 : std_logic;

begin 

	mux1 : entity work.mux21 port map (S(0), D(0),D(1),DS1);
	mux2 : entity work.mux21 port map (S(0), D(2),D(3), DS2);
	mux3 : entity work.mux21 port map (S(1), DS1,DS2, DS);

end ar_mux41_vector; 