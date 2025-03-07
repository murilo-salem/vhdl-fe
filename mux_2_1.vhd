entity mux_2_1 is
	port (
		a: in bit;
		b: in bit;
		sel: in bit;
		y: out bit
	);
end mux_2_1;

architecture arq_mux_2_1 of mux_2_1 is
	begin
		-- abc
		y <= ((not sel) and a) or (sel and b);
	end arq_mux_2_1;