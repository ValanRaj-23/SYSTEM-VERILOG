module packed_structure;

struct packed{
	logic [3:0] data1;
	byte  data2;
  	shortint  data3;
	bit [3:0] data4;

	}list;

initial begin
	list.data1 = 'd12;
	list.data2 = 'd56;
	$display("elements in list : %p", list);

  	list = '{'h0, 'h00, 'd120, 'hf};
	$display("elements in list : %p", list);
  	
  	list = 0;
  	$display("elements in list : %p", list);
  
  	list = 'd255;
    $display("elements in list : %b", list);
  	$display("elements in list : %d", list);
  

    list.data1 = 'd34;
  	list.data2 = 'd45;
    $display("elements in list : %b", list);
    $display("elements in list : %d", list);


end
endmodule       


