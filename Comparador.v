module Comparador
  (
    input[3:0]A,B,
	 input RESET,
    output reg S
  );
  
  initial S = 0;
  always@(*)
    begin
      if(RESET)		
       S = 1'b0;
      else
		begin
		if(A == B)
		 S = 1'b1;
		 else
		 S = 1'b0;
		 end
    end
endmodule 