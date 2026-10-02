library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is 
    component full_adder
    Port(
         i1   : in  STD_LOGIC;
         i2   : in  STD_LOGIC;
         cin  : in  STD_LOGIC;
         sum  : out STD_LOGIC;
         cout : out STD_LOGIC
        );
    end component;
    
   signal i1   : STD_LOGIC := '0';
   signal i2   : STD_LOGIC := '0';
   signal cin  : STD_LOGIC := '0';

   signal sum  : STD_LOGIC;
   signal cout : STD_LOGIC;

begin
   uut: full_adder PORT MAP (
          i1 => i1, i2 => i2, cin => cin, sum => sum, cout => cout
        );

   process
   begin		
      i1 <= '0'; i2 <= '0'; cin <= '0'; wait for 20 ns;
      i1 <= '0'; i2 <= '0'; cin <= '1'; wait for 20 ns;
      i1 <= '0'; i2 <= '1'; cin <= '0'; wait for 20 ns;
      i1 <= '0'; i2 <= '1'; cin <= '1'; wait for 20 ns;
      i1 <= '1'; i2 <= '0'; cin <= '0'; wait for 20 ns;
      i1 <= '1'; i2 <= '0'; cin <= '1'; wait for 20 ns;
      i1 <= '1'; i2 <= '1'; cin <= '0'; wait for 20 ns;
      i1 <= '1'; i2 <= '1'; cin <= '1'; wait for 20 ns;
      wait;
   end process;
end behavior;