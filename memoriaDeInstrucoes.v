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
			memoriaDeInstrucoes[1] = {5'd25, 5'd4, 22'd50}; //li $s1, 1
			memoriaDeInstrucoes[2] = {5'd25, 5'd2, 22'd10}; //li $s2, 12
			memoriaDeInstrucoes[3] = {5'd1, 5'd4, 5'd2, 5'd7, 12'dx}; //add $s2, $s4, $s7 -> $s7 = $s2 + $s4
			memoriaDeInstrucoes[4] = {5'd15, 5'd7, 5'd4, 17'dx}; //swr $s7, $s1 -> mem[$s1] = $72
			memoriaDeInstrucoes[5] = {5'd26, 5'd3, 5'd4, 17'dx}; //lr $s3, $s1 -> $s3 = mem[$s2]
			memoriaDeInstrucoes[6] = {5'd20, 5'd3, 22'dx};
			memoriaDeInstrucoes[7] = {5'd18, 27'dx}; //hlt
			PrimeiroClock <= 1;
		end
	end
		
	assign instrucao = memoriaDeInstrucoes[endereco[9:0]];
	
endmodule 