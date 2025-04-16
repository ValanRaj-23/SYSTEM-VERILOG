//write a code to create a pattern of 123454321;

class top;
  rand bit [3:0] arr [];
  

  constraint c1{ arr.size inside {9};}
  constraint c2{
    			foreach(arr[i])
                {  
                  arr[0] == 1;
                  if(i > 0 && i < 5)
                    arr[i] == arr[i - 1] + 1;
                  else if( i >=5)
                      arr[i] == arr[i - 1] - 1;
  }
  }
endclass

module test;
  top tp;
  initial begin
    tp = new();
    repeat(1)
      begin
        void'(tp.randomize());
        $display("\t arr = %p", tp.arr);
      end
  end
endmodule
   
    
//     # 	 arr = '{1, 2, 3, 4, 5, 4, 3, 2, 1}
