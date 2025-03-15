  class car_details;
    string brand;
    bit[15:0] model;
    bit[4:0] fuel;
    bit[2:0] seat;
    
 
    task modify();
      brand = "Ferrai";
      model = 16'hA011;
      fuel	=  25;
      seat  =  4;
      $display("%0s Model:%0h fuel:%0d seat:%0d", brand, model, fuel, seat);
    endtask
    
  endclass
  

module car_detail();

    initial begin
      car_details version1;  // Create handle
      version1 = new();      // instance of class
      version1.modify();     // accessing class method
    end
endmodule
      
      
      
