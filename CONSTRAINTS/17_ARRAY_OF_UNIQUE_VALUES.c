
// 7. Without using randomization method or rand keyword(modifiers),
// generate an array of unique values.

class parent;
  bit [3:0] num1[8];
endclass



module test();
  bit [3:0] var1;
  parent pr;
  
  
  initial begin
    pr = new();

    for( int i = 0 ; i <= $size(pr.num1); i++)
	begin
      do var1 = $random % 8;
      while(var1 inside {pr.num1});
      pr.num1[i] = var1;
    end
    
      $display("num1 = %p", pr.num1);

  end
endmodule
