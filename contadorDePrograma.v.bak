module contadorDePrograma(clock,
								  reset, 
								  controlePC, 
								  enderecoJump, 
								  deslocamentoBranch, 
								  pc);
								  
//Entradas
	input clock;
	input [2:0] controlePC;
	input reset;
	input [26:0] enderecoJump;
	input [16:0] deslocamentoBranch;

//Saidas
	output reg [31:0] pc;
	
//Variaveis locais
	wire [31:0] jumpExtendido;
	extensor27 extendeJump (enderecoJump, jumpExtendido);
	
	wire [31:0] branchExtendido;
	extensor17 extendeBranch (deslocamentoBranch, branchExtendido);
	
	integer primeiroClock = 0;
		
//Logica sequencial	
	always @ (posedge clock or  posedge reset) begin
		if (reset) begin
				pc <= 32'd0;
		end else if (primeiroClock == 0) begin
			primeiroClock <= 1;
			pc <= 32'd0;
		end else begin
			case (controlePC)
				3'b000 : pc <= pc + 1;
				3'b001 : pc <= jumpExtendido;
				3'b010 : pc <= branchExtendido;
				3'b111 : pc <= pc;
				default : pc <= pc + 1;
			endcase
		end
	end
	
endmodule
						
	