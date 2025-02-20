module unpacked_structure;

	struct{
      string fruits;
		byte num;
		int year;
		} details;

	initial begin
		details = '{"apple", 4, 2004};
		$display(" detail elements : %p", details);
		details.fruits = "orange";
		details.num = 10;
		details.year = 2025;
		$display(" detail elements : %p", details);		
	end
endmodule

//SIMULATION OUTPUT
/*
# KERNEL:  detail elements : '{fruits:"apple", num:4, year:2004}
# KERNEL:  detail elements : '{fruits:"orange", num:10, year:2025}
*/
