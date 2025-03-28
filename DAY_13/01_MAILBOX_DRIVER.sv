class driver;
  transaction trans;
  mailbox mb;
  
  function new(mailbox mb);
    this.mb = mb;
  endfunction
  
  task start();
    repeat(5)begin
      mb.get(trans);
      $display("data received");
      $display(" a = %0b b = %0b c = %0b", trans.a, trans.b, trans.c);
    end
  endtask
endclass
