class transactor;

bit [7:0] data;
logic [7:0] addr;
string id;

	function new();	
		data = 1;
		addr = 8'hee;
		id = "Pr_new";
	endfunction

	virtual task  display();
	       $display(" parent_display");
	       $display("data : %0d addr : %0d id : %s", data, addr, id);
       endtask

	virtual	task perform();
		data = 0;
		addr = 0;
		id = "default";
	       $display(" parent_perfrom ");
	     // $display("data : %0d addr : %0d id : %s", data, addr, id);
	endtask

endclass

	class transactor_v1 extends transactor;

	int data;
	logic [7:0] addr;
	string destination;


		function new();
			data = 65;
			addr = 8'hAA;
			id = "ch_new";
		endfunction

		task display();
			super.display;
			$display("child_display");
		       $display(" data : %0d addr : %0d id : %s", data, addr, id);
		endtask		

		task perform();
			data = $urandom % 32;
			addr = addr + 1;
			id = "rp";
	       $display(" child_perfrom ");

		endtask
	endclass

module generator;
transactor_v1 tr1;
transactor tr;

	initial begin
		tr1 = new();
		tr1.display;

		tr = new();
		tr.display();

		tr = tr1;


		tr.data = 2;
		tr.addr = 190;
		tr.id = "push";
		tr.display;
		tr.perform;
		tr1.display;
		tr.display;

		
	/*	repeat(5)
			begin
				tr1.perform;
				tr1.display;
			end
	*/
	end
endmodule

//#  parent_display
//# data : 1 addr : 238 id : ch_new
//# child_display
//#  data : 65 addr : 170 id : ch_new
//#  parent_display
//# data : 1 addr : 238 id : Pr_new
//#  parent_display
//# data : 2 addr : 190 id : push
//# child_display
//#  data : 65 addr : 170 id : push
//#  child_perfrom
//#  parent_display
//# data : 2 addr : 190 id : rp
//# child_display
//#  data : 3 addr : 171 id : rp
//#  parent_display
//# data : 2 addr : 190 id : rp
//# child_display
//#  data : 3 addr : 171 id : rp
