     
  class car_details;
    
    string brand;
    bit[15:0] model;
    bit[4:0] fuel;
    bit[2:0] seat;
    
    // class constructor
    function new();
      brand = "xxx";
      model = 1;
      fuel =  2;
      seat =  3;
    endfunction
    
    function void display();
           $display("%0s Model:%0h fuel:%0d seat:%0d", brand, model, fuel, seat);
    endfunction
    
  endclass
  

module car_detail();

    initial begin
      car_details version1;  // Create handle
      version1 = new();      // instance of class
      version1.display();    // asscessing class method
    end
 endmodule
      
