library IEEE;
use IEEE.std_logic_1164.all;


entity mux21 is 

port(S0,I0,I1 : in std_logic;

Q: out std_logic);


end mux21;


architecture AR_mux21 of mux21 is 

begin 

	Q<=I0 when S0='0' else  I1;

end AR_mux21;