module temporizador(clockin,
						  clockout);

   input clockin;
	output wire clockout;

	parameter n = 20;
	reg [n:0] count;
	
	always @ (posedge clockin) begin
		count <= count + 1;
	end
	
	assign clockout = count[n];
endmodule 