class generator;
  transaction trans;
  mailbox mb;
  
  function new(mailbox mb);
    this.mb = mb;
  endfunction
  
  task start();
    repeat(5) begin    
    trans = new();
    trans.randomize();
    mb.put(trans);
    $display("Process : generator");
    #5;
    end
  endtask
endclass
