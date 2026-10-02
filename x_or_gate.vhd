library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_or_gate is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out STD_LOGIC);
end x_or_gate;

architecture Logic of x_or_gate is
    component nand_gate
        Port ( in1, in2 : in STD_LOGIC; out1 : out STD_LOGIC );
    end component;
    signal m1, m2, m3 : STD_LOGIC;
begin
    N1: nand_gate port map (in1 => in1, in2 => in2, out1 => m1);
    N2: nand_gate port map (in1 => in1, in2 => m1,  out1 => m2);
    N3: nand_gate port map (in1 => in2, in2 => m1,  out1 => m3);
    N4: nand_gate port map (in1 => m2,  in2 => m3,  out1 => out1);
end Logic;