class q1_inside;
	rand bit [31:0] addr;

  constraint c1 { // addr inside {[0 : 20]} || addr inside {[4020 : 4075]};
                     addr inside {[0 : 20] , [4020 : 4075]};
                }
endclass

module ex_1;
q1_inside q1;

	initial begin
		q1 = new();
		repeat(20)
		begin
          void'(q1.randomize());
          $display(" rand addr = %0d ", q1.addr);
		end
	end

endmodule
