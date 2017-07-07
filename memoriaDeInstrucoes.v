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
			memoriaDeInstrucoes[1] = {5'd25, 5'd1, 22'd3};
			memoriaDeInstrucoes[2] = {5'd24, 5'd1, 22'd3};
			memoriaDeInstrucoes[3] = {5'd25, 5'd1, 22'd13};
			memoriaDeInstrucoes[4] = {5'd24, 5'd1, 22'd13};
			memoriaDeInstrucoes[5] = {5'd16, 27'd84};
			memoriaDeInstrucoes[6] = {5'd25, 5'd1, 22'd0};
			memoriaDeInstrucoes[7] = {5'd24, 5'd1, 22'd5};
			memoriaDeInstrucoes[8] = {5'd23, 5'd1, 22'd4};
			memoriaDeInstrucoes[9] = {5'd25, 5'd2, 22'd1};
			memoriaDeInstrucoes[10] = {5'd3, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[11] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[12] = {5'd24, 5'd4, 22'd7};
			memoriaDeInstrucoes[13] = {5'd23, 5'd1, 22'd5};
			memoriaDeInstrucoes[14] = {5'd23, 5'd2, 22'd7};
			memoriaDeInstrucoes[15] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[16] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[17] = {5'd12, 5'd3, 5'd0, 17'd82};
			memoriaDeInstrucoes[18] = {5'd23, 5'd1, 22'd5};
			memoriaDeInstrucoes[19] = {5'd24, 5'd1, 22'd8};
			memoriaDeInstrucoes[20] = {5'd23, 5'd1, 22'd5};
			memoriaDeInstrucoes[21] = {5'd25, 5'd2, 22'd1};
			memoriaDeInstrucoes[22] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[23] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[24] = {5'd24, 5'd4, 22'd6};
			memoriaDeInstrucoes[25] = {5'd23, 5'd1, 22'd6};
			memoriaDeInstrucoes[26] = {5'd23, 5'd2, 22'd4};
			memoriaDeInstrucoes[27] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[28] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[29] = {5'd12, 5'd3, 5'd0, 17'd53};
			memoriaDeInstrucoes[30] = {5'd23, 5'd1, 22'd3};
			memoriaDeInstrucoes[31] = {5'd23, 5'd2, 22'd6};
			memoriaDeInstrucoes[32] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[33] = {5'd26, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[34] = {5'd24, 5'd4, 22'd10};
			memoriaDeInstrucoes[35] = {5'd23, 5'd1, 22'd3};
			memoriaDeInstrucoes[36] = {5'd23, 5'd2, 22'd8};
			memoriaDeInstrucoes[37] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[38] = {5'd26, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[39] = {5'd24, 5'd4, 22'd11};
			memoriaDeInstrucoes[40] = {5'd23, 5'd1, 22'd10};
			memoriaDeInstrucoes[41] = {5'd23, 5'd2, 22'd11};
			memoriaDeInstrucoes[42] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[43] = {5'd25, 5'd0, 22'd0};
			memoriaDeInstrucoes[44] = {5'd12, 5'd3, 5'd0, 17'd47};
			memoriaDeInstrucoes[45] = {5'd23, 5'd1, 22'd6};
			memoriaDeInstrucoes[46] = {5'd24, 5'd1, 22'd8};
			memoriaDeInstrucoes[47] = {5'd23, 5'd1, 22'd6};
			memoriaDeInstrucoes[48] = {5'd25, 5'd2, 22'd1};
			memoriaDeInstrucoes[49] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[50] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[51] = {5'd24, 5'd4, 22'd6};
			memoriaDeInstrucoes[52] = {5'd16, 27'd25};
			memoriaDeInstrucoes[53] = {5'd23, 5'd1, 22'd5};
			memoriaDeInstrucoes[54] = {5'd23, 5'd2, 22'd8};
			memoriaDeInstrucoes[55] = {5'd28, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[56] = {5'd25, 5'd0, 22'd1};
			memoriaDeInstrucoes[57] = {5'd12, 5'd3, 5'd0, 17'd76};
			memoriaDeInstrucoes[58] = {5'd23, 5'd1, 22'd3};
			memoriaDeInstrucoes[59] = {5'd23, 5'd2, 22'd5};
			memoriaDeInstrucoes[60] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[61] = {5'd26, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[62] = {5'd24, 5'd4, 22'd9};
			memoriaDeInstrucoes[63] = {5'd23, 5'd1, 22'd3};
			memoriaDeInstrucoes[64] = {5'd23, 5'd2, 22'd8};
			memoriaDeInstrucoes[65] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[66] = {5'd26, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[67] = {5'd23, 5'd1, 22'd3};
			memoriaDeInstrucoes[68] = {5'd23, 5'd2, 22'd5};
			memoriaDeInstrucoes[69] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[70] = {5'd15, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[71] = {5'd23, 5'd1, 22'd3};
			memoriaDeInstrucoes[72] = {5'd23, 5'd2, 22'd8};
			memoriaDeInstrucoes[73] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[74] = {5'd23, 5'd4, 22'd9};
			memoriaDeInstrucoes[75] = {5'd15, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[76] = {5'd23, 5'd1, 22'd5};
			memoriaDeInstrucoes[77] = {5'd25, 5'd2, 22'd1};
			memoriaDeInstrucoes[78] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[79] = {5'd22, 5'd3, 5'd4, 17'd0};
			memoriaDeInstrucoes[80] = {5'd24, 5'd4, 22'd5};
			memoriaDeInstrucoes[81] = {5'd16, 27'd13};
			memoriaDeInstrucoes[82] = {5'd23, 5'd31, 22'd2};
			memoriaDeInstrucoes[83] = {5'd27, 5'd31, 22'd0};
			memoriaDeInstrucoes[84] = {5'd23, 5'd1, 22'd13};
			memoriaDeInstrucoes[85] = {5'd25, 5'd2, 22'd1};
			memoriaDeInstrucoes[86] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[87] = {5'd25, 5'd4, 22'd9};
			memoriaDeInstrucoes[88] = {5'd15, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[89] = {5'd23, 5'd1, 22'd13};
			memoriaDeInstrucoes[90] = {5'd25, 5'd2, 22'd2};
			memoriaDeInstrucoes[91] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[92] = {5'd25, 5'd4, 22'd6};
			memoriaDeInstrucoes[93] = {5'd15, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[94] = {5'd23, 5'd1, 22'd13};
			memoriaDeInstrucoes[95] = {5'd25, 5'd2, 22'd3};
			memoriaDeInstrucoes[96] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[97] = {5'd25, 5'd4, 22'd8};
			memoriaDeInstrucoes[98] = {5'd15, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[99] = {5'd23, 5'd1, 22'd13};
			memoriaDeInstrucoes[100] = {5'd25, 5'd2, 22'd4};
			memoriaDeInstrucoes[101] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[102] = {5'd25, 5'd4, 22'd7};
			memoriaDeInstrucoes[103] = {5'd15, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[104] = {5'd25, 5'd1, 22'd4};
			memoriaDeInstrucoes[105] = {5'd24, 5'd1, 22'd19};
			memoriaDeInstrucoes[106] = {5'd25, 5'd1, 22'd13};
			memoriaDeInstrucoes[107] = {5'd24, 5'd1, 22'd3};
			memoriaDeInstrucoes[108] = {5'd23, 5'd1, 22'd19};
			memoriaDeInstrucoes[109] = {5'd24, 5'd1, 22'd4};
			memoriaDeInstrucoes[110] = {5'd25, 5'd31, 22'd113};
			memoriaDeInstrucoes[111] = {5'd24, 5'd31, 22'd2};
			memoriaDeInstrucoes[112] = {5'd16, 27'd6};
			memoriaDeInstrucoes[113] = {5'd19, 5'd4, 22'd0};
			memoriaDeInstrucoes[114] = {5'd24, 5'd4, 22'd18};
			memoriaDeInstrucoes[115] = {5'd23, 5'd1, 22'd13};
			memoriaDeInstrucoes[116] = {5'd23, 5'd2, 22'd18};
			memoriaDeInstrucoes[117] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
			memoriaDeInstrucoes[118] = {5'd26, 5'd4, 5'd3, 17'd0};
			memoriaDeInstrucoes[119] = {5'd24, 5'd4, 22'd20};
			memoriaDeInstrucoes[120] = {5'd23, 5'd1, 22'd20};
			memoriaDeInstrucoes[121] = {5'd20, 5'd1, 22'd0};
			memoriaDeInstrucoes[122] = {5'd18, 27'dx};
			PrimeiroClock <= 1;
		end
	end
		
	assign instrucao = memoriaDeInstrucoes[endereco[9:0]];
	
endmodule 