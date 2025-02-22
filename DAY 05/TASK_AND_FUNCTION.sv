module task_funciton;
  bit [7:0] data1;
  logic [7:0] data2;
  bit result;
  
   task even_or_odd(int times);
    repeat(times)begin
    data1 = generate_num();
    $display("Generated random value : %0d", data1);
    check_num(data1,result);
    
    if(result == 1)
      odd();
    else
      even();    
      end
   endtask
  
  function int generate_num();
    logic [7:0] num1;
    num1 = $urandom;
    $display("random value is generated");
    return num1;
  endfunction
  
  
  task check_num(input logic[7:0] num1 , output bit num_type);
    
    if(num1 % 2 == 0)
      num_type = 0;
    else if(num1 % 2 == 1)
      num_type = 1;
    
  endtask
  
  function void odd();
    $display(" data1 is the odd number");
  endfunction
  
  function void even();
    $display(" data1 is the even number");
  endfunction
 
  
  initial begin  
    even_or_odd(2);
    even_or_odd(3);
  end
  
endmodule

//SIMULATION OUTPUT
/*
# KERNEL: random value is generated
# KERNEL: Generated random value : 212
# KERNEL:  data1 is the even number
# KERNEL: random value is generated
# KERNEL: Generated random value : 106
# KERNEL:  data1 is the even number
# KERNEL: random value is generated
# KERNEL: Generated random value : 117
# KERNEL:  data1 is the odd number
# KERNEL: random value is generated
# KERNEL: Generated random value : 192
# KERNEL:  data1 is the even number
# KERNEL: random value is generated
# KERNEL: Generated random value : 160
# KERNEL:  data1 is the even number
*/
