class packet;

class frame_info;
bit [15:0] s_addr;
bit [15:0] e_addr;
endclass

reg [15:0] data;
reg [15:0] addr;
frame_info pack;

function new();
	pack 	= new();
endfunction

function void display();
	$display("data = %0h", data);
	$display("addr = %0h", addr);
	$display("s_addr = %0h", pack.s_addr);
	$display("e_addr = %0h", pack.e_addr);
endfunction

function void deep_copy(bit[15:0]data, addr, s_addr,e_addr);
	this.data = data;
	this.addr = addr;
	this.pack.s_addr = s_addr;
	this.pack.e_addr = e_addr;
endfunction


endclass

module deep_copy;
	packet pck1,pck2;
	initial begin

		pck1 = new();

		pck1.data = 'h11;
		pck1.addr = 'h12;
		pck1.pack.s_addr = 'hAA;
		pck1.pack.e_addr = 'hBB;
		$display("display packet 1");
		pck1.display();


	       	pck2= new();
		pck2.deep_copy('h13,'h14,'hCC,'hDD);

		$display("display packet 2");
		pck2.display();

		pck1.pack.s_addr = 'h55;
		pck1.pack.e_addr = 'h66;

		$display("display packet 1");
		pck1.display();
		$display("display packet 2");
		pck2.display();
		
	end
endmodule


//# display packet 1
//# data = 11
//# addr = 12
//# s_addr = aa
//# e_addr = bb
//# display packet 2
//# data = 13
//# addr = 14
//# s_addr = cc
//# e_addr = dd
//# display packet 1
//# data = 11
//# addr = 12
//# s_addr = 55
//# e_addr = 66
//# display packet 2
//# data = 13
//# addr = 14
//# s_addr = cc
//# e_addr = dd
