module dynamic_array;
byte unsigned arr1[];

	initial begin
		arr1 = new[8];
		foreach (arr1[i])
		begin
			arr1[i] = $random;
		end
		$display("size of arr1 : %0d", arr1.size());
		$display("arr1 : %p", arr1);
		arr1.shuffle();
		$display(" arr1 : %p", arr1);
	end
endmodule

// # size of arr1 : 8
// # arr1 : '{36, 129, 9, 99, 13, 141, 101, 18}
// #  arr1 : '{129, 141, 13, 99, 9, 18, 101, 36}
