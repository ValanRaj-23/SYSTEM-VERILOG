class ABC;
	rand int length;
	rand byte SA;
	constraint c_length{ length inside {[1:64]}; }
	constraint c_SA {SA inside {[1:16]}; }
endclass

module test;
ABC alpha;
	initial begin
		alpha = new();
		repeat(2)
		begin
		alpha.c_length.constraint_mode(0);
		void'(alpha.randomize());
		$display(" length = %0d SA = %0d ", alpha.length, alpha.SA);   
		end
		repeat(2)
		begin
          alpha.c_length.constraint_mode(1);
		void'(alpha.randomize());
		$display(" length = %0d SA = %0d ", alpha.length, alpha.SA);   
		end      
      	
	end
endmodule

//  length = -1424580863 SA = 16 
//  length = 1888924327 SA = 1 
//  length = 40 SA = 12 
//  length = 49 SA = 8 
//            V C S   S i m u l a t i o n   R e p o r t 
