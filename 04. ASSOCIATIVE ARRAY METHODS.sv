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
