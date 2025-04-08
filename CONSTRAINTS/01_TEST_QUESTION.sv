// Declare 2 array (or queue) elements each of size 10, randomize in such a way that 2nd array values are 1st array value added with 5 for each element. 
class arr_rand;
  	rand bit [7:0] arr1 [10];
  	rand bit [7:0] arr2 [10];
  
  constraint c1{ foreach(arr1[i])
    				        arr2[i] == arr1[i] + 5;
               }  
endclass

module test;
  arr_rand ar;
  initial begin
    ar = new();
    repeat(2)
      begin
        ar.randomize();
        $display(" arr1 : %p", ar.arr1);
        $display(" arr2 : %p", ar.arr2);
      end
  end
endmodule

// #  arr1 : '{112, 14, 11, 119, 238, 192, 93, 124, 12, 5}
// #  arr2 : '{117, 19, 16, 124, 243, 197, 98, 129, 17, 10}
