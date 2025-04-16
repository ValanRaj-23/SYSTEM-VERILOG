// 2. UNIQUE ARRAY ELEMENT WITHOUT USING UNIQUE KEYWORD
class array_unique;
  rand bit [3:0] arr [];
  
  constraint c1{ arr.size inside {[5:10]}; }
  constraint c2{ foreach(arr[i])
    				foreach(arr[j])
    				if(i != j)
                      arr[i] != arr[j];      					
               }
  
endclass

module test;
  array_unique au;
  initial begin
    au = new();
    repeat(4)
      begin
        void'(au.randomize());
        $display("A = %p", au.arr);       

      end
  end
endmodule

//# A = '{8, 2, 1, 14, 0, 15, 7}
//# A = '{3, 9, 10, 14, 4, 5, 0, 8}
//# A = '{9, 15, 3, 4, 5, 8, 11, 7}
//# A = '{0, 4, 9, 12, 15}

