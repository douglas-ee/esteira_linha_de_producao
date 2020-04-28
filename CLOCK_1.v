module CLOCK_1
(
	input CLK,
	output reg CLK_1
);
reg RESET;
reg [24:0]cont;
initial RESET = 0;

always@(negedge CLK or negedge RESET)
	begin
		if(!RESET)
		begin
			cont = 0;
			CLK_1 = 0;
			RESET = 1;
		end
		else
			if(cont == 24999999)
			begin
				cont = 0;
				CLK_1=~CLK_1;
			end
			else
				cont = cont+1;
	end
endmodule

