module unique_priority_if;
  logic [7:0] A, B, C;
  int result;
  
  initial begin
    A = 10;
    B = 20;
    C = 30;
    
    unique if(A < B)begin
      result = B - A;
      $display(" result : %0d", result);
    end    
    
    else if(A < C)begin
      result = A - C;
      $display(" result : %0d", result);
    end
    
    
    else if(B < C)begin
      result = 0;
      $display(" result : %0d", result);
    end
    
    #10;
    A = 100;
    B = 200;
    C = 30;
     
    //no conditon satisfy
    unique if(A > B)begin
      result = B / A;
      $display(" result : %0d", result);
    end
    
    else if(A < C)begin
      result = A - C;
      $display(" result : %0d", result);
    end
    
    #10;
    A = 100;
    B = 200;
    C = 30;
    
    //prioritized condition is evaluvated
    
    priority if(A < B)begin//FALSE
      result = B / A;
      $display(" result : %0d", result);
    end
    
    else if(A > C)begin //FALSE
      result = A - C;
      $display(" result : %0d", result);
    end  

  end
endmodule

//SIMULATION OUTPUT

// # KERNEL:  result : 10
// # ASSERT: Error: Assertion 'unique_if_1' FAILED at time: 0, testbench.sv(10), scope: unique_if. Two or more conditions are true simultaneously: A<B (line: 10), B<C. (line: 21)
// # KERNEL: Warning: unique_if_2: testbench.sv(32), scope: unique_if, time: 10. None of 'if' branches matched.
// # KERNEL:  result : 2
// # KERNEL: Simulation has finished. There are no more test vectors to simulate.
    
