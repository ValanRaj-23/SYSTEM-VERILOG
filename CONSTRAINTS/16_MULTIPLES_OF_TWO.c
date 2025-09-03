// 10. Write a constraint to generate multiples of power 2.

class parent;
  rand bit [7:0] arr1[8];
  
  constraint c1 { 
    foreach(arr1[i])
      arr1[i] % 2 == 0;
  }
    
endclass



module test();
  parent pr;

  initial begin
    pr = new();
	
    repeat(10)
      begin
	      void'(pr.randomize());
        $display("arr1 = %p", pr.arr1);
      end
  end
endmodule
