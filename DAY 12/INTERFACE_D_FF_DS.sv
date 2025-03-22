module d_ff(intf intf_ds);
  
  always@(posedge intf_ds.clk)
   begin
     if(!intf_ds.rst)	intf_ds.q <= 0;
     else 				intf_ds.q <= intf_ds.d;
   end
endmodule 
