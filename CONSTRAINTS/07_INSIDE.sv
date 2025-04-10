//1. if A < 20 then b should be between 10 to 30
//   if a > 50 then B should be between 30 to 50


class implication;
  rand bit [7:0] A, B;
  rand bit [7:0] a, b;
  
  constraint c1{ 	if(A < 20)
    					b inside {[10:30]};  }
  
  constraint c2{ 	if(a > 50)
   						B inside {[30:50]};  }
  
endclass

module test;
  implication im;
  initial begin
    im = new();
    repeat(20)
      begin
        void'(im.randomize());
        $display("A = %0d b = %0d", im.A, im.b);
        $display("a = %0d B = %0d", im.a, im.B);
       

      end
  end
endmodule

// A = 150 b = 209
// a = 75 B = 36
// A = 92 b = 171
// a = 28 B = 71
// A = 192 b = 96
// a = 34 B = 23
// A = 21 b = 227
// a = 16 B = 144
// A = 24 b = 112
// a = 6 B = 182
// A = 86 b = 228
// a = 7 B = 132
// A = 68 b = 14
// a = 99 B = 50
// A = 119 b = 84
// a = 215 B = 48
// A = 60 b = 187
