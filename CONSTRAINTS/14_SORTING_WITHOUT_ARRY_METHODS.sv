// 14. write a constraint for randomly generatinng an array of numbers with size 10,
//sort in ascending order without using inbuilt sort method and sum of all array elements should be  300

class top;
  rand bit [8:0] arr [20];
  

  constraint c3{ foreach(arr[i])
    arr[i] inside {[0:50]};
               }
  
  constraint c1{foreach(arr[i])
  				{            
                  if(i != 19)
                    arr[i] <  arr[i + 1];
                }
               }
    constraint c2{ arr.sum()  == 300;}
    
endclass

module test;
  top tp;
  initial begin
    tp = new();
    repeat(10)
      begin
        void'(tp.randomize());
        $display("\t arr = %p", tp.arr);
      end
  end
endmodule
                
// # 	 arr = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 11, 13, 15, 18, 19, 25, 29, 32, 33, 34, 35}
// # 	 arr = '{1, 2, 5, 7, 8, 9, 10, 11, 12, 13, 16, 17, 19, 20, 22, 23, 24, 26, 27, 28}
// # 	 arr = '{0, 1, 2, 3, 5, 7, 9, 11, 12, 14, 18, 19, 20, 21, 22, 23, 24, 25, 26, 38}
// # 	 arr = '{0, 1, 2, 3, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26}
// # 	 arr = '{0, 1, 2, 3, 4, 6, 7, 8, 15, 16, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29}
