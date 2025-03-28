
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
  
