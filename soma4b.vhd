Library IEEE;
USE IEEE.std_logic_1164.all;

entity soma4b is
	port (
		a, b: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0);
		c4: out std_logic
	);
end soma4b;




architecture arq_soma4b of soma4b is

	component MS is
		port (
			a0, b0: in std_logic;
			s0, c1: out std_logic
		);
	end component;
	
	component SC is
		port (
			ai, bi, ci: in std_logic;
			si, ci1: out std_logic
		);
	end component;
	
	signal c1, c2, c3: std_logic;

	begin
		M0: MS port map(a0 => a(0), b0 => b(0), s0 => s(0), c1 => c1);
		
		S1: SC port map(ai => a(1), bi => b(1), ci => c1, si => s(1), ci1 => c2);
		
		S2: SC port map(ai => a(2), bi => b(2), ci => c2, si => s(2), ci1 => c3);
		
		S3: SC port map(ai => a(3), bi => b(3), ci => c3, si => s(3));
		
	end arq_soma4b;
	