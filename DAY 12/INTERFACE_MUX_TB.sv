`include "interface.sv"
module mux_4x1_tb;
  intf inf();  

  mux_4x1_ds uut(inf); 

  initial begin
    inf.d = 4'b0001; inf.sel = 2'b00; #10; 
    inf.d = 4'b0010; inf.sel = 2'b01; #10;
    inf.d = 4'b0100; inf.sel = 2'b10; #10;
    inf.d = 4'b1000; inf.sel = 2'b11; #10;
    $finish;
  end

  initial begin
    $monitor(" d = %b sel = %b y = %0b", inf.d, inf.sel, inf.y);
    $dumpfile("mux_4x1.vcd");
    $dumpvars(0, mux_4x1_tb);
  end
endmodule
