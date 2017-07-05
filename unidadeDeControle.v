module unidadeDeControle(opcode,
								 zero,
								 selecionaRegEscrita,
								 memDadosEscrita,
								 selecionaULA,
								 selecionaRegDado,
								 selecionaEndEscrita,
								 ulaControle,
								 pcControle,
								 selecionaSwitch,
								 estagioEntradaUC,
								 estagioEntradaSwitch,
								 estagioEntradaBanco,
								 estagioSaidaUC,
								 selecionaLoadImediato,
								 selecionaDadoSwitch,
								 selecionaLoadR);
	
//Entradas
	input [4:0] opcode;
	input 		 zero;
	input estagioEntradaSwitch;
	input estagioEntradaBanco;
	
//Saidas
	output reg 		  selecionaRegEscrita;
	output reg 		  memDadosEscrita;
	output reg 		  selecionaULA;
	output reg 		  selecionaRegDado;
	output reg 		  selecionaEndEscrita;
	output reg [3:0] ulaControle;
	output reg [2:0] pcControle;
	output reg 	 	  selecionaSwitch;
	output reg 		  estagioEntradaUC;
	output reg 		  estagioSaidaUC;
	output reg 		  selecionaLoadImediato;
	output reg 		  selecionaDadoSwitch;
	output reg 		  selecionaLoadR;
	
	always @ (opcode)
		begin
			//Determinar o memDadosEscrita
			if (opcode == 5'd24 || opcode == 5'd15) begin //sw e swr
				memDadosEscrita <= 1'b1;
			end else begin
				memDadosEscrita <= 1'b0;
			end
			
			//Determinar o selecionaRegEscrita (nao escreve no banco)
			if (opcode == 5'd12 || opcode == 5'd13 || opcode == 5'd16 || opcode == 5'd27) begin //beq, bne,j
				selecionaRegEscrita <= 1'b0;
			end else begin
				selecionaRegEscrita <= 1'b1;
			end
			
			//Determinar o selecionaRegDado (seleciona o dado da memoria:
			if (opcode == 5'd23 || opcode == 5'd26) begin
				selecionaRegDado <= 1'b1;
			end else begin
				selecionaRegDado <= 1'b0;
			end
			
			//Determinar o selecionaEndEscrita
			if (opcode == 5'd1  || opcode == 5'd3  ||
				 opcode == 5'd5  || opcode == 5'd7  ||
				 opcode == 5'd14 || opcode == 5'd28 ||
				 opcode == 5'd29 || opcode == 5'd30 ||
				 opcode == 5'd31) begin
				selecionaEndEscrita <= 1'b1;
			end else begin
				selecionaEndEscrita <= 1'b0;
			end
			
			//Determinar o selecionaULA
			if (opcode == 5'd2  || opcode == 5'd4  ||
				 opcode == 5'd6  || opcode == 5'd8  ||
				 opcode == 5'd9  || opcode == 5'd10 ||
				 opcode == 5'd11 || opcode == 5'd12 ||
				 opcode == 5'd13 || opcode == 5'd22 ||
				 opcode == 5'd23 || opcode == 5'd24) begin
				selecionaULA <= 1'b1; //Escolhe o imediato extendido para fazer a operacao na ULA
			end else begin
				selecionaULA <= 1'b0;
			end
			
			//Determinar ulaControle
			if (opcode == 5'd1 || opcode == 5'd2 || opcode == 5'd22) begin //add e addi
				ulaControle <= 4'd0;
			end else if (opcode == 5'd3 || opcode == 5'd4) begin //sub e subi
				ulaControle <= 4'd1;
			end else if (opcode == 5'd5 || opcode == 5'd6) begin //and e andi
				ulaControle <= 4'd2;
			end else if (opcode == 5'd7 || opcode == 5'd8) begin //or e ori
				ulaControle <= 4'd3;
			end else if (opcode == 5'd9) begin //not
				ulaControle <= 4'd4;
			end else if (opcode == 5'd10) begin //sr
				ulaControle <= 4'd5;
			end else if (opcode == 5'd11) begin //sl
				ulaControle <= 4'd6;
			end else if (opcode == 5'd14) begin //slt e slti
				ulaControle <= 4'd7;
			end else if (opcode == 5'd28) begin
				ulaControle <= 4'd8;
			end else if (opcode == 5'd29) begin
				ulaControle <= 4'd9;
			end else if (opcode == 5'd30) begin
				ulaControle <= 4'd10;
			end else if (opcode == 5'd31) begin
				ulaControle <= 4'd11;
			end else begin
				ulaControle <= 4'd12;
			end
			
			//Determinar pcControle
			if (opcode == 5'd16) begin //j
				pcControle <= 3'b001;
			end else if (opcode == 5'd27) begin //jr
				pcControle <= 3'b011;
			end else if ((opcode == 5'd12 && zero == 1) || (opcode == 5'd13 && zero == 0)) begin //beq e bne
				pcControle <= 3'b010;
			end else if (opcode == 5'd19 && !estagioEntradaSwitch || opcode == 5'd19 && !estagioEntradaBanco || opcode == 5'd18) begin
				pcControle <= 3'b111;
			end else begin
				pcControle <= 3'b000;
			end
		
			if (estagioEntradaBanco == 1'b1) begin
				pcControle <= 3'b000;
			end
			
			//Determinar selecionaSwitch
			if (opcode == 5'd19) begin
				estagioEntradaUC <= 1'b1;
			end else begin
				estagioEntradaUC <= 1'b0;
			end
			
			if (opcode == 5'd19 || opcode == 5'd25 || opcode == 5'd23 || opcode == 5'd26) begin
				selecionaSwitch <= 1'b1;
			end else begin
				selecionaSwitch <= 1'b0;
			end
			
			if (opcode == 5'd19) begin
				selecionaDadoSwitch <= 1'b1;
			end else begin
				selecionaDadoSwitch <= 1'b0;
			end
			
			//Determina selecionaLoadImediato
			if (opcode == 5'd25) begin
				selecionaLoadImediato <= 1'b1;
			end else begin
				selecionaLoadImediato <= 1'b0;
			end
			
			//Determina selecionaLoadR
			if (opcode == 5'd26 || opcode == 5'd15) begin
				selecionaLoadR <= 1'b1;
			end else begin
				selecionaLoadR <= 1'b0;
			end
						
			//Determinar saida de dados
			if (opcode == 5'd20) begin
				estagioSaidaUC <= 1'b1;
			end else begin
				estagioSaidaUC <= 1'b0;
			end
		
		end
endmodule
					