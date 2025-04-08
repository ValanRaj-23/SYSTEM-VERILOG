// Write a constraint to generate two queues of random sizes with unique values, also total number of elements in each queue should be less than or equal to 10. Queue element values should be in range of 50 to 200. 


class que_rand;
  rand bit [7:0] que1 [$];
  rand bit [7:0] que2 [$];
  
  // RANDOMIZED VALUES
  constraint c1{que1.size inside {[0:9]};} 
  constraint c2{que2.size inside {[0:9]};}
  
  //RANGE 50 TO 200
  constraint c3{ foreach(que1[i])
        			que1[i] inside {[50:200]};
               }
  constraint c4{ foreach(que2[i])
    			que2[i] inside {[50:200]};
               }
  
  // UNIQUE VALUES 
  constraint c5{foreach(que1[i])
    			foreach(que1[j])
                  if(i != j)
                  {
                    que1[i] != que1[j];
                  }
               }
                    
  constraint c6{foreach(que2[i])
    			foreach(que2[j])
                  if(i != j)
                  {
                    que2[i] != que2[j];
                  }
               }
  
    
  
endclass

module test;
  que_rand qr;
  initial begin
   qr = new();
    repeat(2)
      begin
       qr.randomize();
        $display(" arr1 : %p", qr.que1);
        $display(" arr2 : %p", qr.que2);
      end
  end
endmodule

// #  arr1 : '{173, 72, 96, 198, 156, 95}
// #  arr2 : '{60, 59, 176, 77}
// #  arr1 : '{152}
// #  arr2 : '{127, 67, 82, 62, 177, 128}
