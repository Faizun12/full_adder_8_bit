library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out STD_LOGIC);
end and_gate;

architecture Logic of and_gate is
    component nand_gate
        Port ( in1, in2 : in STD_LOGIC; out1 : out STD_LOGIC );
    end component;
    signal sig_internal : STD_LOGIC;
begin
    G1: nand_gate port map (in1 => in1, in2 => in2, out1 => sig_internal);
    G2: nand_gate port map (in1 => sig_internal, in2 => sig_internal, out1 => out1);
end Logic;