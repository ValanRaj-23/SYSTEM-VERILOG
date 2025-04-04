// 24. Write a constraint to generate 18 zeros and no consecutive ones in a 32
// bit Variable

 class ones;
   rand bit [31:0] a ;
  
  	constraint c1 { $countones(a) == 14;}
	constraint c2 {
  					foreach(a[i]) 
					if (i > 0)
    					if(a[i-1] == 1)
      						a[i] == 0;   					
				   }

endclass

module test;
  ones on;
  initial begin
    on = new();
    repeat(3)
      begin
        void'(on.randomize());
        $display(" a = %b ", on.a);
      end
  end
endmodule

//   a = 10101001010010101010101010001010 
//   a = 10101010101001010100001010100101 
//   a = 10101010101010100100100101001001 
