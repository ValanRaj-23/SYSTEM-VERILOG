module assoc_array;

longint unsigned assoc[longint];
int unsigned idx = 1;
int unsigned key;

initial begin
	for(int i = 0; i <=63 ; i++)
	begin
		assoc[idx] = idx;
		idx = idx << 1;
	end

      //  $display(" assoc : %0p", assoc);
	
	if(assoc.first(key))
		$display("first %0d : %0d value ", key, assoc[key]);

	if(assoc.next(key))
		$display("next %0d : %0d value ", key, assoc[key]);

	if(assoc.next(key))
		$display("next %0d : %0d value ", key, assoc[key]);

	if(assoc.prev(key))
		$display("prev %0d : %0d value ", key, assoc[key]);

	if(assoc.last(key))
		$display("last %0d : %0d value ", key, assoc[key]);



end
endmodule


//# first 0 : 0 value
//# next 1 : 1 value
//# next 2 : 2 value
//# prev 1 : 1 value
//# last 2147483648 : 2147483648 value
//
