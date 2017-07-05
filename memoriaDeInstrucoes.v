module memoriaDeInstrucoes (endereco,
									 instrucao,
									 clock);
	
	//Entradas
	input [31:0] 	endereco;
	input clock;
	
	//Saidas
	output [31:0] 	instrucao;
	
	//Variaveis locais
	reg [31:0] memoriaDeInstrucoes [20:0];
	
	integer PrimeiroClock = 0;
		
	always @ (posedge clock) begin
		if (PrimeiroClock == 0) begin
			memoriaDeInstrucoes[1] = {5'd25, 5'd1, 22'd20};
			memoriaDeInstrucoes[2] = {5'd25, 5'd2, 22'd4};
			memoriaDeInstrucoes[3] = {5'd15, 5'd1, 5'd2, 17'dx};
			memoriaDeInstrucoes[4] = {5'd25, 5'd1, 22'd4};
			memoriaDeInstrucoes[5] = {5'd26, 5'd2, 5'd1, 17'dx};
			memoriaDeInstrucoes[6] = {5'd20, 5'd2, 22'dx};
			PrimeiroClock <= 1;
		end
	end
		
	assign instrucao = memoriaDeInstrucoes[endereco[9:0]];
	
endmodule 