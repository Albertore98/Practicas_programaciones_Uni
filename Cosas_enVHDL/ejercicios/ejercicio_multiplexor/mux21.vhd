library ieee;
use ieee.std_logic_1164.all;



entity mux21 is port (

  primero : in std_logic;
  segundo  : in std_logic;

  selector : in std_logic;

  resultado : out std_logic);


end mux21;


architecture ar_mux21 of mux21 is 



begin 


resultado <= primero when selector ='0' else segundo;

end ar_mux21;