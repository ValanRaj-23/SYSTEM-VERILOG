`include "interface.sv"
module tb;
reg clk = 0;
  
  always #5 clk = ~clk;
  
  intf intf_ds(clk);
  d_ff uut(intf_ds);
  
  always @(intf_ds.cb.q)
    $display("Time=%0t, Sampled q = %0b", $time, intf_ds.cb.q);
  
  initial begin
     	intf_ds.cb.rst <= 0;
    	intf_ds.cb.d <= 1;
    #20 intf_ds.cb.rst <= 1;
    
    repeat(20)
      begin
        #5 
        intf_ds.cb.d <= $urandom % 2;
      end
  end
  
  initial begin
    $monitor("%t rst = %0d q = %0d",$time, intf_ds.rst, intf_ds.cb.q);
    $dumpfile("dump.vcd");
    $dumpvars;
    #500;
    $finish;
  end
  
endmodule

    
    
    
    
    
