module automatic_task;
  int data1 , data2;
  
   task automatic increment();
    int i;
     data1 =i++;
    $display("Incremented value : %0d", data1);
  endtask
  
  task increment_past();
    int i;
     data1 =i++;
    $display("Incremented value : %0d", data1);
  endtask
  
  initial begin
    repeat(5)begin
      increment();
    end
    
    repeat(5)begin
      increment_past();
    end
  end
 endmodule

//SIMULATION OUTPUT
/*
# KERNEL: Incremented value : 0
# KERNEL: Incremented value : 0
# KERNEL: Incremented value : 0
# KERNEL: Incremented value : 0
# KERNEL: Incremented value : 0
# KERNEL: Incremented value : 0
# KERNEL: Incremented value : 1
# KERNEL: Incremented value : 2
# KERNEL: Incremented value : 3
# KERNEL: Incremented value : 4
*/
