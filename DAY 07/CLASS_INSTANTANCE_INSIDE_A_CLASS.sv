class frame_info;
reg [15:0] start_addr;
reg [15:0] end_addr;

function new();
	this.start_addr = 16'hbb;
	this.end_addr = 16'h22;
	$display("start_addr = %0h", start_addr);
endfunction
endclass

class packet;
reg [15:0] data;
reg [15:0] addr;
frame_info pack;

function new();
	data 	= 16'hff;
	addr	= 16'haa;
	pack 	= new();
endfunction

function void display();
	$display("data = %0h", data);
	$display("addr = %0h", addr);
	$display("start_addr = %0h", pack.start_addr);
	$display("end_addr = %0h", pack.end_addr);
endfunction
endclass



module class_inside_class;
	packet pck1;
	initial begin

		pck1 = new();
		pck1.display(); 
	end
endmodule

// # start_addr = bb
// # data = ff
// # addr = aa
// # start_addr = bb
// # end_addr = 22
