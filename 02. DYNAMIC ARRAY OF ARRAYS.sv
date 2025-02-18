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
      
