module array_of_array;
  int d_array[][];
  
  initial begin
		d_array = new[4];
$display(" d_array =", d_array);

    foreach(d_array[i])begin
      d_array[i] = new[4];
      $display(" d_array %0d = %p", i, d_array[i]);
      //%p prints the entire array without needing a loop
    end
    
    
    $display(" size of array = %0d", d_array.size());
  
    foreach(d_array[i,j])begin
      d_array[i][j] = (i*j)+1;
      $display(" d_array [%0d][%0d] = [%0d]", i, j, d_array[i][j]);
      // no need of using %p because every variable is printed with a help of index
    end
    
    foreach(d_array[i,j])begin
      d_array[i][j] = (i*j)+1;
      $display(" d_array [%0d][%0d] = [%0d]", i, j, d_array[i][j]);
    end
   
    $display(" d_array  = [%p]", d_array);
    //%p prints the entire array without needing a loop
    end
endmodule

// SIMULATION OUTPUT
/*
# KERNEL:  d_array ='{'{}, '{}, '{}, '{}}
# KERNEL:  d_array 0 = '{0, 0, 0, 0}
# KERNEL:  d_array 1 = '{0, 0, 0, 0}
# KERNEL:  d_array 2 = '{0, 0, 0, 0}
# KERNEL:  d_array 3 = '{0, 0, 0, 0}
# KERNEL:  size of array = 4
# KERNEL:  d_array [0][0] = [1]
# KERNEL:  d_array [0][1] = [1]
# KERNEL:  d_array [0][2] = [1]
# KERNEL:  d_array [0][3] = [1]
# KERNEL:  d_array [1][0] = [1]
# KERNEL:  d_array [1][1] = [2]
# KERNEL:  d_array [1][2] = [3]
# KERNEL:  d_array [1][3] = [4]
# KERNEL:  d_array [2][0] = [1]
# KERNEL:  d_array [2][1] = [3]
# KERNEL:  d_array [2][2] = [5]
# KERNEL:  d_array [2][3] = [7]
# KERNEL:  d_array [3][0] = [1]
# KERNEL:  d_array [3][1] = [4]
# KERNEL:  d_array [3][2] = [7]
# KERNEL:  d_array [3][3] = [10]
# KERNEL:  d_array [0][0] = [1]
# KERNEL:  d_array [0][1] = [1]
# KERNEL:  d_array [0][2] = [1]
# KERNEL:  d_array [0][3] = [1]
# KERNEL:  d_array [1][0] = [1]
# KERNEL:  d_array [1][1] = [2]
# KERNEL:  d_array [1][2] = [3]
# KERNEL:  d_array [1][3] = [4]
# KERNEL:  d_array [2][0] = [1]
# KERNEL:  d_array [2][1] = [3]
# KERNEL:  d_array [2][2] = [5]
# KERNEL:  d_array [2][3] = [7]
# KERNEL:  d_array [3][0] = [1]
# KERNEL:  d_array [3][1] = [4]
# KERNEL:  d_array [3][2] = [7]
# KERNEL:  d_array [3][3] = [10]
# KERNEL:  d_array  = ['{'{1, 1, 1, 1}, '{1, 2, 3, 4}, '{1, 3, 5, 7}, '{1, 4, 7, 10}}]
*/
      
