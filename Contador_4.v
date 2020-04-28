module Contador_4
(
	input CLOCK,RESET,
	output reg[3:0]S
);
  always @ (posedge CLOCK or posedge RESET)
    begin
      if(RESET) S <= 0;
      else S =  S + 1'b1;
    end
endmodule
