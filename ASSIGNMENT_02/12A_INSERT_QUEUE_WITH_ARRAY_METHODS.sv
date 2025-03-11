module insert_queue;
shortint arr1[$] = '{22, 23, 24, 25, 26, 28, 20, 30};
shortint arr2[$] = '{1, 2, 3, 4, 5};

initial begin
	arr1 = '{22, 23, 24, 25, 26, 28, 20, 30};
	arr2 = '{1, 2, 3, 4, 5};

	arr1.insert(0,11);
	$display(" arr1 : %0p ", arr1);
	foreach(arr2[i])
	begin
	arr1.insert(2 + i,arr2[i]);
	end
	$display(" arr1 : %0p ", arr1);
end
endmodule

// #  arr1 : 11 22 23 24 25 26 28 20 30
// #  arr1 : 11 22 1 2 3 4 5 23 24 25 26 28 20 30
