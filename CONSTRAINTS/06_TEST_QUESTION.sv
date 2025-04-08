// Implement a code where two parallel threads are running and one thread is sending data while the other thread is receiving it. Assume the data to be a structure which consists of information 32-bit data and 8-bit lenght. The mechanism should work in such a way that, at any point of time the sender can send only send the next structure/pkt only when the previous one has been received by the receiver Assume that the receiver will accept the pkt after some random amount of delay for every pkt.

class transaction;
  rand bit [31:0] data;
  rand bit [7:0] addr;
  
  function void display(string str);
    $display("%t %s data = %0d addr = %0d",$time, str, data, addr);
  endfunction
  
endclass

class sender;
	transaction trans;
  	mailbox mb;
  
  function new(mailbox mb);
    this.mb = mb;
  endfunction
  
  	task send();
    repeat(5)
    begin
      	trans = new();
      	trans.randomize();
      	mb.put(trans);
      	trans.display("transmitted");
        #1;

    end
    endtask
  
endclass
      
class receiver;
  	transaction trans;
 	mailbox mb;
  
  function new(mailbox mb);
    this.mb = mb;
  endfunction
  
  task receive();
    repeat(5)
    begin
    	mb.get(trans);
      	trans.display("received");
    end
  endtask
endclass
    
  
      
module test;
  sender sd;
  receiver rc;
  mailbox mb;  
  initial begin
   	mb = new();
    sd = new(mb);
    rc = new(mb);
    
    fork
      sd.send();
      rc.receive();
    join
    
  end
endmodule
      
              
      
    
  



