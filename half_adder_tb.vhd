library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
end half_adder_tb;

architecture behavior of half_adder_tb is 
    component half_adder
    Port(
         x : in  STD_LOGIC;
         y : in  STD_LOGIC;
         s : out STD_LOGIC;
         c : out STD_LOGIC
        );
    end component;
    
   signal x : STD_LOGIC := '0';
   signal y : STD_LOGIC := '0';
   signal s : STD_LOGIC;
   signal c : STD_LOGIC;

begin
   uut: half_adder PORT MAP (
          x => x, y => y, s => s, c => c
        );

   process
   begin		
      x <= '0'; y <= '0'; wait for 20 ns;
      x <= '0'; y <= '1'; wait for 20 ns;
      x <= '1'; y <= '0'; wait for 20 ns;
      x <= '1'; y <= '1'; wait for 20 ns;
      wait;
   end process;
end behavior;