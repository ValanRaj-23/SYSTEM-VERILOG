class distri;
  typedef enum{ UART, SPI, I2C, USB, AXI, APB, AHP}protocals;
  rand protocals test;
  

 constraint easy{ test dist {UART :/ 10, [SPI:USB] :/ 20, AXI :/ 50, [APB:AHP] :/ 70}; }
endclass

  
  module proto;
    initial begin
      distri d1;
      d1 = new();
      repeat(20)
        begin
          void'(d1.randomize());
          $display(" test weight : %0s", d1.test.name());
        end
    end
  endmodule
