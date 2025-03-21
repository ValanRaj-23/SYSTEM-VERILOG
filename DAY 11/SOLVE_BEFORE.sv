class packet1;
  rand bit en;
  rand bit [2:0] data;
  constraint wr{	en == 1 -> data == 1;
                	solve en before data;
               }
endclass
  
class packet2;
  rand bit en;
  rand bit [2:0] data;
  static constraint wr{	en == 1 -> data == 1;
                       	solve en before data;
                      }
endclass

module test;
  initial begin
  		packet1 pkt1;
    	packet1 pkt2;
      	packet2 pkt3;
    	packet2 pkt4;
    
    	pkt1 = new();
    	pkt2 = new();
    	pkt3 = new();
    	pkt4 = new();    	
    
    	
    repeat(5)
      begin
        void'(pkt1.randomize());
        void'(pkt2.randomize());
        void'(pkt3.randomize());
        void'(pkt4.randomize());



        $display("Packet1 en = %0d data = %0d ", pkt1.en, pkt1.data);
        $display("Packet2 en = %0d data = %0d ", pkt2.en, pkt2.data);
        $display("Packet3 en = %0d data = %0d ", pkt3.en, pkt3.data);
        $display("Packet4 en = %0d data = %0d ", pkt4.en, pkt4.data);
      end
  end
endmodule
