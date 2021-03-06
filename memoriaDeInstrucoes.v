module memoriaDeInstrucoes (endereco,
									 instrucao,
									 clock);
	
	//Entradas
	input [31:0] 	endereco;
	input clock;
	
	//Saidas
	output [31:0] 	instrucao;
	
	//Variaveis locais
	reg [31:0] memoriaDeInstrucoes [150:0];
	
	integer PrimeiroClock = 0;
		
	always @ (posedge clock) begin
		if (PrimeiroClock == 0) begin
memoriaDeInstrucoes[1] = {5'd19, 5'd4, 22'd0};
memoriaDeInstrucoes[2] = {5'd24, 5'd4, 22'd3};
memoriaDeInstrucoes[3] = {5'd19, 5'd4, 22'd0};
memoriaDeInstrucoes[4] = {5'd24, 5'd4, 22'd4};
memoriaDeInstrucoes[5] = {5'd23, 5'd1, 22'd3};
memoriaDeInstrucoes[6] = {5'd23, 5'd2, 22'd4};
memoriaDeInstrucoes[7] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
memoriaDeInstrucoes[8] = {5'd22, 5'd3, 5'd4, 17'd0};
memoriaDeInstrucoes[9] = {5'd24, 5'd4, 22'd5};
memoriaDeInstrucoes[10] = {5'd23, 5'd1, 22'd3};
memoriaDeInstrucoes[11] = {5'd20, 5'd1, 22'd0};
memoriaDeInstrucoes[12] = {5'd23, 5'd1, 22'd4};
memoriaDeInstrucoes[13] = {5'd20, 5'd1, 22'd0};
memoriaDeInstrucoes[14] = {5'd23, 5'd1, 22'd5};
memoriaDeInstrucoes[15] = {5'd20, 5'd1, 22'd0};
memoriaDeInstrucoes[16] = {5'd18, 27'dx};
			PrimeiroClock <= 1;
		end
	end
		
	assign instrucao = memoriaDeInstrucoes[endereco[9:0]];
	
endmodule 