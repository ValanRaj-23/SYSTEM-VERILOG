// Derive odd numbers within the range of 10 to 30 using S

class parent;
  rand bit [7:0] data1;
  constraint c1 { data1 inside {[10:30]};
                data1 % 2 == 1;
                
  }
    
endclass


module test();
  parent pr;
  
  initial begin
    pr = new();
	
    repeat(10)
      begin
	void'(pr.randomize());
        $display("data1 = %0d", pr.data1);
      end
  end
endmodule
