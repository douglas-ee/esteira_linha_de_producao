// --------------------------------------------------------------------
// M�dulo de entradas e sa�das para a placa ALTERA DE2
// Esta primeira parte ser� utilizada em todos os experimentos realizados
// --------------------------------------------------------------------
module Mod_Teste (
//////////////////// Fonte de Clock ////////////////////
		 CLOCK_50,    // 50 MHz
		 SW,         // Toggle Switch (chaves) [17:0]
		 /////////////////// Display de 7-SEG ///////////////////
		 HEX0,       // Display 0
		 HEX1,       // Display 1
		 /////////////////// LED //////////////////
		 LEDG,       // LED Green (verde) [8:0]
		 LEDR,       // LED Red (vermelho) [17:0]
		 ////////////////////	LCD Module 16X2		////////////////
		 LCD_ON,							//	LCD Power ON/OFF
		 LCD_BLON,						//	LCD Back Light ON/OFF
		 LCD_RW,							//	LCD Read/Write Select, 0 = Write, 1 = Read
	    LCD_EN,							//	LCD Enable
		 LCD_RS,							//	LCD Command/Data Select, 0 = Command, 1 = Data
		 LCD_DATA,						//	LCD Data bus 8 bits
	);
   input CLOCK_50;
   input [7:0] SW;
   output [6:0] HEX0;
   output [6:0] HEX1;
	output [3:0] LEDG;
	output [9:0] LEDR;
// Parte 2
	////////////////////	LCD Module 16X2	////////////////////////////
	inout	[7:0]		LCD_DATA;				//	LCD Data bus 8 bits
	output			LCD_ON;					//	LCD Power ON/OFF
	output			LCD_BLON;				//	LCD Back Light ON/OFF
	output			LCD_RW;					//	LCD Read/Write Select, 0 = Write, 1 = Read
	output			LCD_EN;					//	LCD Enable
	output			LCD_RS;					//	LCD Command/Data Select, 0 = Command, 1 = Data
	//	LCD
	assign	LCD_ON		=	1'b1;
	assign	LCD_BLON	=	1'b1;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

wire[7:0] d000,d001,d002,d003,d004,d005,d006,d007,d008,d009,d010,d011,d012,d013,d014,d015;
wire[9:0]LEDS;
wire[3:0]I;
wire PROD,RESET,REG, FIM,CH;

assign I[3:0] = SW[3:0];
assign REG = SW[4];
assign CH = SW[5];
assign PROD = SW[6];
assign RESET = SW[7];
assign LEDR = LEDS;
assign LEDG[0] = FIM;
assign LEDG[1] = SW[5];
assign LEDG[2] = SW[4];

projeto(I,PROD, CH, CLOCK_50, RESET, REG, FIM, LEDS, HEX0, HEX1, d000,d001,d002,d003,d004,d005,d006,d007,d008,d009,d010,d011,d012,d013,d014,d015);

endmodule