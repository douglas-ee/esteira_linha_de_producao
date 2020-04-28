module Key
  (
    input key, CLOCK,
    output S
  );
  
assign S = CLOCK & key;
 
endmodule 