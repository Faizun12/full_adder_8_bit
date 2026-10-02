library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( i1   : in  STD_LOGIC;
           i2   : in  STD_LOGIC;
           cin  : in  STD_LOGIC;
           sum  : out STD_LOGIC;
           cout : out STD_LOGIC);
end full_adder;

architecture Circuit of full_adder is
    component half_adder
        Port ( x, y : in STD_LOGIC; s, c : out STD_LOGIC );
    end component;
    component or_gate
        Port ( in1, in2 : in STD_LOGIC; out1 : out STD_LOGIC );
    end component;

    signal wire_s1, wire_c1, wire_c2 : STD_LOGIC;
begin
    HA_1: half_adder port map (x => i1, y => i2, s => wire_s1, c => wire_c1);
    HA_2: half_adder port map (x => wire_s1, y => cin, s => sum, c => wire_c2);
    OR_1: or_gate    port map (in1 => wire_c1, in2 => wire_c2, out1 => cout);
end Circuit;