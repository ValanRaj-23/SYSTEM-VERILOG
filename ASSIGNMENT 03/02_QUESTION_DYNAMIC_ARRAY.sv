
class array;
  rand bit [31:0] my_arr[];
	constraint arr_size{ my_arr.size inside {[10:16]};}
	constraint arr{ foreach(my_arr[i])
				if (i > 0)
					my_arr[i] < my_arr[i-1];}
endclass

module array_ex;
array ar1;
	initial begin
		ar1 = new();
      repeat(1)
		begin
			void'(ar1.randomize());
          	foreach(ar1.my_arr[i])
            begin
              $display(" my_arr [%0d] = %0d ", i, ar1.my_arr[i]);   
            end
		end
	end
endmodule
  

// my_arr [0] = 4294921425 
//  my_arr [1] = 4294868788 
//  my_arr [2] = 4279290397 
//  my_arr [3] = 4278950910 
//  my_arr [4] = 4273819498 
//  my_arr [5] = 4014375145 
//  my_arr [6] = 3804229596 
//  my_arr [7] = 3763282279 
//  my_arr [8] = 3723690750 
//  my_arr [9] = 3337289746 
//  my_arr [10] = 3010015650 
//            V C S   S i m u l a t i o n   R e p o r t 


