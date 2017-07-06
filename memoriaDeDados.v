module memoriaDeDados		(clock,
									 enderecoLeitura,
									 dadoLeitura,
									 enderecoEscrita,
									 dadoEscrita,
									 memDadosControle);

//Entradas
	input 				clock;
	input 			   memDadosControle;
	input [31:0] 		enderecoLeitura;
	input [31:0] 		enderecoEscrita;
	input [31:0] 		dadoEscrita;
		
//Saidas
	output [31:0] 		dadoLeitura;
	
//Declaracao da memoria de dados
	reg [31:0] 			memoriaDeDados[100:0];
	
//Logica combinacional
	assign dadoLeitura = memoriaDeDados[enderecoLeitura];
		
//Logica sequencial
	always @ (posedge clock)
		begin
			if (memDadosControle)
				memoriaDeDados[enderecoEscrita] <= dadoEscrita;
		end

endmodule 