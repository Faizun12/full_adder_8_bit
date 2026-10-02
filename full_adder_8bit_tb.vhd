library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_8bit_tb is
end full_adder_8bit_tb;

architecture test of full_adder_8bit_tb is 
    component full_adder_8bit
    Port(
         input_A   : in  STD_LOGIC_VECTOR(0 to 7);
         input_B   : in  STD_LOGIC_VECTOR(0 to 7);
         carry_in  : in  STD_LOGIC;
         sum_out   : out STD_LOGIC_VECTOR(0 to 7);
         carry_out : out STD_LOGIC
        );
    end component;
    
   signal input_A   : STD_LOGIC_VECTOR(0 to 7) := (others => '0');
   signal input_B   : STD_LOGIC_VECTOR(0 to 7) := (others => '0');
   signal carry_in  : STD_LOGIC := '0';

   signal sum_out   : STD_LOGIC_VECTOR(0 to 7);
   signal carry_out : STD_LOGIC;
   
begin
   UUT_8BIT: full_adder_8bit PORT MAP (
          input_A => input_A, input_B => input_B, carry_in => carry_in, 
          sum_out => sum_out, carry_out => carry_out
        );

   process
   begin		
      -- Test 1: 0 + 0
      input_A <= "00000000"; input_B <= "00000000"; carry_in <= '0'; wait for 20 ns;
      
      -- Test 2: 1 + 1
      input_A <= "10000000"; input_B <= "10000000"; carry_in <= '0'; wait for 20 ns;
      
      -- Test 3: Custom Value
      input_A <= "10100000"; input_B <= "11000000"; carry_in <= '0'; wait for 20 ns;

      -- Test 4: Overflow
      input_A <= "11111111"; input_B <= "10000000"; carry_in <= '0'; wait for 20 ns;

      wait;
   end process;
end test;