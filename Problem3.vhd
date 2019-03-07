library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem3 is
  Port (A_1, A_2, B_1, B_2, D_1: in std_logic;
        E_out: out std_logic);
end Problem3;

architecture p3 of Problem3 is

begin

E_out <= (A_1 and A_2) or (B_1 or B_2) or (not D_1 and B_2);

end p3;
