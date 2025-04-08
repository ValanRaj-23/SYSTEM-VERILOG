module insert_queue;
shortint arr1[$] = '{22, 23, 24, 25, 26, 28, 20, 30};
shortint arr2[$] = '{1, 2, 3, 4, 5};
shortint arr3[$];


initial begin
	foreach(arr1[i])
	begin
		arr3[i] = arr1[i];
	end

	foreach(arr2[i])
	begin
		arr3[i + arr1.size()] = arr2[i];
	end
	$display(" arr1 : %p ", arr1);
	$display(" arr2 : %p ", arr2);
	$display(" arr3 : %0p ", arr3);
end
endmodule

//#  arr1 : '{22, 23, 24, 25, 26, 28, 20, 30}
//#  arr2 : '{1, 2, 3, 4, 5}
//#  arr3 : 22 23 24 25 26 28 20 30 1 2 3 4 5
