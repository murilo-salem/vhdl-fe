LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY Seg7_Somador IS
	PORT(
	a,b: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(6 downto 0);
	c4: out std_logic
	);
end Seg7_Somador;

architecture arq_Seg7_somador of Seg7_Somador is
signal n: std_logic_vector(3 downto 0);


COMPONENT soma4b IS
	PORT (
		a, b: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0);
		c4: out std_logic
	);
END COMPONENT;


COMPONENT seg7 IS
	PORT (
		entrada: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(6 downto 0)
	);
END COMPONENT;


begin 

	somador: soma4b
	port map (a=>a, b=>b, s => n, c4 => c4);
	
	segmento7: seg7
	port map(entrada => n, s => s);
	
end arq_Seg7_somador;