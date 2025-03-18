class rand_gen;
	rand logic [8:0] data;
    randc logic [1:0] addr;
  	
  constraint gen{	data > 100;
                 data < 105;}
endclass	

module rand_var;
	rand_gen rd;
	initial begin
		rd = new();
      repeat(10)
		begin
          	if(rd.randomize())
			$display(" data = %0d | addr = %0d", rd.data, rd.addr);
			else
          	$display("Randomization is not possible");
        end
	end
endmodule

//  data = 103 | addr = 0
//  data = 104 | addr = 2
//  data = 103 | addr = 1
//  data = 102 | addr = 3
//  data = 101 | addr = 3
//  data = 103 | addr = 1
//  data = 102 | addr = 0
//  data = 104 | addr = 2
//  data = 103 | addr = 2
//  data = 103 | addr = 3
