module seteSegmentosSinalNegativo (negativo, sinalNegativo);

//Entradas
	input 	   	  negativo;

//Saidas
	output reg [6:0] sinalNegativo;

	always @(negativo) begin
		if (negativo) begin
			sinalNegativo <= 7'b1111110;
		end else begin
			sinalNegativo <= 7'b1111111;
		end 
	end

endmodule 