module dynamic_array;
  
  shortint d_array[];
  shortint d_array1[];
  
  initial begin
    d_array = '{1,2,3,4,5};
    $display(" size of d_array = %0d", d_array.size);
    
    foreach(d_array[i])
    $display("d_array[%0d] = %0d", i, d_array[i]);   
    
    d_array = new[7]; // resizing
    $display(" size of d_array = %0d", d_array.size);
    
    d_array = '{1,2,3,4,5};
    $display(" size of d_array = %0d", d_array.size);
    
    d_array1 = new[7](d_array);   
    foreach(d_array1[i])
    $display("d_array1[%0d] = %0d", i, d_array1[i]);
    
    d_array1[5] = 6;
    foreach(d_array1[i])
    $display("d_array1[%0d] = %0d", i, d_array1[i]);
    
  end

endmodule


// SIMULATION OUTPUT
/*
# KERNEL:  size of d_array = 5
# KERNEL: d_array[0] = 1
# KERNEL: d_array[1] = 2
# KERNEL: d_array[2] = 3
# KERNEL: d_array[3] = 4
# KERNEL: d_array[4] = 5
# KERNEL:  size of d_array = 7
# KERNEL:  size of d_array = 5
# KERNEL: d_array1[0] = 1
# KERNEL: d_array1[1] = 2
# KERNEL: d_array1[2] = 3
# KERNEL: d_array1[3] = 4
# KERNEL: d_array1[4] = 5
# KERNEL: d_array1[5] = 0
# KERNEL: d_array1[6] = 0
# KERNEL: d_array1[0] = 1
# KERNEL: d_array1[1] = 2
# KERNEL: d_array1[2] = 3
# KERNEL: d_array1[3] = 4
# KERNEL: d_array1[4] = 5
# KERNEL: d_array1[5] = 6
# KERNEL: d_array1[6] = 0
*/
