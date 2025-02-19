module queue_methods;
  byte Q1 [$ : 6] = { 1, 2, 3, 4, 5, 6};
  byte Q2 [$];
  int out;
  
  initial begin
    
    Q2[0] = 7;
    Q2[1] = 8;
    Q2[2] = 9;
    
    $display(" Q1 : ", Q1);
    $display(" Q2 : ", Q2);
    
    Q1.insert(3,10);
	Q2.insert(3,10);    
    
    $display(" Q1 : ", Q1);
    $display(" Q2 : ", Q2);

    Q1.push_front(7); // queue is full
    Q2.push_front(11);
    $display(" Q1 : ", Q1);
    $display(" Q2 : ", Q2);
    
    
    out = Q1.pop_front();
    $display("pop out first element of queue Q1 : ", out);        
    out = Q2.pop_back();
    $display("pop out first element of queue Q2 : ", out);  
    
    $display(" Q1 : ", Q1);
    $display(" Q2 : ", Q2);
    
    Q1.push_front(7); // one space is queue is empty
    Q2.push_front(12);
    $display(" Q1 : ", Q1);
    $display(" Q2 : ", Q2);
    
    
  end
endmodule
    
