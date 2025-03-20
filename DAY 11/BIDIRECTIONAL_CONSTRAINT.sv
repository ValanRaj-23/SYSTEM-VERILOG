class packet;
  rand logic [3:0] d1, d2, d3;
  
  constraint c1 {	d1 < 10;
    				d1 == d2 + d3;}
  endclass
  
  module bi_direct;
    initial begin
      int i;
      packet pkt;
      pkt = new();
      repeat(10)
        begin
          void'(pkt.randomize());
          $display(" %0d + %0d = %0d ", pkt.d2, pkt.d3, pkt.d1);
        end
    end
  endmodule
                  	
  
