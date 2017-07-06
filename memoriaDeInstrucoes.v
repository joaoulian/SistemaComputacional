module memoriaDeInstrucoes (endereco,
									 instrucao,
									 clock);
	
	//Entradas
	input [31:0] 	endereco;
	input clock;
	
	//Saidas
	output [31:0] 	instrucao;
	
	//Variaveis locais
	reg [31:0] memoriaDeInstrucoes [140:0];
	
	integer PrimeiroClock = 0;
		
	always @ (posedge clock) begin
		if (PrimeiroClock == 0) begin
			memoriaDeInstrucoes[1] = {5'd16, 27'd68};
			memoriaDeInstrucoes[2] = {5'd25, 5'd1, 22'd0};
			memoriaDeInstrucoes[3] = {5'd24, 5'd1, 22'd10};
			memoriaDeInstrucoes[4] = {5'd23, 5'd1, 22'd10};
			memoriaDeInstrucoes[5] = {5'd25, 5'd2, 22'd0};
			memoriaDeInstrucoes[6] = {5'd31, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[7] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[8] = {5'd12, 5'd3, 5'd0, 17'd68};
			memoriaDeInstrucoes[9] = {5'd23, 5'd1, 22'd6};
			memoriaDeInstrucoes[10] = {5'd25, 5'd2, 22'd2};
			memoriaDeInstrucoes[11] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[12] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[13] = {5'd12, 5'd3, 5'd0, 17'd19};
			memoriaDeInstrucoes[14] = {5'd23, 5'd1, 22'd6};
			memoriaDeInstrucoes[15] = {5'd23, 5'd2, 22'd7};
			memoriaDeInstrucoes[16] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[17] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[18] = {5'd24, 5'd4, 22'd10};
			memoriaDeInstrucoes[19] = {5'd23, 5'd1, 22'd7};
			memoriaDeInstrucoes[20] = {5'd25, 5'd2, 22'd2};
			memoriaDeInstrucoes[21] = {5'd29, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[22] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[23] = {5'd12, 5'd3, 5'd0, 17'd33};
			memoriaDeInstrucoes[24] = {5'd23, 5'd1, 22'd10};
			memoriaDeInstrucoes[25] = {5'd23, 5'd2, 22'd7};
			memoriaDeInstrucoes[26] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[27] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[28] = {5'd23, 5'd1, 22'd8};
			memoriaDeInstrucoes[29] = {5'd1, 5'd4, 5'd1, 5'd2, 12'dx};
			memoriaDeInstrucoes[30] = {5'd22, 5'd2, 5'd4, 17'd0};
			memoriaDeInstrucoes[31] = {5'd24, 5'd4, 22'd10};
			memoriaDeInstrucoes[32] = {5'd16, 27'd38};
			memoriaDeInstrucoes[33] = {5'd23, 5'd1, 22'd10};
			memoriaDeInstrucoes[34] = {5'd25, 5'd2, 22'd3};
			memoriaDeInstrucoes[35] = {5'd2, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[36] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[37] = {5'd24, 5'd4, 22'd10};
			memoriaDeInstrucoes[38] = {5'd23, 5'd1, 22'd9};
			memoriaDeInstrucoes[39] = {5'd25, 5'd2, 22'd4};
			memoriaDeInstrucoes[40] = {5'd30, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[41] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[42] = {5'd12, 5'd3, 5'd0, 17'd67};
			memoriaDeInstrucoes[43] = {5'd23, 5'd1, 22'd8};
			memoriaDeInstrucoes[44] = {5'd25, 5'd2, 22'd0};
			memoriaDeInstrucoes[45] = {5'd28, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[46] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[47] = {5'd12, 5'd3, 5'd0, 17'd51};
			memoriaDeInstrucoes[48] = {5'd25, 5'd30, 22'd0};
			memoriaDeInstrucoes[49] = {5'd23, 5'd31, 22'd5};
			memoriaDeInstrucoes[50] = {5'd27, 5'd31, 22'd0};
			memoriaDeInstrucoes[51] = {5'd23, 5'd1, 22'd10};
			memoriaDeInstrucoes[52] = {5'd25, 5'd2, 22'd0};
			memoriaDeInstrucoes[53] = {5'd28, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[54] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[55] = {5'd12, 5'd3, 5'd0, 17'd67};
			memoriaDeInstrucoes[56] = {5'd23, 5'd1, 22'd9};
			memoriaDeInstrucoes[57] = {5'd25, 5'd2, 22'd1};
			memoriaDeInstrucoes[58] = {5'd3, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[59] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[60] = {5'd23, 5'd1, 22'd10};
			memoriaDeInstrucoes[61] = {5'd8, 5'd1, 5'd4, 5'd3, 12'dx};
			memoriaDeInstrucoes[62] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[63] = {5'd24, 5'd4, 22'd11};
			memoriaDeInstrucoes[64] = {5'd23, 5'd30, 22'd11};
			memoriaDeInstrucoes[65] = {5'd23, 5'd31, 22'd0};
			memoriaDeInstrucoes[66] = {5'd27, 5'd31, 22'd0};
			memoriaDeInstrucoes[67] = {5'd16, 27'd4};
			memoriaDeInstrucoes[68] = {5'd19, 5'd4, 22'd0};
			memoriaDeInstrucoes[69] = {5'd24, 5'd4, 22'd14};
			memoriaDeInstrucoes[70] = {5'd25, 5'd1, 22'd1};
			memoriaDeInstrucoes[71] = {5'd24, 5'd1, 22'd15};
			memoriaDeInstrucoes[72] = {5'd25, 5'd1, 22'd3};
			memoriaDeInstrucoes[73] = {5'd24, 5'd1, 22'd16};
			memoriaDeInstrucoes[74] = {5'd25, 5'd1, 22'd3};
			memoriaDeInstrucoes[75] = {5'd24, 5'd1, 22'd17};
			memoriaDeInstrucoes[76] = {5'd23, 5'd1, 22'd15};
			memoriaDeInstrucoes[77] = {5'd24, 5'd1, 22'd6};
			memoriaDeInstrucoes[78] = {5'd23, 5'd1, 22'd14};
			memoriaDeInstrucoes[79] = {5'd24, 5'd1, 22'd7};
			memoriaDeInstrucoes[80] = {5'd23, 5'd1, 22'd16};
			memoriaDeInstrucoes[81] = {5'd24, 5'd1, 22'd8};
			memoriaDeInstrucoes[82] = {5'd23, 5'd1, 22'd17};
			memoriaDeInstrucoes[83] = {5'd24, 5'd1, 22'd9};
			memoriaDeInstrucoes[84] = {5'd25, 5'd31, 22'd87};
			memoriaDeInstrucoes[85] = {5'd24, 5'd31, 22'd5};
			memoriaDeInstrucoes[86] = {5'd16, 27'd2};
			memoriaDeInstrucoes[87] = {5'd24, 5'd30, 22'd18};
			memoriaDeInstrucoes[88] = {5'd23, 5'd1, 22'd18};
			memoriaDeInstrucoes[89] = {5'd20, 5'd1, 22'd0};
			memoriaDeInstrucoes[90] = {5'd18, 27'dx};
			PrimeiroClock <= 1;
		end
	end
		
	assign instrucao = memoriaDeInstrucoes[endereco[9:0]];
	
endmodule 