module extensor22(entrada,
						saida);
						
//Entradas
	input [21:0] 	entrada;
	
//Saidas
	output [31:0] 	saida;
	
//Logica combinacional
	assign saida[21:0] = entrada[21:0];
	assign saida[31:21] = entrada[21];
	
endmodule 