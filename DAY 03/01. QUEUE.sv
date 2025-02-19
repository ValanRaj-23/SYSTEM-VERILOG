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
