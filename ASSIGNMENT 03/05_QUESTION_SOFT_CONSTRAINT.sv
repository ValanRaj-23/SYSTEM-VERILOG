class packet;
rand bit [3:0] addr;
  constraint addr_range { soft addr > 6; }
endclass


module soft_constr;
initial begin
packet pkt;
pkt = new();
  
  repeat(10) begin
    pkt.randomize() with { soft addr < 6;};
  $display("\t addr = %0d",pkt.addr);
  end
end 
endmodule

// 	 addr = 2
// 	 addr = 3
// 	 addr = 0
// 	 addr = 1
// 	 addr = 2
// 	 addr = 3
// 	 addr = 0
// 	 addr = 2
// 	 addr = 1
// 	 addr = 4
//            V C S   S i m u l a t i o n   R e p o r t 
