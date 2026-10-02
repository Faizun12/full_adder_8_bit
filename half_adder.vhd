library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( x     : in  STD_LOGIC;
           y     : in  STD_LOGIC;
           s     : out STD_LOGIC;
           c     : out STD_LOGIC);
end half_adder;

architecture Circuit of half_adder is
    component x_or_gate
        Port ( in1, in2 : in STD_LOGIC; out1 : out STD_LOGIC );
    end component;
    component and_gate
        Port ( in1, in2 : in STD_LOGIC; out1 : out STD_LOGIC );
    end component;
begin
    X1: x_or_gate port map (in1 => x, in2 => y, out1 => s);
    A1: and_gate  port map (in1 => x, in2 => y, out1 => c);
end Circuit;