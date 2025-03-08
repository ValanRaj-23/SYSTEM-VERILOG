module dynamic_array;
byte unsigned arr1[];

initial begin
	arr1 = new[10];
	foreach(arr1[i])
	begin
		arr1[i]=$urandom;
	end
	//arr1 = '{1,2,3,4,5,6,7,8,9,10};
	$display("arr1 = %p", arr1);
	arr1.sort();
	$display("arr1 = %p", arr1);
end
endmodule

//# arr1 = '{35, 50, 10, 29, 184, 218, 192, 172, 50, 28}
//# arr1 = '{10, 28, 29, 35, 50, 50, 172, 184, 192, 218}
