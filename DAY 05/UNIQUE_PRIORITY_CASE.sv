module unique_priority_case;
  bit [1:0] data1;
  
  always@(*)
    begin
    	
 	priority case(data1)
      2'b00 : $display(" this is priortiy %0d", data1);
      2'b01 : $display(" this is priortiy %0d", data1);
      2'b10 : $display(" this is priortiy %0d", data1);
      2'b01 : $display(" this is priortiy %0d", data1);
    endcase
    
  end
  
  always@(*)
    begin
    
 	unique case(data1)
      2'b00 : $display(" this is unique %0d", data1);
      2'b01 : $display(" this is unique %0d", data1);
      2'b10 : $display(" this is unique %0d", data1);
      2'b01 : $display(" this is unique %0d", data1);
    endcase
    
  end  
  
  initial begin
    #10 data1 = 2'b01;
    #10 data1 = 2'b11;
    #10 data1 = 2'b00;

  end
  
endmodule

