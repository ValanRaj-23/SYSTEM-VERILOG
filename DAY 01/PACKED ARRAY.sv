module packed_array;
  
  bit [7:0]a;
  bit [7:0][3:0]b;
  bit [3:0][7:0]b1;
  bit [3:0][1:0][7:0]c;
  
  
  initial begin
  		
    	a   = 8'h72;
      	b   = 32'haabb_ccdd;
    	b1  = 32'h1234_5678;
    	c   = 64'haaaa_bbbb_cccc_dddd;
    
 
    $display(" a = %d", a);
    
    foreach(b[i])begin
      $display(" b[%0h] = %0h", i, b[i]);
    end

    foreach(b1[k])begin
      $display(" b1[%0h] = %0h", k, b1[k]);
    end
    
    foreach(c[i,j])begin
        $display(" c[%0h][%0h] = %0h", i,j,c[i][j]);
    end  
    
  end 
    
endmodule


//SIMULATION OUTPUT

/*
# KERNEL:  a = 114
# KERNEL:  b[7] = a
# KERNEL:  b[6] = a
# KERNEL:  b[5] = b
# KERNEL:  b[4] = b
# KERNEL:  b[3] = c
# KERNEL:  b[2] = c
# KERNEL:  b[1] = d
# KERNEL:  b[0] = d
# KERNEL:  b1[3] = 12
# KERNEL:  b1[2] = 34
# KERNEL:  b1[1] = 56
# KERNEL:  b1[0] = 78
# KERNEL:  c[3][1] = aa
# KERNEL:  c[3][0] = aa
# KERNEL:  c[2][1] = bb
# KERNEL:  c[2][0] = bb
# KERNEL:  c[1][1] = cc
# KERNEL:  c[1][0] = cc
# KERNEL:  c[0][1] = dd
# KERNEL:  c[0][0] = dd*/
