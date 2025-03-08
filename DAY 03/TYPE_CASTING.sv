module type_casting;
  reg[7:0] data1;
  reg[15:0] data2;
  reg[31:0] data3;
  
  initial begin
    data1 = 8'b0001x101;   
    $display(" data1 = %b", data1);
    data1 = byte'(data1);
    $display(" data1 = %b", data1);
    
    data2 = shortint'(8'hff);
    $display(" data2 = %b", data2);
    
    data3 = int'(10000);
    $display(" data3 = %b", data3);
    
    data3 = int'(44.2);
    $display(" data3 = %d", data3);
    
    data3 = int'(data3);
    $display(" data3 = %d", data3);
  end
endmodule
