module queue1;
int arr1[$:3];

	initial begin
		arr1 = '{33,44};
		arr1.push_front(22);
		arr1.push_back(55);
		$display(" arr1 : %p", arr1);
		
		arr1.delete(3);
		$display(" arr1 : %p", arr1);

	end
endmodule
//
//#  arr1 : '{22, 33, 44, 55}
//#  arr1 : '{22, 33, 44}

