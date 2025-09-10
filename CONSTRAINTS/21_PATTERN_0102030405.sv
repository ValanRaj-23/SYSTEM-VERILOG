//13. Write a constraint to generate a pattern 0102030405.

class parent;
  rand bit [7:0] data1 [];
  rand bit order;
  constraint c1 { data1.size inside {5};}
  constraint c3 { 
    foreach(data1[i])
      data1[i] == i + 1;
  }
    
endclass


module test();
  parent pr;
  
  
  initial begin
    pr = new();

      begin
		void'(pr.randomize());
        foreach(pr.data1[i])
          $write("0%0d", pr.data1[i]);
      end
  end
endmodule
