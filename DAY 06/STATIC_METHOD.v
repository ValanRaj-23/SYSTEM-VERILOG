class check;
   static integer count = 0;
  static function void add();
  count++;
  $display("count = %0d", count);
endfunction


  task loop([31:0] data1);
    foreach(data1[i])
      begin
        if(data1[i] == 1)
          begin
            add();
      	  end
      end
  endtask 
endclass


module no_of_ones;
//   logic[31:0] data;
     	check m1,m2,m3;
  
initial begin

  	m1 = new;
  	m2 = new;
    m3 = new;
  
  m1.loop(15);
  $display("calling the class method from another object");
  m2.loop(7);
  $display("calling the class method from another object");
  m3.loop(1);
  $display("calling the class method from another object");
end
  
endmodule  
  

  

// # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
// # KERNEL: count = 1
// # KERNEL: count = 2
// # KERNEL: count = 3
// # KERNEL: count = 4
// # KERNEL: calling the class method from another object
// # KERNEL: count = 5
// # KERNEL: count = 6
// # KERNEL: count = 7
// # KERNEL: calling the class method from another object
// # KERNEL: count = 8
// # KERNEL: calling the class method from another object
  
  
