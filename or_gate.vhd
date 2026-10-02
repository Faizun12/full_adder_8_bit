library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out STD_LOGIC);
end or_gate;

architecture Logic of or_gate is
    component nand_gate
        Port ( in1, in2 : in STD_LOGIC; out1 : out STD_LOGIC );
    end component;
    signal w1, w2 : STD_LOGIC;
begin
    U1: nand_gate port map (in1 => in1, in2 => in1, out1 => w1);
    U2: nand_gate port map (in1 => in2, in2 => in2, out1 => w2);
    U3: nand_gate port map (in1 => w1, in2 => w2, out1 => out1);
end Logic;