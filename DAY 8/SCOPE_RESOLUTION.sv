class packet;
int data;
int addr;

	extern function void display();
endclass

function void packet::display();
	$display(" data : %0d addr : %0h ", data, addr);
endfunction



module scope;
packet pkt;

	initial begin
		pkt = new();
		pkt.data = 4;
		pkt.addr = 45;
		pkt.display;
	end
endmodule
	

