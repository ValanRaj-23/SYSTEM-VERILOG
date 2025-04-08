module queue;
int q1[$:6];
int q2[$];
int q1_size;
int out1;
	
	initial begin
		q1 = '{1,2,3,4,5,6};
		q1_size = q1.size(); 
		$display(" q1 size : %d", q1_size);
	        $display(" value of q1 : %p", q1);
		q1.insert(5,7);
	
		out1 = q1.pop_front();
		$display("popped value : %d", out1); 
			
		out1 = q1.pop_back();
		$display("popped value : %d", out1); 
	        $display(" value of q1 : %p", q1);

		q1.push_front(0);
		q1.push_back(6);
		q1.push_back(7);
		q1.push_back(8);
	        $display(" value of q1 : %p", q1);


		$display(" q1 size : %d", q1_size);
	        $display(" value of q1 : %p", q1);
	
	
		q2 = {1,2};
		$display(" q2 size : %d", q2.size());
	        $display(" value of q2 : %p", q2);

		q2.insert(q2.size()/2, 3);
		q2.insert(q2.size() - 1, 4);
	       	q2.insert(q2.size(), 5);	
	        $display(" value of q2 : %p", q2);

		q2.push_front(0);
		q2.push_back(6);
	        $display(" value of q2 : %p", q2);

		out1 = q2.pop_front();
		$display("popped value : %d", out1); 
		out1 = q2.pop_back();
	        $display("popped value : %d", out1);



	end

endmodule	


// # run -all
// #  q1 size :           6
// #  value of q1 : '{1, 2, 3, 4, 5, 6}
// # popped value :           1
// # popped value :           6
// #  value of q1 : '{2, 3, 4, 5, 7}
// # ** Warning: (vsim-2553) Queue operation would exceed max. right index of 6.
// #
// #    Time: 0 ns  Iteration: 0  Process: /queue/#INITIAL#7 File: queue.sv Line: 23
// # ** Warning: (vsim-2553) Queue operation would exceed max. right index of 6.
// #
// #    Time: 0 ns  Iteration: 0  Process: /queue/#INITIAL#7 File: queue.sv Line: 24
// #  value of q1 : '{0, 2, 3, 4, 5, 7, 6}
// #  q1 size :           6
// #  value of q1 : '{0, 2, 3, 4, 5, 7, 6}
// #  q2 size :           2
// #  value of q2 : '{1, 2}
// #  value of q2 : '{1, 3, 4, 2, 5}
// #  value of q2 : '{0, 1, 3, 4, 2, 5, 6}
// # popped value :           0
// # popped value :           6
