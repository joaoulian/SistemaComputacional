module seteSegmentos(entrada, saida);

//Entradas
	input 	  [3:0] entrada;
	
//Saidas
	output reg [6:0] saida;

//Logica sequencial
	always @(entrada) begin
		case(entrada)
			 0:saida=7'b0000001;
			 1:saida=7'b1001111;
			 2:saida=7'b0010010;
			 3:saida=7'b0000110;
			 4:saida=7'b1001100;
			 5:saida=7'b0100100;
			 6:saida=7'b0100000;
			 7:saida=7'b0001111;
			 8:saida=7'b0000000;
			 9:saida=7'b0000100;
			 default saida=7'b1111111;
		endcase
	end
endmodule 