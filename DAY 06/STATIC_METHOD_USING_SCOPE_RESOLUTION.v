class check;
   static integer count = 0;
  static function void add();
  count++;
  $display("count = %0d", count);
endfunction
endclass

module ones;
initial begin
  loop(7);
  loop(15);
end
  
endmodule  
  
  task loop([31:0] data1);
    foreach(data1[i])
      begin
        if(data1[i] == 1)
          begin
            check::add();
      	  end
      end
  endtask 
  
  
// # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
// # KERNEL: count = 1
// # KERNEL: count = 2
// # KERNEL: count = 3
// # KERNEL: count = 4
// # KERNEL: count = 5
// # KERNEL: count = 6
// # KERNEL: count = 7
