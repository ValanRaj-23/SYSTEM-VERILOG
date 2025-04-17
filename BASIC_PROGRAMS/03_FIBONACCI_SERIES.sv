
class top;
  rand bit [4:0] arr [];
  

  constraint c1{ arr.size inside {9};}
  constraint c2{
    			foreach(arr[i])
                {  
                  arr[0] == 0;
                  arr[1] == 1;
                  if(i > 1)
                    arr[i] == arr[i - 1] + arr[i - 2];
                  
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
   
