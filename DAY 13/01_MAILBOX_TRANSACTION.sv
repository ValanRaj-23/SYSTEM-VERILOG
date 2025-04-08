class transaction;
  rand bit a;
  rand bit b;
  rand bit c;
  bit sum;
  bit carry;
  
  function new();
    $display("Process : Transaction");
  endfunction
  
  function void randomized_value();
    $display(" randomized value");
    $display(" a = %0b b = %0b c = %0b", a, b, c);
  endfunction
endclass
  
