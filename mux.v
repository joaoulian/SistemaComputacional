module mux(entrada1,
			  entrada2,
			  seletor,
			  saida);

//Entradas
	input [31:0] entrada1;
	input [31:0] entrada2;
	input seletor;

//Saidas
	output [31:0] saida;

//Logica combinacional
	assign saida = (seletor == 0) ? entrada1 : entrada2; //seletor = 0 seleciona entrada1

endmodule 