
module mux_4x1_ds(intf inff);
  always_comb begin
    case (inff.sel)
      2'b00: inff.y = inff.d[0];
      2'b01: inff.y = inff.d[1];
      2'b10: inff.y = inff.d[2];
      2'b11: inff.y = inff.d[3];
      default: inff.y = 1'b0;
    endcase
  end
endmodule

