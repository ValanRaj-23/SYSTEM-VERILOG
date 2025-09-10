//14. Constraint to Generate Pattern 0, 2, 1, 3, 4, 6, 5, 7, 8.


class parent;
  rand bit [7:0] data1 [];
  rand bit order;
  constraint c1 { data1.size inside {10};}
  constraint c3 { 
    foreach(data1[i]) {
      if ((i == 1) || (i == 5))
        data1[i] == i + 1;  
      else if ((i == 2) || (i == 6))
        data1[i] == i - 1;   
      else 
        data1[i] == i;       
    }
  }
    
endclass


module test();
  parent pr;
  
  initial begin
    pr = new();
	
    repeat(10)
      begin
	void'(pr.randomize());
        $display("order = %0b | data1 = %p",pr.order, pr.data1);
      end
  end
endmodule
