module extensor27(entrada,
						saida);
						
//Entradas
	input [26:0] 	entrada;
	
//Saidas
	output [31:0] 	saida;
	
//Logica combinacional 
	assign saida[26:0] = entrada[26:0];
	assign saida[31:26] = entrada[26];
	
endmodule 