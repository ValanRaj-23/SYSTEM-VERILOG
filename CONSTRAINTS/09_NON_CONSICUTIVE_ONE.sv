//3.write a constriant  for 16bit addr which should contrain 9th bit as 1 but should not have constitutive 1;

class top;
  rand bit [15:0] addr;
  constraint c1{ 	foreach(addr[i])
    if(i == 8 || i == 0)
      					addr[i] == 1;
                	else if(i > 0)
                      	addr[i] != addr[i - 1];
               }
endclass

module test;
  top tp;
  initial begin
    tp = new();
    repeat(4)
      begin
        void'(tp.randomize());
        $display("Addr = %b", tp.addr);
      end
  end
endmodule

// 				      987654321
// 				      |||||||||
//Addr = 0101010101010101
//Addr = 0101010101010101
