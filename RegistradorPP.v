module RegistradorPP
  (
    input[3:0]I,
    input CLOCK, RESET,
    output reg[3:0]Q
  );
  
  always@(posedge CLOCK or posedge RESET)
    begin
      if(RESET)
        Q[3:0] <= 0;
      else
        Q[3:0] <= I[3:0];
    end
  
endmodule