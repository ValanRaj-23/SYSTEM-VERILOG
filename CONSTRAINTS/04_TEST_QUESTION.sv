//  Take a rand variable with array size 10,need to get unique values in each location without using unique keyword and for any of 2 locations we need to get same value?  


class arr_rand;
  rand bit [3:0] arr1 [10];
  rand bit [3:0] index1, index2;
  
  constraint c2{ 	index1 < 9;
               		index2 < 9;
                index1 != index2;}
  
  constraint c1{ foreach(arr1[i])
    				foreach(arr1[j])
                      	if(index1 == i || index2 == i)
                      	{
                          arr1[index1] == arr1[index2];
                        }
      					else if(i != j)
                        {
    					arr1[i] != arr1[j]; 
                        }
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
      end
  end
endmodule
                
// #  arr1 : '{0, 13, 2, 3, 11, 13, 4, 14, 15, 6}
// #  arr1 : '{15, 2, 1, 10, 7, 0, 13, 8, 8, 4}
