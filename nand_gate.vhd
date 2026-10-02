
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           out1 : out STD_LOGIC);
end nand_gate;

architecture Gate_Level of nand_gate is
begin
    out1 <= not (in1 and in2);
end Gate_Level;

