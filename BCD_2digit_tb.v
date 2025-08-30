module BCD_2digit_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire Cout;
	wire [7:0] sum;

	// Instantiate the Unit Under Test (UUT)
	BCD_2digit uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Cout(Cout), 
		.sum(sum)
	);

	initial begin
		A = 8'h50;
		B = 8'h50;
		Cin = 1'd0;
		#10;
		A = 8'h73;
		B = 8'h29;
		Cin = 1'd0;
		#10;
		A = 8'h80;
		B = 8'h69;
		Cin = 1'd0;
		#10;
		A = 8'h67;
		B = 8'h91;
		Cin = 1'd0;
		#10;
		A = 8'h77;
		B = 8'h15;
		Cin = 1'd0;
		#10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

