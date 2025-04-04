//25. write a constraint to generate a variable with 0-31 bits should be 1 and 32-61 bits should be 0.

class ones;
  rand bit [63:0] a ;
  
  constraint  c1{ 
    foreach(a[i])
      if(i < 32)
        a[i] == 1;
    else 
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

//  a = 0000000000000000000000000000000011111111111111111111111111111111 
//  a = 0000000000000000000000000000000011111111111111111111111111111111 
//  a = 0000000000000000000000000000000011111111111111111111111111111111 
