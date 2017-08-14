module quebraNumero(entrada,
						  indicaNegativo,
						  estagioSaidaUC,
						  centena,
						  dezena,
						  unidade,
						  reset);
									 
//Entradas
	input [31:0] entrada;
	input estagioSaidaUC;
	input reset;

//Saidas
	output reg indicaNegativo;

//Variaveis locais
	reg [31:0] novaEntrada;
	output [3:0]  centena;
	output [3:0]  dezena;
	output [3:0]  unidade;
	
//Logica sequencial
	always @ (entrada)
	begin
		if (entrada[31]) begin
			novaEntrada <= (~entrada)+1;
			indicaNegativo <= 1;
		end else begin
			novaEntrada <= entrada;
			indicaNegativo <= 0;
		end
	end
	binarioParaBCD binarioParaBCD1(novaEntrada, centena, dezena, unidade, estagioSaidaUC, reset);
	
endmodule 
	
					