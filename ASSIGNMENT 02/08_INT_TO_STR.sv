module str_to_int;
int data1,temp;
string data2;
longint result; 

	initial begin
		data1 = 100;
		data2 = "100";
		temp = data2.atoi();
		result = data1 + temp;
		$display(" result of %0d + %0d = %0d",data1, temp, result);

		data2.itoa(result);
		$display(" int to string %0d : %0s",result, data2);

	end

endmodule

//#  result of 100 + 100 = 200
//#  int to string 200 : 200
