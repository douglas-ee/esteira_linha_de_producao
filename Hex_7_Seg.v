module Hex_7_Seg
(
input [3:0]I,
output reg[6:0] oSEG
);
always @(I)
 begin
  case(I)			//abcdefq
   4'h0 : oSEG = 7'b1000000;
	4'h1 : oSEG = ~7'b0000110;
	4'h2 : oSEG = 7'b0100100;
	4'h3 : oSEG = ~7'b1001111;
	4'h4 : oSEG = 7'b0011001;
	4'h5 : oSEG = 7'b0010010;
	4'h6 : oSEG = 7'b0000010;
	4'h7 : oSEG = 7'b1111000;
	4'h8 : oSEG = 7'b0000000;
	4'h9 : oSEG = 7'b0011000;
	4'ha : oSEG = ~7'b1110111;
	4'hb : oSEG = ~7'b1111100;
	4'hc : oSEG = ~7'b0111001;
	4'hd : oSEG = ~7'b1011110;
	4'he : oSEG = ~7'b1111001;
	4'hf : oSEG = ~7'b1110001;
  endcase
 end
endmodule