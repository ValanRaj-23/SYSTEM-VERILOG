module packed_union;
  
  union packed{
    logic [15:0] data1;
    bit [15:0] data2;
    shortint data3;
  }list;
  
  initial begin 
    list.data1 = 'hFFF;
    $display(" element of list :%h",list.data1);
    
    list.data2 = 'hEEE;
    list.data3 = 'hAAA;
    $display(" element of list :%h",list.data2);
   //last added value will be displayed
  end
endmodule

// # KERNEL:  element of list :0fff
// # KERNEL:  element of list :0aaa
  
  
  

