// Write a constraint for the 8-bit variable that provides distribution 80% for range 0-100 and the remaining 20% for range 101-255.    

class arr_rand;
  rand bit [7:0] arr1;
  constraint c1{ arr1 dist {[0:100]:= 80, [101:255]:= 20};} 
  
endclass

module test;
  arr_rand ar;
  initial begin
    ar = new();
    repeat(10)
      begin
        ar.randomize();
        $display(" arr1 : ", ar.arr1);
      end
  end
endmodule

// #  arr1 : 102
// #  arr1 : 204
// #  arr1 :  54
// #  arr1 : 220
// #  arr1 :  21
// #  arr1 :  75
// #  arr1 :  87
// #  arr1 : 207
// #  arr1 : 210
// #  arr1 :  31
