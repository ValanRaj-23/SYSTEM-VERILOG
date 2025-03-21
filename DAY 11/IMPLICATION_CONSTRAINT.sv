class spi;
  typedef enum{SLAVE1, SLAVE2, SLAVE3, SLAVE4}slave;
  rand slave sl_num;
  rand bit [1:0] cs;
  randc bit clk;
  
  constraint chipselect{ 	   if (sl_num == SLAVE1) (cs == 2'b00) ;
                        else if (sl_num == SLAVE2) (cs == 2'b01) ;
                        else if (sl_num == SLAVE3) (cs == 2'b10) ;
                        else if (sl_num == SLAVE4) (cs == 2'b11) ;
                       } 
endclass

module chipselect;
  initial begin
    spi s1;
    s1 = new();
    
    repeat(6)
      begin
        void'(s1.randomize());
        $display(" SLAVE = %s CS = %0d", s1.sl_num, s1.cs);
      end
  end 
endmodule
