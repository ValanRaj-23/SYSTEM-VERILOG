class inside_op;
  rand bit [15:0] data;
  randc bit [3:0] addr;
  
  constraint c1{ addr inside {[5:15]};}
  constraint c2{ !(addr inside {[8:10]});}
  
endclass

	module inside_operator;
      int i;
      	initial begin
          inside_op io;
          io = new();
          for(i = 0; i < 10; i++)
            begin
              void'(io.randomize());
              $display(" data = %0d  addr = %0d ", io.data, io.addr);
            end
        end
    endmodule 


 // data = 20760  addr = 12 
 // data = 37535  addr = 15 
 // data = 25908  addr = 5 
 // data = 59291  addr = 6 
 // data = 31983  addr = 13 
 // data = 23558  addr = 14 
 // data = 56705  addr = 11 
 // data = 41233  addr = 7 
 // data = 11494  addr = 6 
 // data = 37235  addr = 13 
