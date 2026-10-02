library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_8bit is
    Port ( input_A : in  STD_LOGIC_VECTOR (0 to 7);
           input_B : in  STD_LOGIC_VECTOR (0 to 7);
           carry_in: in  STD_LOGIC;
           sum_out : out STD_LOGIC_VECTOR (0 to 7);
           carry_out: out STD_LOGIC);
end full_adder_8bit;

architecture Structural_Arch of full_adder_8bit is
    component full_adder
        Port ( i1, i2, cin : in STD_LOGIC; sum, cout : out STD_LOGIC );
    end component;

    signal temp_c : STD_LOGIC_VECTOR (0 to 8);
begin
    temp_c(0) <= carry_in;

    GEN_ADDERS: for k in 0 to 7 generate
        FA_INST: full_adder port map (
            i1   => input_A(k),
            i2   => input_B(k),
            cin  => temp_c(k),
            sum  => sum_out(k),
            cout => temp_c(k+1)
        );
    end generate;

    carry_out <= temp_c(8);
end Structural_Arch;