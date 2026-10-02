library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate_tb is
end or_gate_tb;

architecture behavior of or_gate_tb is 
    component or_gate
    Port(
         in1  : in  STD_LOGIC;
         in2  : in  STD_LOGIC;
         out1 : out STD_LOGIC
        );
    end component;
    
   signal in1  : STD_LOGIC := '0';
   signal in2  : STD_LOGIC := '0';
   signal out1 : STD_LOGIC;

begin
   uut: or_gate PORT MAP (
          in1 => in1, in2 => in2, out1 => out1
        );

   process
   begin		
      in1 <= '0'; in2 <= '0'; wait for 20 ns;
      in1 <= '0'; in2 <= '1'; wait for 20 ns;
      in1 <= '1'; in2 <= '0'; wait for 20 ns;
      in1 <= '1'; in2 <= '1'; wait for 20 ns;
      wait;
   end process;
end behavior;