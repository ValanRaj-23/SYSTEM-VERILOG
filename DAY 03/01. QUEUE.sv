module queue1;
  logic [7:0] Q1 [$] = { 1, 2, 3, 4, 5, 6};
  byte 	Q2 [$ : 10] = { 11, 22, 33, 44, 55};
  string Q3 [$] = { "one", "two", "three", "four"};
  
  initial begin
    $display("Q1 =  %p size = %p", Q1, Q1.size());
    $display("Q2 =  %p size = %p", Q2, Q2.size());
    $display("Q3 =  %p size = %p", Q3, Q3.size());
    
    Q1[8] = 7; // out of bound error
    Q1[6] = 7;
    Q1[7] = 6;    
    Q1[8] = 8;
    Q2[5] = 66;
    Q2[6] = 77;
    Q3[5] = "five"; // out of bound error
    Q3[4] = "five"; 
    
    // you can only insert element orderly     
    
    $display("Q1 =  %p size = %p", Q1, Q1.size());
    $display("Q2 =  %p size = %p", Q2, Q2.size());
    $display("Q3 =  %p size = %p", Q3, Q3.size());
    
  end
endmodule

//SIMULATION OUTPUT
/*
# KERNEL: Q1 =  '{1, 2, 3, 4, 5, 6} size = 6
# KERNEL: Q2 =  '{11, 22, 33, 44, 55} size = 5
# KERNEL: Q3 =  '{"one", "two", "three", "four"} size = 4
# RUNTIME: Warning: RUNTIME_0222 testbench.sv (59): Index 8 is out of array dimension bounds [0:5].
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /queue1,  Process: @INITIAL#54_0@.
# RUNTIME: Warning: RUNTIME_0222 testbench.sv (65): Index 5 is out of array dimension bounds [0:3].
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /queue1,  Process: @INITIAL#54_0@.
# KERNEL: Q1 =  '{1, 2, 3, 4, 5, 6, 7, 6, 8} size = 9
# KERNEL: Q2 =  '{11, 22, 33, 44, 55, 66, 77} size = 7
# KERNEL: Q3 =  '{"one", "two", "three", "four", "five"} size = 5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
*/
