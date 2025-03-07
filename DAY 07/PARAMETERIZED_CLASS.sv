class frame #(parameter int D_WIDTH, D_DEPTH);
	reg [D_WIDTH -1 : 0] data [D_DEPTH-1 :0];
endclass

module para_class;

	frame #(4,4) f1;
	initial begin
		f1 = new();
		foreach(f1.data[i,j])
		begin
			f1.data[i][j] = $random;
			$display(" data[%0d][%0d] = %0b", i, j, f1.data[i][j]);
		end
	end

endmodule
			
//#  data[3][3] = 0
//#  data[3][2] = 1
//#  data[3][1] = 1
//#  data[3][0] = 1
//#  data[2][3] = 1
//#  data[2][2] = 1
//#  data[2][1] = 1
//#  data[2][0] = 0
//#  data[1][3] = 1
//#  data[1][2] = 1
//#  data[1][1] = 0
//#  data[1][0] = 1
//#  data[0][3] = 1
//#  data[0][2] = 0
//#  data[0][1] = 1
//#  data[0][0] = 0
//
