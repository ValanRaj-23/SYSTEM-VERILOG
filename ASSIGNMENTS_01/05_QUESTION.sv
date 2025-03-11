module dynamic_array;
int d[], d1[];

initial begin
	d = new[6];
	d1 = new[6];

	d = '{9, 1, 8, 3, 4, 4};
	foreach (d1[i])
	begin
		d1[i] = i;
	end

	$display(" d size : %0d ", d.size());
	$display(" d values : %p ", d);
	$display(" d1 size : %0d ", d1.size());
	$display(" d1 values : %p ", d1);

	d1.delete();
	$display(" d1 size : %0d ", d1.size());
	$display(" d1 values : %p ", d1);

	d.reverse();
	$display(" d values : %p ", d);
	
	d.sort();
	$display(" d values : %p ", d);
		
	d.rsort();
	$display(" d values : %p ", d);

	d.shuffle();
	$display(" d values : %p ", d);	 	
end

endmodule

//#  d size : 6
//#  d values : '{9, 1, 8, 3, 4, 4}
//#  d1 size : 6
//#  d1 values : '{0, 1, 2, 3, 4, 5}
//#  d1 size : 0
//#  d1 values : '{}
//#  d values : '{4, 4, 3, 8, 1, 9}
//#  d values : '{1, 3, 4, 4, 8, 9}
//#  d values : '{9, 8, 4, 4, 3, 1}
//#  d values : '{4, 1, 8, 3, 9, 4}
