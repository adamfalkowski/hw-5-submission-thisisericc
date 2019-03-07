library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Problem7 is
  Port (DecIn: in std_logic_vector(2 downto 0);
        DecOut: out std_logic_vector (7 downto 0));
end Problem7;

---------------------------------------------------------

architecture Prob7_if of Problem7 is

begin

process (DecIn) begin

        if DecIn = "000" then
            DecOut <= "11111110";
        elsif DecIn = "001" then
            DecOut <= "11111101";
        elsif DecIn = "010" then
            DecOut <= "11111011";
        elsif DecIn = "011" then
            DecOut <= "11110111";
        elsif DecIn = "100" then
            DecOut <= "11101111";
        elsif DecIn = "101" then
            DecOut <= "11011111";
        elsif DecIn = "110" then
            DecOut <= "10111111";
        elsif DecIn = "111" then
            DecOut <= "01111111";
        else 
            DecOut <= "11111111";
        end if;

end process;
end Prob7_if;

---------------------------------------------------------

architecture Prob7_case of Problem7 is

begin

process (DecIn) begin

   case (DecIn) is
      when "000" =>
         DecOut <= "11111110";
      when "001" =>
         DecOut <= "11111101";
      when "010" =>
         DecOut <= "11111011";
      when "011" =>
         DecOut <= "11110111";
      when "100" =>
         DecOut <= "11101111";
      when "101" =>
         DecOut <= "11011111";
      when "110" =>
         DecOut <= "10111111";
      when "111" =>
         DecOut <= "01111111";
      when others =>
         DecOut <= "11111111";
   end case;
				
end process;
end Prob7_case;
