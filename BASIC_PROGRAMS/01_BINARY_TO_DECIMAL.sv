// write a program to convert the binary number into decimal number

module bin_deci();
int num = 11111;
int digit, temp, base, result;
  
  initial begin
    base = 1;
    temp = num;
    
    
    while(temp != 0)
    begin
       	digit 	= temp % 10;
      	result 	= result + (digit* base );
    	base 	= base * 2;
    	temp 	= temp / 10;
  	end
    $display(" result  = %0d", result);
  end
endmodule

//#  result  =  31
//#  quit
