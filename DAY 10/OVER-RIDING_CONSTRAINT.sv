class base_c;
  rand bit[3:0] a, b;
  
  extern constraint c1;
endclass
 
constraint base_c::c1 { a == 4;
                      	b > 14;}
  

class derived_c extends base_c;
  randc bit [3:0] c;
  constraint c1{ a == 2; ///over-riding
               	  b > 13;
               	  c > 10;
               }
endclass
  
module over_riding;
 	derived_c dc;
  		initial begin
          dc = new();
          repeat(5)
            begin
              void'(dc.randomize());
              $display(" a = %0d b = %0d c = %0d", dc.a, dc.b, dc.c);
            end
        end
endmodule              

 // a = 2 b = 14 c = 15
 // a = 2 b = 15 c = 11
 // a = 2 b = 15 c = 12
 // a = 2 b = 14 c = 14
 // a = 2 b = 14 c = 13
