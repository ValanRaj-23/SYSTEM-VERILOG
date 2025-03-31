class my_class;
  rand bit [3:0] a;
  rand bit [3:0] b;

  function int my_function(int x, int y);
    return x + y;
  endfunction

  constraint c1 {
    my_function(a, b) > 10; 
  }
endclass

module test;
  my_class my;
  initial begin
    my = new();
    repeat(6)
      begin
        void'(my.randomize());
        $display(" a , b = %0d , %0d > 10", my.a, my.b);
      end
  end
endmodule
