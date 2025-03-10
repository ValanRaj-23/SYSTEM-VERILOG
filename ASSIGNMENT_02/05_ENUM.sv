
module enum_1;
logic [3:0] a,b;
logic [3:0] calc, result;
logic [3:0] sel;


enum {ADD = 2, SUB, JE = 10, JNE, ST}opcode;

initial begin
	$display(" ADD : %0d SUB  %0d", ADD, SUB);
	$display(" JNE : %0d", JNE);
	a = 5;
	b = 4;
	sel = ADD;
	#10;
	sel = SUB;
	
end

always@(*)
begin
	case(sel)
		ADD : result = a + b;
		SUB : result = a - b;
	endcase
	$display(" result = %0d", result);
end
endmodule

	
//#  ADD : 2 SUB  3
//#  JNE : 11
//#  result = 9
//#  result = 1
