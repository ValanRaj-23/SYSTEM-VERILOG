module sum_of_array;
  
  bit [7:0] arr1 [4] = '{232, 2, 6, 10};
  bit [31:0] arr2;
  

  function int array_sum (bit [7:0] arr[]);
  int sum = 0;
  foreach(arr[i])begin
  	sum = sum + arr[i];
  end
  return sum;
endfunction

  initial begin
    arr2 = array_sum(arr1);
    $display("arr2 = %0d", arr2);
  end
endmodule

// SIMULATION OUTPUT
//# KERNEL: arr2 = 250

  
