module queue_methods;
int j;
int q[$];

initial begin
	q = '{0, 2, 5};
	j = 22;
	$display(" q values : %p", q);
	$display(" j  : %0d", j);

	q[1] = j;
	$display(" q values : %p", q);

	q.delete(1);
	$display(" q values : %p", q);

	q.push_front(7);
	q.push_back(9);
	$display(" q values : %p", q);

	q.reverse();
	$display(" q values : %p", q);
	
	q.sort();
	$display(" q values : %p", q);
	
	q.rsort();
	$display(" q values : %p", q);

	q.shuffle();
	$display(" q values : %p", q);
	
	j = q.pop_front();
	$display(" popped value : %0d", j);

	j = q.pop_back();
	$display(" popped value : %0d", j);

	$display(" q values : %p", q);
end
endmodule

//#  q values : '{0, 2, 5}
//#  j  : 22
//#  q values : '{0, 22, 5}
//#  q values : '{0, 5}
//#  q values : '{7, 0, 5, 9}
//#  q values : '{9, 5, 0, 7}
//#  q values : '{0, 5, 7, 9}
//#  q values : '{9, 7, 5, 0}
//#  q values : '{7, 0, 5, 9}
//#  popped value : 7
//#  popped value : 9
//#  q values : '{0, 5}
