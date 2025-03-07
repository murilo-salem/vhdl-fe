entity decoder_2_4 is
	port (
		a: in bit;
		b: in bit;
		s0: out bit;
		s1: out bit;
		s2: out bit;
		s3: out bit
	);
end decoder_2_4;

architecture arq_decoder_2_4 of decoder_2_4 is
	begin
		-- abc
		s0 <= (not a) and (not b);
		s1 <= (not a) and b;
		s2 <= a and (not b);
		s3 <= a and b;
	end arq_decoder_2_4;
	