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
		memoriaDeInstrucoes[1] = {5'd25, 5'd1, 22'd2};
		memoriaDeInstrucoes[2] = {5'd24, 5'd1, 22'd2};
		memoriaDeInstrucoes[3] = {5'd16, 27'd104};
		memoriaDeInstrucoes[4] = {5'd25, 5'd1, 22'd0};
		memoriaDeInstrucoes[5] = {5'd24, 5'd1, 22'd9};
		memoriaDeInstrucoes[6] = {5'd23, 5'd1, 22'd8};
		memoriaDeInstrucoes[7] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[8] = {5'd3, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[9] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[10] = {5'd24, 5'd4, 22'd11};
		memoriaDeInstrucoes[11] = {5'd23, 5'd1, 22'd9};
		memoriaDeInstrucoes[12] = {5'd23, 5'd2, 22'd11};
		memoriaDeInstrucoes[13] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[14] = {5'd25, 5'd0, 22'd0};
		memoriaDeInstrucoes[15] = {5'd12, 5'd3, 5'd0, 17'd102};
		memoriaDeInstrucoes[16] = {5'd23, 5'd1, 22'd9};
		memoriaDeInstrucoes[17] = {5'd24, 5'd1, 22'd12};
		memoriaDeInstrucoes[18] = {5'd23, 5'd1, 22'd9};
		memoriaDeInstrucoes[19] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[20] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[21] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[22] = {5'd24, 5'd4, 22'd10};
		memoriaDeInstrucoes[23] = {5'd25, 5'd1, 22'd4};
		memoriaDeInstrucoes[24] = {5'd24, 5'd1, 22'd11};
		memoriaDeInstrucoes[25] = {5'd23, 5'd1, 22'd10};
		memoriaDeInstrucoes[26] = {5'd23, 5'd2, 22'd8};
		memoriaDeInstrucoes[27] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[28] = {5'd25, 5'd0, 22'd0};
		memoriaDeInstrucoes[29] = {5'd12, 5'd3, 5'd0, 17'd63};
		memoriaDeInstrucoes[30] = {5'd23, 5'd1, 22'd10};
		memoriaDeInstrucoes[31] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[32] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[33] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[34] = {5'd24, 5'd4, 22'd16};
		memoriaDeInstrucoes[35] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[36] = {5'd23, 5'd2, 22'd16};
		memoriaDeInstrucoes[37] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[38] = {5'd26, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[39] = {5'd24, 5'd4, 22'd14};
		memoriaDeInstrucoes[40] = {5'd23, 5'd1, 22'd12};
		memoriaDeInstrucoes[41] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[42] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[43] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[44] = {5'd24, 5'd4, 22'd16};
		memoriaDeInstrucoes[45] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[46] = {5'd23, 5'd2, 22'd16};
		memoriaDeInstrucoes[47] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[48] = {5'd26, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[49] = {5'd24, 5'd4, 22'd15};
		memoriaDeInstrucoes[50] = {5'd23, 5'd1, 22'd14};
		memoriaDeInstrucoes[51] = {5'd23, 5'd2, 22'd15};
		memoriaDeInstrucoes[52] = {5'd14, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[53] = {5'd25, 5'd0, 22'd0};
		memoriaDeInstrucoes[54] = {5'd12, 5'd3, 5'd0, 17'd57};
		memoriaDeInstrucoes[55] = {5'd23, 5'd1, 22'd10};
		memoriaDeInstrucoes[56] = {5'd24, 5'd1, 22'd12};
		memoriaDeInstrucoes[57] = {5'd23, 5'd1, 22'd10};
		memoriaDeInstrucoes[58] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[59] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[60] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[61] = {5'd24, 5'd4, 22'd10};
		memoriaDeInstrucoes[62] = {5'd16, 27'd25};
		memoriaDeInstrucoes[63] = {5'd23, 5'd1, 22'd9};
		memoriaDeInstrucoes[64] = {5'd23, 5'd2, 22'd12};
		memoriaDeInstrucoes[65] = {5'd28, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[66] = {5'd25, 5'd0, 22'd1};
		memoriaDeInstrucoes[67] = {5'd12, 5'd3, 5'd0, 17'd96};
		memoriaDeInstrucoes[68] = {5'd23, 5'd1, 22'd9};
		memoriaDeInstrucoes[69] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[70] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[71] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[72] = {5'd24, 5'd4, 22'd16};
		memoriaDeInstrucoes[73] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[74] = {5'd23, 5'd2, 22'd16};
		memoriaDeInstrucoes[75] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[76] = {5'd26, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[77] = {5'd24, 5'd4, 22'd13};
		memoriaDeInstrucoes[78] = {5'd23, 5'd1, 22'd12};
		memoriaDeInstrucoes[79] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[80] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[81] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[82] = {5'd24, 5'd4, 22'd16};
		memoriaDeInstrucoes[83] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[84] = {5'd23, 5'd2, 22'd16};
		memoriaDeInstrucoes[85] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[86] = {5'd26, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[87] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[88] = {5'd23, 5'd2, 22'd9};
		memoriaDeInstrucoes[89] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[90] = {5'd15, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[91] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[92] = {5'd23, 5'd2, 22'd16};
		memoriaDeInstrucoes[93] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[94] = {5'd23, 5'd4, 22'd13};
		memoriaDeInstrucoes[95] = {5'd15, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[96] = {5'd23, 5'd1, 22'd9};
		memoriaDeInstrucoes[97] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[98] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[99] = {5'd22, 5'd3, 5'd4, 17'd0};
		memoriaDeInstrucoes[100] = {5'd24, 5'd4, 22'd9};
		memoriaDeInstrucoes[101] = {5'd16, 27'd11};
		memoriaDeInstrucoes[102] = {5'd23, 5'd31, 22'd7};
		memoriaDeInstrucoes[103] = {5'd27, 5'd31, 22'd0};
		memoriaDeInstrucoes[104] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[105] = {5'd25, 5'd2, 22'd1};
		memoriaDeInstrucoes[106] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[107] = {5'd25, 5'd4, 22'd9};
		memoriaDeInstrucoes[108] = {5'd15, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[109] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[110] = {5'd25, 5'd2, 22'd2};
		memoriaDeInstrucoes[111] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[112] = {5'd25, 5'd4, 22'd6};
		memoriaDeInstrucoes[113] = {5'd15, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[114] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[115] = {5'd25, 5'd2, 22'd3};
		memoriaDeInstrucoes[116] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[117] = {5'd25, 5'd4, 22'd8};
		memoriaDeInstrucoes[118] = {5'd15, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[119] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[120] = {5'd25, 5'd2, 22'd4};
		memoriaDeInstrucoes[121] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[122] = {5'd25, 5'd4, 22'd7};
		memoriaDeInstrucoes[123] = {5'd15, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[124] = {5'd25, 5'd1, 22'd4};
		memoriaDeInstrucoes[125] = {5'd24, 5'd1, 22'd19};
		memoriaDeInstrucoes[126] = {5'd23, 5'd1, 22'd19};
		memoriaDeInstrucoes[127] = {5'd24, 5'd1, 22'd8};
		memoriaDeInstrucoes[128] = {5'd25, 5'd31, 22'd131};
		memoriaDeInstrucoes[129] = {5'd24, 5'd31, 22'd7};
		memoriaDeInstrucoes[130] = {5'd16, 27'd4};
		memoriaDeInstrucoes[131] = {5'd19, 5'd4, 22'd0};
		memoriaDeInstrucoes[132] = {5'd24, 5'd4, 22'd18};
		memoriaDeInstrucoes[133] = {5'd23, 5'd1, 22'd2};
		memoriaDeInstrucoes[134] = {5'd23, 5'd2, 22'd18};
		memoriaDeInstrucoes[135] = {5'd1, 5'd1, 5'd2, 5'd3, 12'dx};
		memoriaDeInstrucoes[136] = {5'd26, 5'd4, 5'd3, 17'd0};
		memoriaDeInstrucoes[137] = {5'd24, 5'd4, 22'd20};
		memoriaDeInstrucoes[138] = {5'd23, 5'd1, 22'd20};
		memoriaDeInstrucoes[139] = {5'd20, 5'd1, 22'd0};
		memoriaDeInstrucoes[140] = {5'd18, 27'dx};
			PrimeiroClock <= 1;
		end
	end
		
	assign instrucao = memoriaDeInstrucoes[endereco[9:0]];
	
endmodule 