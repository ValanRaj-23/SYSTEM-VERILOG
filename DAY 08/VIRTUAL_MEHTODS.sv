class transactor;

bit [7:0] data;
logic [7:0] addr;
string destination;

	function new();	
		data = 45;
		addr = 8'hAA;
	endfunction
	
	//virtual function -- will not 
	virtual function void display();
	       $display(" data : %0d addr : %0d", data, addr);
       	endfunction

endclass

	class transactor_v1 extends transactor;

	int data;
	logic [7:0] addr;
	string destination;


		function new();
			data = 65;
			addr = 8'hAA;
		endfunction

		function void display();
			super.display;
	       		$display(" data : %0d addr : %0d", data, addr);
		endfunction
		
	endclass

module generator;
transactor_v1 tr1;

	initial begin
		tr1 = new();
		tr1.display;
	end
endmodule

//#  data : 45 addr : 170
//#  data : 65 addr : 170
