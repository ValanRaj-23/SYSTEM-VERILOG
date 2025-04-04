//23. Write a single constraint to generate a random value for bit [8:0] variable in the below range, 1-34, 127, 129-156, 192-202,257-260

class q1_inside;
  rand bit [31:0] data;

  constraint c1 { 
    				data inside {[1:34], 127, [129:156], [192:202], [257:260]};
                }
endclass

module ex_1;
q1_inside q1;

	initial begin
		q1 = new();
      repeat(4)
		begin
          void'(q1.randomize());
          $display(" rand addr = %0d ", q1.data);
		end
	end

endmodule

//  rand addr = 134 
//  rand addr = 9 
//  rand addr = 21 
//  rand addr = 150
