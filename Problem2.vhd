library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem2 is
  Port (A_1, A_2, B_1, B_2, D_1: in std_logic;
        E_out: out std_logic);
end Problem2;

---------------------------------------------------------

architecture Prob2_if of Problem2 is
begin

IfProcess: process (A_1, A_2, B_1, B_2, D_1) begin
                if (A_1 = '1' and A_2 = '1') or (B_1 = '1' or B_2 = '1') or (not D_1 = '1' and B_2 = '1') then
                    E_out <= '1';
                else
                    E_out <= '0';
                end if;
           end process IfProcess;

end Prob2_if;

---------------------------------------------------------

architecture Prob2_case of Problem2 is

begin

CaseProcess: process (A_1, A_2, B_1, B_2, D_1) begin
              case ((A_1 = '1' and A_2 = '1') or (B_1 = '1' or B_2 = '1') or (not D_1 = '1' and B_2 = '1')) is
                    when true =>
                        E_out <= '1';
                    when others =>
                        E_out <= '0';
              end case;   
           end process CaseProcess;
end Prob2_case;