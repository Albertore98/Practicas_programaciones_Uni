library IEEE;
use IEEE.std_logic_1164.all;



entity TB_sum4bits is
end TB_sum4bits;



architecture AR_TB_sum4bits of TB_sum4bits is 

Signal sumando1,sumando2 : std_logic_vector(3 downto 0):="0000";
signal acarreo_in :std_logic:='0';
Signal resultado : std_logic_vector (3 downto 0);
signal acarreo_out : std_logic;

begin 

sumprueba : entity work.sum4bits port map (sumando1,sumando2,acarreo_in,resultado,acarreo_out);

sumando1(0)<= NOT sumando1(0) after 10 ns;
sumando1(1)<= NOT sumando1(1) after 20 ns;
sumando1(2)<= NOT sumando1(2) after 40 ns;
sumando1(3)<= NOT sumando1(3) after 80 ns;

sumando2(0)<= NOT sumando2(0) after 160 ns;
sumando2(1)<= NOT sumando2(1) after 320 ns;
sumando2(2)<= NOT sumando2(2) after 640 ns;
sumando2(3)<= NOT sumando2(3) after 1280 ns;

acarreo_in<= NOT acarreo_in after 2560 ns;


end ar_tb_sum4bits;