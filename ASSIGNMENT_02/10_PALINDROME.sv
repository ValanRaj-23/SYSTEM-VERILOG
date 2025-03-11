module string_methods;
string str1, str2;


initial begin

		check_palindrome("ECE");
		check_palindrome("RACE_CAR");
end

endmodule

function void check_palindrome(string str1);
begin
	string str2;
	str2 = reverse(str1);
	$display(" reverse of %0s is  %0s", str1, str2);
	check(str1, str2);

end
endfunction
	
function automatic string reverse (string s1);
		string s2;
		foreach(s1[i])
		begin
			s2 = {s1[i],s2};
		end


return s2;
endfunction

function void check(string s1, s2);
begin
		if(s1 == s2)
			$display(" %0s is a palindrome", s1);
		else
			$display(" %0s is not a palindrome", s1);
end
endfunction

//#  reverse of ECE is  ECE
//#  ECE is a palindrome
//#  reverse of RACE_CAR is  RAC_ECAR
//#  RACE_CAR is not a palindrome
