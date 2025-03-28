class d_arr;
  rand logic [3:0] abc[];
  constraint arr_size	{abc.size inside {[0:9]};}
  constraint arr_el		{foreach (abc[i]) abc[i] < 10;}		
endclass

module test;
 d_arr d1;
  initial begin
    d1 	=	new();
    repeat(5)
      begin
        void'(d1.randomize());
        $display("size of the array %0d", d1.abc.size());
        $display("values of the array %p", d1.abc);
      end
  end
endmodule
  	


// size of the array 2
// values of the array '{'h9, 'h0} 
// size of the array 2
// values of the array '{'h2, 'h9} 
// size of the array 6
// values of the array '{'h5, 'h3, 'h9, 'h9, 'h6, 'h2} 
// size of the array 7
// values of the array '{'h6, 'h2, 'h7, 'h6, 'h9, 'h8, 'h7} 
// size of the array 2
// values of the array '{'h4, 'h7} 
//            V C S   S i m u l a t i o n   R e p o r t 
