
module fork_join;

int r_sum, r_product, r_diff;
int a, b;


initial begin
	$display("before fork_join");
	#10; $display("before fork_join with #10");

	a = 0;
	b = 0;

	fork	
		#10 a = 5;
		#30 b = 10;
		#40 r_sum = sum(a, b);  
		#45 r_diff = diff(a, b);
		#20 r_product = product(a, b);
		#55 r_product = product(a, b);
		$display("Statement without delay");                 	
		$display("Sum of numbers : %0d", r_sum);
		$display("Product of numbers : %0d", r_product);
		$display("Difference of numbers : %0d", r_diff);
		begin 
			#60;
			$display("Statement without delay");                 	
			$display("Sum of numbers : %0d", r_sum);
			$display("Product of numbers : %0d", r_product);
			$display("Difference of numbers : %0d", r_diff);
		end
	join	
end

endmodule

function int sum(input int a, input int b);
return a + b;
endfunction

function int product(input int a, input int b);
return a * b;
endfunction

function int diff(input int a, input int b);
return a - b;
endfunction

//# before fork_join
//# before fork_join with #10
//# Statement without delay
//# Sum of numbers : 0
//# Product of numbers : 0
//# Difference of numbers : 0
//# Statement without delay
//# Sum of numbers : 15
//# Product of numbers : 50
//# Difference of numbers : -5
