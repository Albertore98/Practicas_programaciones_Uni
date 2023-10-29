library IEEE;

use IEEE.std_logic_1164.all;


entity TBMUX21 is

end TBMUX21;


architecture AR_TBMUX21 of TBMUX21 is

signal TB_I0, TB_I1, TB_S0, TB_Q : std_logic;

begin

mux21: entity work.Mux21 port map(TB_S0, TB_I0, TB_I1, TB_Q);

TB_I0 <='0', '1'after 40 ns;
TB_I1 <='0', '1' after 20 ns,'0' after 40 ns,'1' after 60 ns;
TB_S0 <='0', '1' after 10 ns,'0' after 20 ns,'1' after 30 ns,'0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns;


end AR_TBMUX21;
