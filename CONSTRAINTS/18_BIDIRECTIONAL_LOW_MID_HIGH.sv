class parent;
  rand bit [7:0] low, mid, high;
  constraint c1 { low < mid;
                 mid < high;
                	}

endclass


module test();
  
  parent pr;
  
  initial begin
    pr = new();

    repeat(10)
      begin
    void'(pr.randomize());
    $display("LOW = %0d MID = %0d HIGH = %0d", pr.low, pr.mid, pr.high);
      end
  end
endmodule
