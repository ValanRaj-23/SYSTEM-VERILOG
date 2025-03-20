class queue_typedef;
  typedef enum{ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE} num;
  randc num count;  
  rand int que[$];
  
  constraint que_size{ que.size() < 10;}
  constraint que_val{ foreach(que[i]) que[i] inside {[0:10]};}

endclass


module typedef_enum;
  initial begin
    queue_typedef ut;
    ut = new();
    repeat(12)
    begin
      void'(ut.randomize());
      $display(" Values : %0s", ut.count);
      $display(" que : %p", ut.que);
    end
  end
endmodule
    
// #  Values : EIGHT
// #  que : '{10, 4}
// #  Values : SEVEN
// #  que : '{6, 2, 6}
// #  Values : TWO
// #  que : '{8, 3, 7, 10, 0, 1, 0}
// #  Values : FIVE
// #  que : '{7, 2, 9}
// #  Values : SIX
// #  que : '{6, 6}
// #  Values : FOUR
// #  que : '{4, 4, 9, 9, 8}
