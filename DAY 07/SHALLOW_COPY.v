class frame_info;
reg [15:0] start_addr;
reg [15:0] end_addr;

function new();
	this.start_addr = 16'hbb;
	this.end_addr = 16'h22;
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



module shallow_class;
	packet pck1,pck2;
	initial begin

		pck1 = new();
		$display("display packet 1");
		pck1.display();
	       	pck2= new pck1;
		$display("display packet 2");
		pck2.display();
		
		pck1.data = 'h11;
		pck1.addr = 'h12;

		pck1.pack.start_addr = 'h21;
		pck1.pack.end_addr = 'h23;
		
		$display("display packet 1");
		pck1.display();
		
		pck2.data = 'h13;
		pck2.addr = 'h14;
		pck2.pack.start_addr = 'h43;
		pck2.pack.end_addr = 'h44;

		$display("display packet 2");
		pck2.display();

		pck1.display();
		pck2.display();
	end
endmodule




