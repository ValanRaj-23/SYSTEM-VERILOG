module fork_join_none;
int a, b, c, d;

	initial begin
		a = 1;
		#10 b = 2;

		fork
			#20 $monitor("%t a = %0d b = %0d c = %0d d = %0d", $time, a, b, c, d);
			#20 c = 3;
			#25 d = 4;
			#30 a = 6;
		        #45 b = 7;
			#60 b = 45;
			#22  {a,b,c,d} = 0;
			#100 fork 
				a = 2;  b = 2 ; c = 2; d = 2;
			     join

		     join_none

		#15 a = 1;
		#5   b = 9;
	        #5   d = 32;

		#30 fork 
			#10	fork 
				a = 3;  b = 3 ; c = 3; d = 3;
				join
			
			#20	$finish;
			$display("\t \t fork_join finished");
			join			

		$display("\t \t fork_join finished1");
	end
	endmodule


//#                   30 a = 1 b = 9 c = 3 d = 0
//#                   32 a = 0 b = 0 c = 0 d = 0
//#                   35 a = 0 b = 0 c = 0 d = 4
//#                   40 a = 6 b = 0 c = 0 d = 4
//#                   55 a = 6 b = 7 c = 0 d = 4
//#                fork_join finished
//#                   70 a = 6 b = 45 c = 0 d = 4
//#                   75 a = 3 b = 3 c = 3 d = 3

