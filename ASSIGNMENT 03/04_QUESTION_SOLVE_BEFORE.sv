class ABSolveBefore;
rand bit A;
rand bit [1:0] B;
constraint c_ab {
  (A==0) -> B==0;
solve A before B;
}
endclass

class BASolveBefore;
rand bit A;
rand bit [1:0] B;
constraint c_ab {
  (A==0) -> B==0;
solve B before A;
}
endclass

module test;
 ABSolveBefore ab;
 BASolveBefore ba;
 
	initial begin
      ab = new();
      ba = new();
		repeat(2)
		begin
		void'(ab.randomize());
          $display("SOLVE AB A = %0b B = %0b ", ab.A, ab.B);   
		end
      	
      	repeat(2)
        begin
          void'(ba.randomize());
          $display("SOLVE BA A = %0b B = %0b ", ba.A, ba.B);   
        end
	end
endmodule


// SOLVE AB A = 1 B = 10 
// SOLVE AB A = 0 B = 0 
// SOLVE BA A = 1 B = 11 
// SOLVE BA A = 0 B = 0 
