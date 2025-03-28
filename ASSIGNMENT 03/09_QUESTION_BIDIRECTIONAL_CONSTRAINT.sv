class const1;
rand bit [7:0] low, mid, high;
//   constraint Const_1 {low < mid < high;}
  constraint Const_2 {	low	<	mid;
                      	mid	<	high;}
endclass
  
  module test;
    const1 c1;
    initial begin
      c1 = new();
      repeat(10)
        begin
          void'(c1.randomize());
          $display(" low = %0d mid = %0d high = %0d ", c1.low, c1.mid, c1.high);
        end
    end
  endmodule
          
//  low = 68 mid = 122 high = 250 
//  low = 45 mid = 74 high = 94 
//  low = 4 mid = 150 high = 241 
//  low = 99 mid = 132 high = 154 
//  low = 2 mid = 88 high = 186 
//  low = 8 mid = 111 high = 115 
//  low = 32 mid = 47 high = 224 
//  low = 6 mid = 37 high = 49 
//  low = 62 mid = 135 high = 197 
//  low = 2 mid = 124 high = 185
