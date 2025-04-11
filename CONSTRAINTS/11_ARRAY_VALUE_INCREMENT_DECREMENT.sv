// 11. The constriant for an array of 10 elements in which the first 5 elements are in increment in nature and next 5 elements are in decrement in nature . all the elements in range of 50 to 100 and all elements be multiple of 5.

class top;
  rand bit [7:0] arr [10];
  rand int power;
  
  constraint c1{ power inside {[10:20]};}
  constraint c2{
					  foreach(arr[i])
                      if(i < 5)
                      {
                        arr[i] < arr[i+1];
                        
                      }
                        else if(i > 5)
                      {
                        arr[i] < arr[i-1];
                      }
                          }

                          
	constraint c3{
      foreach(arr[i])
      {
        arr[i] inside {[50:100]};
        arr[i] % 5 == 0;
//       	arr[i] == 5 * power;
//         doesnt work because power randomize once. when foreach loop run the value of power will be through out the loop so it creates confilict with the c1 constraint

    	}
    }

endclass

module test;
  top tp;
  initial begin
    tp = new();
    repeat(20)
      begin
        void'(tp.randomize());
        $display("Arr = %p", tp.arr);
      end
  end
endmodule

      
// # Addr = '{50, 55, 60, 65, 80, 95, 70, 60, 55, 50}
// # Addr = '{60, 65, 75, 90, 95, 100, 65, 60, 55, 50}
// # Addr = '{50, 55, 60, 65, 75, 95, 85, 80, 75, 70}
// # Addr = '{70, 75, 80, 85, 90, 100, 90, 75, 70, 65}
