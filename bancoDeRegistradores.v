module bancoDeRegistradores(clock,
									 enderecoLeitura1,
									 dadoLeitura1,
									 enderecoLeitura2,
									 dadoLeitura2,
									 enderecoEscrita,
									 dadoEscrita,
									 regControle,
									 estagioEntradaBanco,
									 estagioEntradaSwitch,
									 estagioEntradaUC);

//Entradas
	input 				clock;
	input 				regControle;
	input [4:0] 		enderecoLeitura1;
	input [4:0] 		enderecoLeitura2;
	input [4:0] 		enderecoEscrita;
	input [31:0] 		dadoEscrita;
	input estagioEntradaSwitch;
	input estagioEntradaUC;
		
//Saidas
	output [31:0] 		dadoLeitura1;
	output [31:0]		dadoLeitura2;
	output reg estagioEntradaBanco;
	
	
//Declaracao do banco de registradores
	reg [31:0] banco [31:0];
	
	
//Logica combinacional
	assign dadoLeitura1 = banco[enderecoLeitura1];
	assign dadoLeitura2 = banco[enderecoLeitura2];
	
//Logica sequencial
	
	//Escreve nos registradores
	always @ (posedge clock)
		begin
			if (regControle && estagioEntradaSwitch) begin
				banco[enderecoEscrita] <= dadoEscrita;
				estagioEntradaBanco <= 1'b1;
			end else if (regControle && !estagioEntradaUC) begin
				banco[enderecoEscrita] <= dadoEscrita;
				estagioEntradaBanco <= 1'b0;
			end
		end
endmodule 