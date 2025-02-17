module data_types;
  
  integer D1;
  logic [3:0] D2;
 
  bit [7:0]  D3;
  byte  D4;
  shortint D5;
   
  initial begin
     
    D1 = -'d121;
    $display(" D1 = %0d", D1);  
    D2 = -'d5;
    $display(" D2 = %0d", D2);

    D2 = 'd12 + 'bx;
	$display(" D2 = %0d", D2); 
	D2 = 'd12;
    $display(" D2 = %0d", D2);
    
    D3 = 'd20;
    $display(" D3 = %0d", D3);
    D3 = 'd20 + 'bx;
    $display(" D3 = %0d", D3);
    
    D4 = D2;
    $display(" D4 = %0d", D4);     
        
  end
endmodule

//SIMULATION OUTPUT
/*
# KERNEL:  D1 = -121
# KERNEL:  D2 = 11
# KERNEL:  D2 = x
# KERNEL:  D2 = 12
# KERNEL:  D3 = 20
# KERNEL:  D3 = 0
# KERNEL:  D4 = 12
*/
