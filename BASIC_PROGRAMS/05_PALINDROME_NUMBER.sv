module test;
  int num;
  int temp, digit, result;
  
  initial begin
    num = 2333;
    temp = num;
    result = 0;
    
    while( temp > 0)
    begin
      digit = temp % 10;
      result = result * 10 + digit;
      temp = temp / 10;
    end
    $display("num = %0d", result);
    check_palindrome();
  end
  
	function void check_palindrome();
  	if(result == num)
      $display("the given number is palindrome");
    else
      $display("the given number is not a palindrome");
  	endfunction
  
endmodule
