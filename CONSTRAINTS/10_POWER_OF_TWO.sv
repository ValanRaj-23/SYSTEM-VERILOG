//Write a constraint to a 16 bit variable to generate value of power of two.


class top;
  randc bit [15:0] 	addr;
  rand bit [3:0]	power;
  
  constraint c1{ power inside {[1:15]};}
  constraint c2{
    foreach(addr[i])
      if(i == power)
        addr[i] == 1;
    else 
      addr[i] == 0;
  }
  
//one line constraint
//  constraint c3{ addr == (1 << power);}
  
endclass

module test;
  top tp;
  initial begin
    tp = new();
    repeat(20)
      begin
        void'(tp.randomize());
        $display("Addr = %d", tp.addr);
      end
  end
endmodule


// Addr =  8192
// Addr = 16384
// Addr = 32768
// Addr =  4096
// Addr =  2048
// Addr =   256
// Addr =   128
// Addr =     4
// Addr =   512
// Addr =  1024
