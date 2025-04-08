// Create a class "RandClass". Declare two-variable var1 and var2 of 8 bits and Write a constraint to generate a random value for a var1 within 50 and var2 [7:0] with the non repeated value in every randomization? Also, write an inline constraint for the variable var1 to generate the value 40.  

class randClass;
  rand bit [7:0] var1;
  randc bit [7:0] var2;
  constraint c1{ var1 -> var1 < 50; }  
endclass

module test;
  randClass rc;
  initial begin
    rc = new();
    repeat(30)
      begin
        rc.randomize() with {var1 < 40;};
        $display(" var1 = %0d var2 = %0d", rc.var1, rc.var2);
      end
  end
endmodule

    
  
// #  var1 = 35 var2 = 183
// #  var1 = 14 var2 = 248
// #  var1 = 38 var2 = 255
// #  var1 = 8 var2 = 46
// #  var1 = 38 var2 = 227
// #  var1 = 10 var2 = 43
// #  var1 = 35 var2 = 13
// #  var1 = 20 var2 = 177
// #  var1 = 5 var2 = 62
// #  var1 = 27 var2 = 20
// #  var1 = 31 var2 = 187
// #  var1 = 28 var2 = 156
// #  var1 = 1 var2 = 65
// #  var1 = 38 var2 = 78
// #  var1 = 29 var2 = 160
