class packet;
bit[7:0] data;
bit[3:0] addr;

function void display();
begin
	$display("data = %0h addr = %0b",data, addr);
end
endfunction
endclass

module class_assignment;
packet pck1, pck2;

initial begin	
	pck1 = new;
	
	pck1.data = 8'hAB;
	pck1.addr = 4'b0001;
	pck1.display();
	
	pck2 = pck1;

	pck2.data = 8'hEE;
	pck2.addr = 4'b0010;
	pck2.display();

	pck1.display();

	pck1.data = 8'hff;
	pck1.addr = 4'b0011;
	pck1.display();

	pck1.display();
end

endmodule

// # data = ab addr = 1
// # data = ee addr = 10
// # data = ee addr = 10
// # data = ff addr = 11
// # data = ff addr = 11
