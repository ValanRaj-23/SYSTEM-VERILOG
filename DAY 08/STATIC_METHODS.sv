class base;
static int count; 
bit [7:0] gen;
	static function void counter();
		count++;
	endfunction

	function void generator();
		gen = $random % 50;
	endfunction

endclass


module static_properties;
bit [7:0] data [7:0];
base br;

	initial begin
		br = new;

		foreach(data[i])
		begin
			br.generator();
			data[i] = br.gen;
			$display("data [%0d] : %0d", i, data[i]);
		end
		foreach(data[i])
		begin
			if(!(data[i] % 2))
				br.counter();
		end

		$display("even number : %0d",br.count); 
	end
endmodule
			

//# data [7] : 48
//# data [6] : 207
//# data [5] : 217
//# data [4] : 247
//# data [3] : 7
//# data [2] : 7
//# data [1] : 235
//# data [0] : 242
//# even number : 2
