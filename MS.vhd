Library IEEE;
USE IEEE.std_logic_1164.all;

entity MS is
	port (
		a0, b0: in std_logic;
		s0, c1: out std_logic
	);
end MS;

architecture arq_MS of MS is
	begin
		s0 <= a0 xor b0;
		c1 <= a0 and b0;
	end arq_MS;