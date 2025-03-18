class fixed_dynamic;
  rand logic [3:0] arr1 [8];
  rand byte arr2 [];
  
  constraint arr2_size { arr2.size() > 11;
                         arr2.size() < 15;}
  constraint arr2_value{ foreach(arr2[i]) arr2[i] inside {[0:14]}; } 
                         
endclass

module cons_array;
  	initial begin
      fixed fd = new();
      repeat(5)
        begin
      	void'(fd.randomize());
          $display(" arr1 = %p ", fd.arr1);
          $display(" arr2 = %p ", fd.arr2);
          
        end
    end
endmodule

 // arr1 = '{'ha, 'h4, 'hb, 'h7, 'hc, 'hb, 'hb, 'h2} 
 // arr2 = '{'h2, 'h0, 'he, 'h5, 'hc, 'h6, 'hd, 'h7, 'he, 'h6, 'h5, 'hc} 
 // arr1 = '{'he, 'h6, 'h9, 'hf, 'h2, 'h5, 'h0, 'h4} 
 // arr2 = '{'ha, 'hd, 'h5, 'h9, 'ha, 'h4, 'h0, 'h9, 'h7, 'ha, 'h1, 'hb, 'h4, 'he} 
 // arr1 = '{'h4, 'ha, 'h2, 'ha, 'h1, 'ha, 'h6, 'hf} 
 // arr2 = '{'ha, 'he, 'h8, 'h1, 'h5, 'h0, 'h2, 'h7, 'h7, 'h9, 'ha, 'h0, 'h2} 
 // arr1 = '{'h7, 'h1, 'h0, 'h1, 'ha, 'hb, 'hf, 'hd} 
 // arr2 = '{'hd, 'hd, 'h2, 'hb, 'hb, 'h9, 'hc, 'h0, 'h6, 'hd, 'h5, 'h5} 
 // arr1 = '{'h7, 'h2, 'hf, 'ha, 'h1, 'h8, 'h1, 'hc} 
 // arr2 = '{'h0, 'h7, 'h1, 'hb, 'hb, 'h9, 'h9, 'hb, 'h4, 'hd, 'h0, 'h7, 'hd}
