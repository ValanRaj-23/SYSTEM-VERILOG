class packet;
  rand bit [3:0] A, B;
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    repeat(5)
      begin
        void'(pkt.randomize() with {pkt.A > pkt.B;} );
        $display(" A = %0d B = %0d", pkt.A, pkt.B);
      end
  end
endmodule 

//  A = 11 B = 1
//  A = 7 B = 5
//  A = 8 B = 4
//  A = 4 B = 1
//  A = 2 B = 1
