module RegistradorPSP
  (
    input ES,
    output reg[9:0]Q,
    input CLOCK,
    input RESET
  );
  
  FlipFlopD U1(ES,    CLOCK, RESET, Q[0]);
  FlipFlopD U2(Q[0],  CLOCK, RESET, Q[1]);
  FlipFlopD U3(Q[1],  CLOCK, RESET, Q[2]);
  FlipFlopD U4(Q[2],  CLOCK, RESET, Q[3]);
  FlipFlopD U5(Q[3],  CLOCK, RESET, Q[4]);
  FlipFlopD U6(Q[4],  CLOCK, RESET, Q[5]);
  FlipFlopD U7(Q[5],  CLOCK, RESET, Q[6]);
  FlipFlopD U8(Q[6],  CLOCK, RESET, Q[7]);
  FlipFlopD U9(Q[7],  CLOCK, RESET, Q[8]);
  FlipFlopD U10(Q[8],  CLOCK, RESET, Q[9]);
  
endmodule
