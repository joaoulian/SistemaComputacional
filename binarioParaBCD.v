module binarioParaBCD(binario, 
							 centena,
							 dezena,
							 unidade,
							 estagioSaidaUC,
							 reset);
							 
//Entradas
   input  	  [10:0] binario;
	input estagioSaidaUC;
	input reset;
	
//Saidas
   output reg [3:0] centena;
   output reg [3:0] dezena;
   output reg [3:0] unidade;
   
//Variaveis locais
	integer i;
	reg 		  [20:0] deslocado;

//Logica sequencial
	always @ (*)
		if (reset) begin
			centena <= 4'b1111;
			dezena <= 4'b1111;
			unidade <= 4'b1111;
		end else begin
			deslocado[20:11] = 0;
			deslocado[10:0] = binario;
			if (estagioSaidaUC) begin
				for (i = 0; i < 9; i = i +	1) begin
					if (deslocado[12:9] >= 5)
						deslocado[12:9] = deslocado[12:9] + 3;
					if (deslocado[16:13] >= 5)
						deslocado[16:13] = deslocado[16:13] + 3;
					if (deslocado[20:17] >= 5)
						deslocado[20:17] = deslocado[20:17] + 3;
						deslocado = deslocado << 1;
				end
				centena <= deslocado[20:17];
				dezena <= deslocado[16:13];
				unidade <= deslocado[12:9];
		end
	end
	
	endmodule 
			