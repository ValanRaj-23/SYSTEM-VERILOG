module test;
  string str1, str2;
  int i;
  int size;
  
  initial begin
    str1 = "MADAM";
    size = str1.len();   
    str2 = "";           

    for(i = size-1; i >= 0; i--) begin
      str2 = {str2, str1[i]};  
    end
    check_palindrome();
  end 
  
  function void check_palindrome();
    if(str1 == str2)
      $display("the given string is palindrome");
    else
      $display("the given string is not a palindrome");
  endfunction
  
endmodul
