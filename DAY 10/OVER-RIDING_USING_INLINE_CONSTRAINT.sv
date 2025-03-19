class base_c;
  rand bit[3:0] a, b, c;
  
  extern constraint c1;
endclass
 
constraint base_c::c1 { a > 2;
                      	b > 14;
                      	c > 13;}
  
module over_riding;
 	base_c dc;
  		initial begin
          dc = new();
          repeat(3)
            begin
              dc.randomize();
              $display("Before over-riding");
              $display("a = %0d b = %0d c = %0d", dc.a, dc.b, dc.c);

              dc.randomize() with { a > 3;
                                   	b > 13;
                                    c > 13;
                                  };
              $display("After over-riding");
              $display("a = %0d b = %0d c = %0d", dc.a, dc.b, dc.c);
            end
        end
endmodule              


// # Before over-riding
// # a = 6 b = 15 c = 14
// # After over-riding
// # a = 8 b = 15 c = 15
// # Before over-riding
// # a = 12 b = 15 c = 14
// # After over-riding
// # a = 9 b = 15 c = 14
// # Before over-riding
// # a = 11 b = 15 c = 15
// # After over-riding
// # a = 14 b = 15 c = 15
