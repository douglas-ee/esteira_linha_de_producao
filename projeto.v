module projeto (
  input [3:0]I ,
  input PROD, KEY, CLK, RESET, REG,
  output FIM,
  output [9:0]LEDS,
  output [6:0] Hex0, Hex1,
  output [7:0] d000,d001,d002,d003,d004,d005,d006,d007,d008,d009,d010,d011,d012,d013,d014,d015
);

  wire [3:0] regi; //saida do registrador paralelo
  wire [3:0] som; //saída do somador
  wire key; 		//saída modulo key
  wire CLK_1;
  
  RegistradorPP u1(I , REG, RESET, regi); 
  Key u2(KEY,CLK_1,key);
  RegistradorPSP u3(PROD,LEDS,key,RESET);
  Contador_4 u4(LEDS,RESET,som);
  Comparador u5(som,regi,RESET,FIM);
  CLOCK_1 u6(CLK, CLK_1);
  Hex_7_Seg u7(som, Hex0); //S como saida, mas tem que chamar o display de 7 seg
  Hex_7_Seg u8(regi, Hex1);
  Resultado u9(FIM, d000,d001,d002,d003,d004,d005,d006,d007,d008,d009,d010,d011,d012,d013,d014,d015);

endmodule