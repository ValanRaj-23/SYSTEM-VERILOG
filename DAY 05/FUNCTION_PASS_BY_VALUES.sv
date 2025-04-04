module function_pass_by_values;
  int a, b;
  int result;
  
  function product(int data1, data2);
    result = data1 * data2;
    print();
    return data1 * data2;
  endfunction
  
  function void print();
  $display("product of %0d and %0d is %0d", a, b, result);
  endfunction
  
  function void difference(int data1, data2);
  result = data1 / data2;
  $display("product of %0d and %0d is %0d", data1, data2, result);
  endfunction
  
  
  initial begin
    a = 4; 
    b = 5;
    result = product(a,b);
    result = product(5,3);
    difference(8,4);
  end
endmodule
