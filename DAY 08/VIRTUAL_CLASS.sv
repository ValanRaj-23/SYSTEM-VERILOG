virtual class uvm_component;
  int a, b, c;
  pure virtual function void display;
  pure virtual function void connect;
      
endclass
  

class uvm_driver extends uvm_component;

  function new();
	a = 10;
	b = 20;
    $display("a = %0d b = %0d", a, b);
  endfunction
  
  function void display();
    $display("uvm_driver a = %0d b = %0d", a, b);
	endfunction
  
  function void connect();
    $display("uvm_driver class connect %0d + %0d = %0d", a, c, a+c);
  endfunction
  
endclass


module basic_chain_construct();
uvm_driver drv;
  initial begin
    drv = new();
    drv.display();
    drv.connect();
	drv.c = 4;
    drv.connect();	
	
  end
endmodule

// a = 10 b = 20
// uvm_driver a = 10 b = 20
// uvm_driver class connect 10 + 0 = 10
// uvm_driver class connect 10 + 4 = 14
