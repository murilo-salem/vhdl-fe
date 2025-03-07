Library IEEE;
USE IEEE.std_logic_1164.all;

entity SC is
	port (
		ai, bi, ci: in std_logic;
		si, ci1: out std_logic
	);
end SC;

architecture arq_SC of SC is
	begin
		si <= ai xor bi xor ci;
		ci1 <= (ai and bi) or (ai and ci) or (bi and ci);
	end arq_SC;