module sort_array;
byte arr1 [];

	initial begin
		arr1 = new[10];	
		arr1 = '{9, 1, 8, 2, 7, 3, 6, 4, 5, 0};
		arr1.sort();
		$display("sort arr1 : %0p", arr1);
		arr1.rsort();
		$display("reverse sort arr1 : %0p", arr1);
	end

endmodule

//# sort arr1 : 0 1 2 3 4 5 6 7 8 9
//# reverse sort arr1 : 9 8 7 6 5 4 3 2 1 0
