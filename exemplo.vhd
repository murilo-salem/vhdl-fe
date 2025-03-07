entity exemplo is
	port (
		a: in bit;
		b: in bit;
		c: in bit;
		S: out bit
	);
end exemplo;

architecture arq_exemplo of exemplo is
	begin
		-- abc
		s <= not (a and b) or not (not c);
	end arq_exemplo;