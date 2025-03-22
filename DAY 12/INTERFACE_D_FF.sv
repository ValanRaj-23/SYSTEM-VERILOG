interface intf(input bit clk);
  logic rst;
  logic d;
  logic q;
  
  clocking cb@(posedge clk);
    input   q;
    output #2 rst;
    output #2 d;
endclocking
  
    
endinterface
