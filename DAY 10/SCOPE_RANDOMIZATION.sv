module scope_rand;
  bit [3:0] a, b, c;
  bit [3:0] arr [8];
  
  	initial begin
      a = 4;
      b = 5;
      c = 6;
      $display(" a = %0d b = %0d c = %0d", a, b, c);
      
      repeat(5)
      begin
        void'(std::randomize(a));
        void'(std::randomize(b) with {b < 10;
                                        b > 4;});
        void'(std::randomize(c) with { c inside {[11:15]};});
      	$display(" a = %0d b = %0d c = %0d", a, b, c);
      end

    end
endmodule

//  a = 4 b = 5 c = 6
//  a = 8 b = 5 c = 14
//  a = 12 b = 8 c = 11
//  a = 3 b = 7 c = 12
//  a = 15 b = 5 c = 13
//  a = 13 b = 6 c = 11
