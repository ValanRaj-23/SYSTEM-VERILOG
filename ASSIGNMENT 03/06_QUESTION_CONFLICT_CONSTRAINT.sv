class Packet;
rand bit[31:0] addr;
  constraint c_addr{ addr inside {[0:100]};}
endclass


module constr;
  int temp;
  Packet p;
initial begin
  p = new();
  repeat(5)
    begin
	p.c_addr.constraint_mode(0);
  	p.randomize with {addr > 200;};
  	$display(" addr = %0d ", p.addr);   
    end
  	
  	repeat(5)
    begin
      p.c_addr.constraint_mode(1);
      temp = p.randomize with {addr > 200;};
      if(temp)
  		$display(" addr = %0d ", p.addr);
      else 
        $display(" randomization failed");
    end
  
end
endmodule

//  addr = 2596104342 
//  addr = 1721193913 
//  addr = 3747786816 
//  addr = 1662667880 
//  addr = 584535044 
// randomization failed
