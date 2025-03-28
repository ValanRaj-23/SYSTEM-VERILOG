
  `include"transaction.sv"
  `include"generator.sv"
  `include"driver.sv"
module top_tb;
  generator gen;
  driver drive;
  mailbox mb;
  
  initial begin
    mb = new();
    gen = new(mb);
    drive = new(mb);
    
    $display("_________________");
    fork
      gen.start();
      drive.start();
    join
  	$display("_________________");
  end
endmodule


// OUTPUT
//   Process : Transaction
// # Process : generator
// # data received
// #  a = 1 b = 0 c = 0
// # Process : Transaction
// # Process : generator
// # data received
// #  a = 0 b = 0 c = 1
// # Process : Transaction
// # Process : generator
// # data received
// #  a = 0 b = 1 c = 1
// # Process : Transaction
// # Process : generator
// # data received
// #  a = 1 b = 1 c = 1
// # Process : Transaction
// # Process : generator
// # data received
// #  a = 0 b = 1 c = 0
