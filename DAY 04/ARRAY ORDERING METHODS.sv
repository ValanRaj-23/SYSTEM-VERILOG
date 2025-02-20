module array_reduction_methods;
  
  int data1 [6] = '{1,3,6,4,5,2};
  string data2 [4] = '{"a", "b", "c", "d"};
  
  
  initial begin
  
    data1.sort;
    $display(" sort of the array : %p ", data1);
    
    data1.rsort;
    $display(" rsort of the array : %p ", data1);
    
    data1.sort(x) with (x > 3);
    $display(" sort of the array : %p ", data1);
    
    data1.rsort(x) with (x > 2);
    $display(" rsort of the array : %p ", data1);
    
    
    data1.sort;
    $display(" sort of the array : %p ", data1);
    
     data1.shuffle;
    $display(" shuffle of the array : %p ", data1);
    
    data2.reverse;
    $display(" reverse of the string : %p ", data2);


  end
endmodule

//SIMULATION OUTPUT
/*
# KERNEL:  sort of the array : '{1, 2, 3, 4, 5, 6} 
# KERNEL:  rsort of the array : '{6, 5, 4, 3, 2, 1} 
# KERNEL:  sort of the array : '{3, 2, 1, 6, 5, 4} 
# KERNEL:  rsort of the array : '{5, 6, 3, 4, 2, 1} 
# KERNEL:  sort of the array : '{1, 2, 3, 4, 5, 6} 
# KERNEL:  shuffle of the array : '{5, 2, 1, 6, 4, 3} 
# KERNEL:  reverse of the string : '{"d", "c", "b", "a"} 
*/
