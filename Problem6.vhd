library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem6 is
  Port (MuxIn: in std_logic_vector (7 downto 0);
        sel: in std_logic_vector (2 downto 0);
        MuxOut: out std_logic);
end Problem6;

---------------------------------------------------------

architecture Prob6_if of Problem6 is
begin

process (MuxIn, sel) begin
        if sel = "000" then
            MuxOut <= MuxIn(0);
        elsif sel = "001" then
            MuxOut <= MuxIn(1);
        elsif sel = "010" then
            MuxOut <= MuxIn(2);
        elsif sel = "011" then
            MuxOut <= MuxIn(3);
        elsif sel = "100" then
            MuxOut <= MuxIn(4);
        elsif sel = "101" then
            MuxOut <= MuxIn(5);
        elsif sel = "110" then
            MuxOut <= MuxIn(6);
        elsif sel = "111" then
            MuxOut <= MuxIn(7);
        else 
            MuxOut <= '0';
        end if;
            
end process;

end Prob6_if;

---------------------------------------------------------

architecture Prob6_case of Problem6 is
begin

process (MuxIn, sel) begin

   case (sel) is
      when "000" =>
         MuxOut <= MuxIn(0);
      when "001" =>
         MuxOut <= MuxIn(1);
      when "010" =>
         MuxOut <= MuxIn(2);
      when "011" =>
         MuxOut <= MuxIn(3);
      when "100" =>
         MuxOut <= MuxIn(4);
      when "101" =>
         MuxOut <= MuxIn(5);
      when "110" =>
         MuxOut <= MuxIn(6);
      when "111" =>
         MuxOut <= MuxIn(7);
      when others =>
         MuxOut <= '0';
   end case;
				
end process;

end Prob6_case;
