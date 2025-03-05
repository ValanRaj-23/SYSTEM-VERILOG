  
//   class car_details;
    
//     string brand;
//     bit[15:0] model;
//     bit[4:0] fuel;
//     bit[2:0] seat;
    
//     function new();
//       brand = "xxx";
//       model = 1;
//       fuel =  2;
//       seat =  3;
//     endfunction
    
//     task modify(	string 		brand,
//                  	bit[15:0] 	model,
//                  	bit[4:2]	fuel,
//                  	bit[2:0] 	seat);
//       this.brand = brand;
//       this.model = model;
//       this.fuel =  fuel;
//       this.seat =  seat;

//     endtask
    
//     function void display();
//            $display("%0s Model:%0h fuel:%0d seat:%0d", brand, model, fuel, seat);
//     endfunction
    
//   endclass
  

// module car_detail();

//     initial begin
//       car_details version1;  // Create handle
//       version1 = new();      // instance of class
//       version1.display();
//       version1.modify("FORD", 16'hA010, 23, 4);   // accessing class method
//       version1.display();
//       version1.modify("FORD", 16'hA011, 20, 5);
// 	  version1.display();
//     end
//  endmodule
      
      
      
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
      version1.display();
    end
 endmodule

// ///OUTPUT
// # KERNEL: xxx Model:1 fuel:2 seat:3
// # KERNEL: FORD Model:a010 fuel:7 seat:4
// # KERNEL: FORD Model:a011 fuel:4 seat:5
      
