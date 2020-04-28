//Dps, eu fiz um FlipFlop do tipo D, para ser util na hora de fazer a esteira, //OBS: esse tem uma entrada PRISET caso queiramos botar o valor inicial!

module FlipFlopD
  (
    input D,
    input CLOCK,
    input RESET,
    output reg Q
  );

  always@(posedge CLOCK or posedge RESET)
    begin
      if(RESET) 
			Q = 0;
      else  
			Q = D;
    end
endmodule 
          