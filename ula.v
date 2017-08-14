module ula(ulaControle,
			  A, 
			  B, 
			  ulaSaida);
	
//Entradas
	input [3:0] 		ulaControle;
	input [31:0] 		A, B;
	
//Saidas
	output reg [31:0] ulaSaida;
	
//Logica sequencial
	always @ (ulaControle, A, B) //Executa sempre que isso mudar
			case (ulaControle)
				0: ulaSaida <= A + B; //add e addi
				1: ulaSaida <= A - B; //sub e subi
				2: ulaSaida <= A & B; //and e andi
				3: ulaSaida <= A | B; //or e ori
				4: ulaSaida <= ~A; //not
				5: ulaSaida <= A >> 1; //sr
				6: ulaSaida <= A << 1; //sl
				7: ulaSaida <= A < B ? 1 : 0; //slt e slti
				8: ulaSaida <= A == B ? 1 : 0; //eq
				9: ulaSaida <= A > B ? 1 : 0; //smt
				10: ulaSaida <= A <= B ? 1 : 0; //slteq
				11: ulaSaida <= A >= B ? 1 : 0; //smteq
				12: ulaSaida <= A * B;
				13: ulaSaida <= A / B;
				default: ulaSaida <= 0;
			endcase
			
endmodule 