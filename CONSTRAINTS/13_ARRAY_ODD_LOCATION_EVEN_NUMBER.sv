// 8. Write a constraint for an array of numbers such that the size
// of array ranges from 16 to 32 elements, and even index
// locations should have odd numbers and odd index
// locations should have even numbers, numbers rage is
// between 16 to 127 

class top;
  randc bit [7:0] arr [];
  
  constraint c1{ arr.size inside {[16:32]};}

  constraint c3{foreach(arr[i])
  				{
    				if(i % 2 == 0)
      					arr[i] % 2  != 0;
    				else
      					arr[i] % 2 	== 0;
                arr[i] inside {[16:127]};
               }
               }

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

                
// #   	arr = '{45, 24, 61, 40, 115, 52, 117, 92, 105, 104, 57, 16, 113, 120, 63, 124, 79, 32}
// # 	 arr = '{109, 118, 125, 92, 31, 22, 71, 72, 31, 92, 21, 54, 101, 110, 93, 24, 45, 90, 51, 42, 23}
// # 	 arr = '{29, 82, 121, 20, 37, 44, 29, 44, 47, 72, 41, 92, 107, 116, 91, 82, 67, 70, 49, 26}
