//12. Write a constraint with array size 5 to 10 values & the array values
//should be in ascending order/descending order.

class parent;
  rand bit [7:0] data1 [];
  rand bit order;
  constraint c1 { data1.size inside {[5:10]};}
  constraint c3 { 
    foreach(data1[i])
      if(order == 0) //ascending order
        	if(i < $size(data1) - 1)
      			data1[i] < data1[i + 1];
    		else
      			data1[i] > data1[i - 1];
    	else		//descending order
             if(i < $size(data1) - 1)
               data1[i] > data1[i + 1];
    		else
              data1[i] < data1[i - 1];   
      
  }
    
endclass


module test();
  parent pr;
  
  
  initial begin
    pr = new();
	
    repeat(10)
      begin
	void'(pr.randomize());
        
        $display("order = %0b | data1 = %p",pr.order, pr.data1);
      end
  end
endmodule
