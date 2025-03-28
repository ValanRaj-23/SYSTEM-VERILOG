class packet;
  rand logic [15:0] a, b, c;
	constraint c_abc {	a < c;
						b == a;
						c < 30;
						b < 25; }
endclass

module test;
  	packet pkt;
  
  	initial begin
      pkt	=	new();
      repeat(5)
        	begin
              void'(pkt.randomize());
              $display(" a = %0d b = %0d c = %0d", pkt.a, pkt.b, pkt.c);
            end
    end
endmodule
      

//  a = 12 b = 12 c = 15
//  a = 11 b = 11 c = 26
//  a = 2 b = 2 c = 16
//  a = 6 b = 6 c = 20
//  a = 0 b = 0 c = 10
