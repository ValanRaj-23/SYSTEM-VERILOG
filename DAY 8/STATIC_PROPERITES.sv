class top_class;
bit[3:0] dy_count;
static bit [3:0] st_count;

	function new();
		dy_count++;
		st_count++;
	endfunction
	
	function void display();
		$display("dy_count : %0d  | st_count", dy_count, st_count);
	endfunction

endclass

module static_properties;
	top_class  tc[3];

	initial begin
		top_class::st_count = 4;
		
		foreach(tc[i])
		begin
			tc[i] = new();
			tc[i].display;
		end
	end
endmodule

//# dy_count : 1  | st_count 5
//# dy_count : 1  | st_count 6
//# dy_count : 1  | st_count 7
