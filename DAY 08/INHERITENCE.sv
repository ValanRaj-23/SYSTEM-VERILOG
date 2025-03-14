class calc;
	int data1 = 5;
	int data2 = 10;
	longint result;
	function void add();
		result = data1 + data2;
		$display("\t ADD : %0d + %0d = %0d", data1, data2, result);
	endfunction
endclass


class calc_v1 extends calc;
	function void sub();
		super.result = super.data1 - super.data2;
		$display("\t SUB : %0d - %0d = %0d", super.data1, super.data2, super.result);	
	endfunction

	function void add();
		super.add();
		$display("\t ADD : %0d + %0d = %0d", super.data1, super.data2, super.result);	
    endfunction
endclass


class calc_v2 extends calc;

	function void multiply();
	       	super.result = super.data1 * super.data2;
		$display("\t MULTIPLY : %0d X %0d = %0d", super.data1, super.data2, super.result);
	endfunction
endclass


module calculator;
	calc obj0;
	calc_v1 obj1;
	calc_v2 obj2;
	initial begin
	obj0 = new();

	obj1 = new();
	obj1.add();
	obj1.sub();
	obj2 = new();
	obj2.multiply();
	#100;
	$finish;

end
endmodule

// #        ADD : 5 + 10 = 15
// #        ADD : 5 + 10 = 15
// #        SUB : 5 - 10 = -5
// #        MULTIPLY : 5 X 10 = 50

