module associative_array;
  // arraytype name [index_type]
  logic [7:0] a_array1 [int];
  bit [7:0] a_array2 [string];
  string a_array3[string];
  
  initial begin
    
    a_array1 = '{ 1 : 11, 2 : 22, 3 : 33, 4 : 44};
    a_array2 = '{ "one" : 1, "two" : 2, "three" : 3, "four" : 4};
    a_array3 = '{ "A" : "Apple", "B" : "Ball", "C" : "Cat"};
	
    $display(" a_array1 : %p", a_array1);
    $display(" a_array2 : %p", a_array2);
    $display(" a_array3 : %p", a_array3);
    
    a_array1[5] = 55;
    a_array2["five"] = 5;
    a_array3["D"] = "doll";
    
    $display(" a_array1 : %p", a_array1);
    $display(" a_array2 : %p", a_array2);
    $display(" a_array3 : %p", a_array3);  
    
  end
endmodule            
    
