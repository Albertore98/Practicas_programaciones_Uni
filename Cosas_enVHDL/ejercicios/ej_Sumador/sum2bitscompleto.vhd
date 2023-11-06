library IEEE;
use IEEE.std_logic_1164.all;



entity sum2bits is port(

	S0,S1,CI : in std_logic;
	RES, CO : out std_logic);
	

end sum2bits;



architecture AR_sum2bits of sum2bits is 



begin 

RES <= S0 xor S1 xor CI;

CO <=  ((S0 xor S1) and CI) or (S0 and S1);

end AR_sum2bits;