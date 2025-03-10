module string_methods;
string str1, str2;
int temp,temp1;

	initial begin
		str1 = "VARIFICATION_ENGINEER";
		str1.putc(1,"E");
		temp =str1.len();
		$display("str1 size : %0d ", temp);
		$display("str1 : ", str1);
		str2 = "";
		foreach(str1[i])
		begin
			str2 = {str1[i],str2};
			$display("str1 %0d : %0s", i, str1[i]);
		end
			$display("str2 : %0s", str2);

	end
endmodule

//# str1 size : 21
//# str1 : VERIFICATION_ENGINEER
//# str1 0 : V
//# str1 1 : E
//# str1 2 : R
//# str1 3 : I
//# str1 4 : F
//# str1 5 : I
//# str1 6 : C
//# str1 7 : A
//# str1 8 : T
//# str1 9 : I
//# str1 10 : O
//# str1 11 : N
//# str1 12 : _
//# str1 13 : E
