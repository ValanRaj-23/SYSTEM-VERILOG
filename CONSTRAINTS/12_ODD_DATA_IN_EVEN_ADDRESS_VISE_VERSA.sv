// 6.write a constraint to store odd data in even addr and even data in odd addr

class top;
  rand bit [7:0] 	data;
  rand bit [7:0]	addr;
  rand bit 			even_odd;
  
  constraint c1{ even_odd dist { 1:= 50 , 0:= 50 };}
  
  constraint c2{ if(even_odd)
    					data % 2 != 0;
    			 else
                   		data % 2 == 0;
               }

  constraint c3{ if(data % 2 != 0)
    					addr % 2 == 0;
                else
                  		addr % 2 != 0;
               }

endclass

module test;
  top tp;
  initial begin
    tp = new();
    repeat(10)
      begin
        void'(tp.randomize());
        $display("\t DATA = %d addr = %d", tp.data, tp.addr);
      end
  end
endmodule

// #	 DATA = 150 addr =  43
// # 	 DATA = 233 addr = 188
// # 	 DATA = 140 addr = 149
// # 	 DATA = 203 addr = 234
// # 	 DATA =  34 addr =  11
// # 	 DATA =  91 addr =  80
// # 	 DATA = 221 addr = 100
// # 	 DATA = 251 addr =  62
// # 	 DATA = 119 addr = 220
// # 	 DATA =  84 addr =  63
