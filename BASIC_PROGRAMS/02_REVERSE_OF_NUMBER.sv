//reverse of a number

module reverse_number;
  int num;
  int temp, digit, base, result;
  
  initial begin
    num 	= 1234;
    temp 	= num;
    result 	= 0;
    
    while(temp > 0)
      begin
     	digit 	= temp % 10;
    	result 	= result * 10 + digit;
    	temp = temp / 10;
      end
    $display("result = %0d", result);
  end
endmodule
    	
// result = 4321
