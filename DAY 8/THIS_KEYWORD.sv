class oppo_f21;
 string os;
 int ram;
 int camera;

 function new(string os, int ram, camera);// constructor with arguments
	 this.os = os;
	 this.ram = ram;
	 this.camera = camera;
 endfunction

 function void display2();
	 $display("os = %s | ram = %0d | camera = %0d", os, ram, camera);
 endfunction

 endclass


	class oppo_f22 extends oppo_f21;
	int rom;
	string material;
	real display;
		function new();
			super.new("AND 7.1", 4, 64);
			rom = 64;
			material = "metal";
			display = 7.22;
		endfunction

		function void display1();
			$display("Updated from previous phone");
			$display("rom = %0d | material = %s | display = %f", rom, material, display);
		endfunction	
	endclass


module class_1();
	oppo_f22 ph1;
	initial begin
		ph1 = new();
		ph1.display1();
		ph1.display2();
	end
endmodule
