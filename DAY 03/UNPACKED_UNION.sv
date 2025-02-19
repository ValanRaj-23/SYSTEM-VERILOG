module unpacked_union;

	union {
		int data3;
		bit [15:0] data2;		
		logic [7:0] data1;
		} list;

initial begin

	list.data3 = 'hFFFFFFFF;
	$display(" elements of list data1 : %0b", list.data1);
	$display(" elements of list data2 : %0b", list.data2);
	$display(" elements of list data3 : %0b", list.data3);

	list.data2 = 'h55;
	$display(" elements of list data1 : %0b", list.data1);
	$display(" elements of list data2 : %0b", list.data2);
	$display(" elements of list data3 : %0b", list.data3);

	list.data1 = 'h8;
	$display(" elements of list data1 : %0b", list.data1);
	$display(" elements of list data2 : %0b", list.data2);
	$display(" elements of list data3 : %0b", list.data3);


	$display(" elements of list : ", list); 

end
endmodule

//SIMULATION OUTPUT
/*
#  elements of list data1 : x
#  elements of list data2 : 1111111111111111
#  elements of list data3 : 11111111111111111111111111111111
#  elements of list data1 : 1010101
#  elements of list data2 : 1010101
#  elements of list data3 : 11111111111111110000000001010101
#  elements of list data1 : 1000
#  elements of list data2 : 1000
#  elements of list data3 : 11111111111111110000000000001000
#  elements of list : -65528 8 8
*/

