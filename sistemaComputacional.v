module sistemaComputacional(clock50,
									 reset,
									 enter,
									 entradaSwitch,
									 saidaCentena,
									 saidaDezena,
									 saidaNegativo,
									 saidaUnidade,
									 saidaDezenaOpcode,
									 saidaUnidadeOpcode,
									 opcode,
									 dadoEscritaNovo,
									 dadoRd,
									 rd,
									 imediatoExtendido22);
									 
//Entradas
	input clock50;
	input reset;
	input enter;
	input [8:0] entradaSwitch;

//Saidas
	wire [31:0] ulaSaida;
	wire [31:0] dadoEscrita;
	output [31:0] dadoEscritaNovo;
	output [4:0] opcode;
	wire clock;
	
//Variaveis locais
	wire [31:0] pcParaEndereco;
	wire [31:0] instrucao;
	wire [31:0] imediatoExtendido17;
	output [31:0] imediatoExtendido22;
	output [31:0]	dadoRd;
	wire [31:0] enderecoLoad;
	wire [31:0]	dadoRs;
	wire [31:0] dadoEscritaULA;
	wire [31:0] vaiPraULA;
	wire		  selecionaRegEscrita;
	wire 		  memDadosEscrita;
	wire		  selecionaULA;
	wire		  selecionaLoadR;
	wire 		  selecionaRegDado;
	wire		  selecionaEndEscrita;
	wire [3:0] ulaControle;
	wire [2:0] pcControle;
	wire [4:0] rs;
	wire [4:0] rt;
	output [4:0] rd;
	wire [4:0] endEscrita;
	wire [4:0] endEscritaNovo;
	wire zero;
	wire [31:0] saidaMemDados;
	wire selecionaSwitch;
	wire [31:0] dadoEntradaSwitch;
	wire estagioEntradaUC;
	wire estagioEntradaBanco;
	wire estagioEntradaSwitch;
	wire estagioSaidaUC;
	
	output [6:0] saidaCentena;
	output [6:0] saidaDezena;
	output [6:0] saidaUnidade;
	output [6:0] saidaNegativo;
	
	wire [3:0]  centena;
	wire [3:0]  dezena;
	wire [3:0]  unidade;
	wire indicaNegativo;
	wire selecionaLoadImediato;
	wire selecionaDadoSwitch;
	
	wire [3:0] dezenaOpcode;
	wire [3:0] unidadeOpcode;
	
	output [6:0] saidaDezenaOpcode;
	output [6:0] saidaUnidadeOpcode;
	wire [26:0] enderecoJump;
	
	assign enderecoJump = instrucao[26:0];
	
	temporizador t (.clockin(clock50),
						 .clockout(clock));
		
	contadorDePrograma PC(.clock(clock),
							    .reset(reset),
								 .controlePC(pcControle),
								 .enderecoJump(enderecoJump),
								 .deslocamentoBranch(imediatoExtendido17),
								 .pc(pcParaEndereco),
								 .endRegister(dadoRd));
	
	memoriaDeInstrucoes M1(.endereco(pcParaEndereco),
								  .instrucao(instrucao),
								  .clock(clock));
	
	assign opcode = instrucao[31:27];
	
	unidadeDeControle uc		(.opcode(opcode),
									 .zero(zero),
									 .selecionaRegEscrita(selecionaRegEscrita),
									 .memDadosEscrita(memDadosEscrita),
									 .selecionaULA(selecionaULA),
									 .selecionaRegDado(selecionaRegDado),
									 .selecionaEndEscrita(selecionaEndEscrita),
									 .ulaControle(ulaControle),
									 .pcControle(pcControle),
									 .selecionaSwitch(selecionaSwitch),
									 .estagioEntradaUC(estagioEntradaUC),
									 .estagioEntradaBanco(estagioEntradaBanco),
									 .estagioEntradaSwitch(estagioEntradaSwitch),
									 .estagioSaidaUC(estagioSaidaUC),
									 .selecionaLoadImediato(selecionaLoadImediato),
									 .selecionaDadoSwitch(selecionaDadoSwitch),
									 .selecionaLoadR(selecionaLoadR));
								  
	extensor17 imediatoExtensor17 (.entrada(instrucao[16:0]),
										    .saida(imediatoExtendido17));
										  
	extensor22 imediatoExtensor22 (.entrada(instrucao[21:0]),
										    .saida(imediatoExtendido22));
	
	assign rd = instrucao[26:22];
	assign rs = instrucao[21:17]; 
	assign rt = instrucao[16:12];
	
	assign zero = dadoRd == dadoRs ? 1 : 0;
	
	mux multiplexador0(.entrada1(rs),
							 .entrada2(rt),
							 .seletor(selecionaEndEscrita),
							 .saida(endEscrita));
							 	
	entradaDeDadosSwitch e1 (.entradaSwitch(entradaSwitch),
									 .dado(dadoEntradaSwitch),
									 .enter(enter),
									 .estagioEntradaSwitch(estagioEntradaSwitch),
									 .estagioEntradaUC(estagioEntradaUC),
									 .estagioEntradaBanco(estagioEntradaBanco));
	
	mux multiplexador5 (.entrada1(endEscrita),
							  .entrada2(rd),
							  .seletor(selecionaSwitch),
							  .saida(endEscritaNovo));
	
	mux multiplexador4 (.entrada1(dadoEscritaULA),
							  .entrada2(dadoEntradaSwitch),
							  .seletor(selecionaDadoSwitch),
							  .saida(dadoEscrita));
							  
	mux multiplexador8 (.entrada1(dadoEscrita),
							  .entrada2(imediatoExtendido22),
							  .seletor(selecionaLoadImediato),
							  .saida(dadoEscritaNovo));
	
	bancoDeRegistradores br1 (.clock(clock),
									  .enderecoLeitura1(rd),
									  .dadoLeitura1(dadoRd),
									  .enderecoLeitura2(rs),
									  .dadoLeitura2(dadoRs),
									  .enderecoEscrita(endEscritaNovo),
									  .dadoEscrita(dadoEscritaNovo),
									  .regControle(selecionaRegEscrita),
									  .estagioEntradaSwitch(estagioEntradaSwitch),
									  .estagioEntradaBanco(estagioEntradaBanco),
									  .estagioEntradaUC(estagioEntradaUC));
									 	
	mux multiplexador1(.entrada1(dadoRs),
							 .entrada2(imediatoExtendido17),
							 .seletor(selecionaULA),
							 .saida(vaiPraULA));
	
	ula cpuULA (.ulaControle(ulaControle),
					.A(dadoRd),
					.B(vaiPraULA),
					.ulaSaida(ulaSaida));
					
	mux muxLoadR (.entrada1(imediatoExtendido22),
					  .entrada2(dadoRs),
					  .seletor(selecionaLoadR),
					  .saida(enderecoLoad));
	
	memoriaDeDados memDados (.clock(clock),
									 .enderecoLeitura(enderecoLoad),
									 .dadoLeitura(saidaMemDados),
									 .enderecoEscrita(enderecoLoad),
									 .dadoEscrita(dadoRd),
									 .memDadosControle(memDadosEscrita));
	
	mux multiplexador2 (.entrada1(ulaSaida),
							  .entrada2(saidaMemDados),
							  .seletor(selecionaRegDado),
							  .saida(dadoEscritaULA));
							 
	quebraNumero q1 (.entrada(dadoRd),
						  .indicaNegativo(indicaNegativo),
						  .estagioSaidaUC(estagioSaidaUC),
						  .centena(centena),
						  .dezena(dezena),
						  .unidade(unidade),
						  .reset(reset));
						  
	binarioParaBCD2 bOp1 (.binario(opcode),
								 .dezena(dezenaOpcode),
								 .unidade(unidadeOpcode));
	
	seteSegmentos d2 (.entrada(dezenaOpcode),
							.saida(saidaDezenaOpcode));
	
	seteSegmentos u2 (.entrada(unidadeOpcode),
							.saida(saidaUnidadeOpcode));
	
	seteSegmentos c1 (.entrada(centena),
							.saida(saidaCentena));
							
	seteSegmentos d1 (.entrada(dezena),
							.saida(saidaDezena));
	
	seteSegmentos u1 (.entrada(unidade),
							.saida(saidaUnidade));
	
	seteSegmentosSinalNegativo n1 (.negativo(indicaNegativo),
											 .sinalNegativo(saidaNegativo));
					
						
endmodule 