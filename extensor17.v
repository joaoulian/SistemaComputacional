module extensor17(entrada,
						saida);
						
//Entradas
	input [16:0] 	entrada;
	
//Saidas
	output [31:0] 	saida;
	
//Logica combinacional
	assign saida[16:0] = entrada[16:0];
	assign saida[31:16] = entrada[16];
	
endmodule 