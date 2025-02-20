module array_reduction_methods;
  
  int data1 [6] = '{1,2,3,4,5,6};
  int result;
  
  
  initial begin
  
    result = data1.sum;
    $display(" sum of the array : %d ", result);
    
    result = data1.product;
    $display(" product of the array : %d ", result);
    
    result = data1.or;
    $display(" or of the array : %d ", result);

    result = data1.and;
    $display(" and of the array : %d ", result);

    result = data1.xor;
    $display(" xor of the array : %d ", result);
   

  end
endmodule
