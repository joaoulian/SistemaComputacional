module entradaDeDadosSwitch (entradaSwitch,
									  dado,
									  enter,
									  estagioEntradaSwitch,
									  estagioEntradaUC,
									  estagioEntradaBanco);
									  
//Entradas
	input  [8:0] entradaSwitch;
	input 		enter; //Sinal do botao com debounce
	input estagioEntradaUC;
	input estagioEntradaBanco;
	
//Saidas
	output reg [31:0] dado;
	output reg estagioEntradaSwitch;

//Logica sequencial
	always @ (enter)
		begin
			if (enter && estagioEntradaUC) begin
				dado[8:0] <= entradaSwitch[8:0];
				dado[31:8] <= entradaSwitch[8];
				estagioEntradaSwitch <= 1'b1;
			end else if (estagioEntradaSwitch == 1'b1 && 
							 estagioEntradaBanco  == 1'b0  && 
							 estagioEntradaUC     == 1'b1) begin
				estagioEntradaSwitch <= 1'b1;
			end else begin
				estagioEntradaSwitch <= 1'b0;
			end
		end
endmodule 