module associative_array_methods;
int a_array1 [string];
 string result;
  
  initial begin
    
    a_array1 = '{ "one" : 1, "two" : 2, "three" : 3, "four" : 4};
    $display(" size of a_array1 : %d", a_array1.size());
    $display(" a_array1 : ", a_array1);
    
    
    if(a_array1.exists("one"))
      $display(" there exist index one in the the a_array1");
    else
      $display(" there no existence of index one in the the a_array1");
	
  
    a_array1 = '{"five" : 5, "six" : 6, "seven" : 7};
    $display(" size of a_array1 : %d", a_array1.size());
    $display(" a_array1 : ", a_array1);
    
    if(a_array1.exists("one"))
      $display(" there exist index one in the the a_array1");
    else
      $display(" there no existence of index one in the the a_array1");

    
    a_array1["eight"] = 8;
    a_array1["nine"] = 9;
    
    $display(" size of a_array1 : %d", a_array1.size());
    $display(" a_array1 : ", a_array1);
	
    if(a_array1.first(result))
      $display(" this is the first index of the array : %s", result);
    
    if(a_array1.next(result))
      $display(" this is the next index of the array : %s", result);

    if(a_array1.last(result))
      $display(" this is the last index of the array : % ", result);    

    if(a_array1.prev(result))
      $display(" this is the last index of the array : % ", result);   
  
  end
endmodule 


// SIMULATION OUTPUT
/*
# KERNEL:  size of a_array1 : 4
# KERNEL:  a_array1 : '{"four":4, "one":1, "three":3, "two":2}
# KERNEL:  there exist index one in the the a_array1
# KERNEL:  size of a_array1 : 3
# KERNEL:  a_array1 : '{"five":5, "seven":7, "six":6}
# KERNEL:  there no existence of index one in the the a_array1
# KERNEL:  size of a_array1 :           5
# KERNEL:  a_array1 : '{"eight":8, "five":5, "nine":9, "seven":7, "six":6}
# KERNEL:  this is the first index of the array : eight
# KERNEL:  this is the next index of the array : five
# KERNEL:  this is the last index of the array : six
# KERNEL:  this is the last index of the array : seven
*/
