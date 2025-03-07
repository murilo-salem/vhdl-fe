entity mux_2_1_selecao is
	port (
		a: in bit;
		b: in bit;
		sel: in bit;
		y: out bit
	);
end mux_2_1_selecao;

architecture arq_mux_2_1_selecao of mux_2_1_selecao is
	begin
		WITH sel SELECT 
		y <=
			a when '0',
			b when '1',
			'0' when OTHERS;
			
	end arq_mux_2_1_selecao;