// 17. Write a constraint for count 0 to 40 [ skip 10,20,30,40]

class packet;
  rand int unsigned data1;
  // constraint c1{ data1 inside { [0:9], [11:19], [21:29], [31:39] };}
  constraint c2{ !(data1 inside { 10, 20, 30, 40});
               		data1 < 40;}
  
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    repeat(5)
      begin
        void'(pkt.randomize());
        $display(" data = %0d", pkt.data1);
      end
  end
endmodule


// #  data = 0
// #  data = 35
// #  data = 6
// #  data = 13
// #  data = 32
