28. Write the constraint such that size of first dimension of array should be inside [5 : 10] &amp; 2nd dimension of array should be 5.

class arr_dimen;
  rand bit [3:0] arr [][];

  constraint c1 { arr.size() inside {[5:10]}; }
    					

function void post_randomize();
  foreach (arr[i])
    begin
    arr[i] = new[5];
    end
  foreach(arr[i, k])
    arr[i][k] = $urandom_range(0,15);
endfunction
    
endclass
  
module ex_1;
arr_dimen ad;

	initial begin
		ad = new();
      repeat(3)
		begin
          void'(ad.randomize());
          $display(" rand addr ", ad.arr);
		end
	end

endmodule

//   rand addr '{'{'hc, 'ha, 'h7, 'h0, 'hf} , '{'ha, 'h2, 'h0, 'h9, 'hc} , '{'h1, 'hf, 'h2, 'h4, 'hf} , '{'h5, 'h7, 'h4, 'h8, 'h1} , '{'h1, 'h9, 'h6, 'h4, 'h9} , '{'hf, 'h0, 'hd, 'h2, 'h6} }
//   rand addr '{'{'h9, 'h3, 'h5, 'h2, 'h2} , '{'h1, 'hd, 'ha, 'h1, 'h0} , '{'h7, 'h0, 'h1, 'h7, 'h6} , '{'hf, 'hd, 'h7, 'h9, 'h9} , '{'h8, 'hc, 'hf, 'h6, 'ha} , '{'he, 'hc, 'hc, 'h6, 'hb} , '{'h5, 'h7, 'hb, 'h2, 'h1} , '{'h3, 'h6, 'he, 'he, 'h7} }
//   rand addr '{'{'h3, 'hd, 'h2, 'h8, 'hb} , '{'h6, 'h1, 'hd, 'h6, 'he} , '{'hc, 'h5, 'h7, 'h8, 'h3} , '{'hf, 'ha, 'hc, 'h5, 'hd} , '{'h8, 'hf, 'hf, 'ha, 'hc} , '{'h5, 'h1, 'h2, 'he, 'h9} , '{'h8, 'h8, 'h1, 'hd, 'h6} , '{'h5, 'h8, 'hc, 'he, 'h9} , '{'hd, 'h0, 'he, 'h9, 'h5} }
//             V C S   S i m u l a t i o n   R e p o r t 
