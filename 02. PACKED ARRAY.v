module packed_array;
  
  bit [7:0]a;
  bit [7:0][3:0]b;
  bit [3:0][1:0][7:0]c;
  
  
  initial begin
  		
    	a = 8'h72;
    	b = 32'h5bb_ccdd;
    	c = 64'haaaa_bbbb_cccc_dddd;
    
 
    $display(" a = %d", a);
    
    foreach(b[i])begin
      $display(" b[%0h] = %0h", i, b[i]);
    end
    
    foreach(c[i,j])begin
        $display(" c[%0h][%0h] = %0h", i,j,c[i][j]);
    end     
  end 
    
endmodule
