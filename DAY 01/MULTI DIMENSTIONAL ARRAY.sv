module multi_array;
  bit [3:0][7:0]dra1 [2:0][1:0][3:0];
  //  [ l ]          [ i ][ j ][ k ]
  
  initial begin
      
    foreach (dra1[i,j,k,l]) begin      
      dra1[i][j][k][l] = $urandom_range(255,0);
      $display(" dra1[%0d][%0d][%0d][%0d] = %0d", i, j, k,l, dra1[i][j][k][l]);
    end
  end

endmodule


// SIMULATION OUTPUT
/*             [i][j][k][l]
# KERNEL:  dra1[2][1][3][3] = 132
# KERNEL:  dra1[2][1][3][2] = 139
# KERNEL:  dra1[2][1][3][1] = 69
# KERNEL:  dra1[2][1][3][0] = 63
# KERNEL:  dra1[2][1][2][3] = 92
# KERNEL:  dra1[2][1][2][2] = 20
# KERNEL:  dra1[2][1][2][1] = 215
# KERNEL:  dra1[2][1][2][0] = 171
# KERNEL:  dra1[2][1][1][3] = 13
# KERNEL:  dra1[2][1][1][2] = 233
# KERNEL:  dra1[2][1][1][1] = 202
# KERNEL:  dra1[2][1][1][0] = 26
# KERNEL:  dra1[2][1][0][3] = 60
# KERNEL:  dra1[2][1][0][2] = 234
# KERNEL:  dra1[2][1][0][1] = 182
# KERNEL:  dra1[2][1][0][0] = 177
# KERNEL:  dra1[2][0][3][3] = 122
# KERNEL:  dra1[2][0][3][2] = 163
# KERNEL:  dra1[2][0][3][1] = 49
# KERNEL:  dra1[2][0][3][0] = 234
# KERNEL:  dra1[2][0][2][3] = 184
# KERNEL:  dra1[2][0][2][2] = 173
# KERNEL:  dra1[2][0][2][1] = 100
# KERNEL:  dra1[2][0][2][0] = 150
# KERNEL:  dra1[2][0][1][3] = 249
# KERNEL:  dra1[2][0][1][2] = 84
# KERNEL:  dra1[2][0][1][1] = 220
# KERNEL:  dra1[2][0][1][0] = 37
# KERNEL:  dra1[2][0][0][3] = 73
# KERNEL:  dra1[2][0][0][2] = 122
# KERNEL:  dra1[2][0][0][1] = 157
# KERNEL:  dra1[2][0][0][0] = 37
# KERNEL:  dra1[1][1][3][3] = 237
# KERNEL:  dra1[1][1][3][2] = 186
# KERNEL:  dra1[1][1][3][1] = 125
# KERNEL:  dra1[1][1][3][0] = 8
# KERNEL:  dra1[1][1][2][3] = 219
# KERNEL:  dra1[1][1][2][2] = 208
# KERNEL:  dra1[1][1][2][1] = 174
# KERNEL:  dra1[1][1][2][0] = 41
# KERNEL:  dra1[1][1][1][3] = 108
# KERNEL:  dra1[1][1][1][2] = 55
# KERNEL:  dra1[1][1][1][1] = 155
# KERNEL:  dra1[1][1][1][0] = 17
# KERNEL:  dra1[1][1][0][3] = 79
# KERNEL:  dra1[1][1][0][2] = 19
# KERNEL:  dra1[1][1][0][1] = 248
# KERNEL:  dra1[1][1][0][0] = 245
# KERNEL:  dra1[1][0][3][3] = 193
# KERNEL:  dra1[1][0][3][2] = 81
# KERNEL:  dra1[1][0][3][1] = 20
# KERNEL:  dra1[1][0][3][0] = 131
# KERNEL:  dra1[1][0][2][3] = 250
# KERNEL:  dra1[1][0][2][2] = 12
# KERNEL:  dra1[1][0][2][1] = 113
# KERNEL:  dra1[1][0][2][0] = 221
# KERNEL:  dra1[1][0][1][3] = 234
# KERNEL:  dra1[1][0][1][2] = 50
# KERNEL:  dra1[1][0][1][1] = 149
# KERNEL:  dra1[1][0][1][0] = 229
# KERNEL:  dra1[1][0][0][3] = 37
# KERNEL:  dra1[1][0][0][2] = 103
# KERNEL:  dra1[1][0][0][1] = 34
# KERNEL:  dra1[1][0][0][0] = 187
# KERNEL:  dra1[0][1][3][3] = 26
# KERNEL:  dra1[0][1][3][2] = 40
# KERNEL:  dra1[0][1][3][1] = 36
# KERNEL:  dra1[0][1][3][0] = 131
# KERNEL:  dra1[0][1][2][3] = 139
# KERNEL:  dra1[0][1][2][2] = 51
# KERNEL:  dra1[0][1][2][1] = 170
# KERNEL:  dra1[0][1][2][0] = 107
# KERNEL:  dra1[0][1][1][3] = 57
# KERNEL:  dra1[0][1][1][2] = 38
# KERNEL:  dra1[0][1][1][1] = 151
# KERNEL:  dra1[0][1][1][0] = 235
# KERNEL:  dra1[0][1][0][3] = 222
# KERNEL:  dra1[0][1][0][2] = 102
# KERNEL:  dra1[0][1][0][1] = 185
# KERNEL:  dra1[0][1][0][0] = 79
# KERNEL:  dra1[0][0][3][3] = 95
# KERNEL:  dra1[0][0][3][2] = 66
# KERNEL:  dra1[0][0][3][1] = 26
# KERNEL:  dra1[0][0][3][0] = 114
# KERNEL:  dra1[0][0][2][3] = 65
# KERNEL:  dra1[0][0][2][2] = 87
# KERNEL:  dra1[0][0][2][1] = 150
# KERNEL:  dra1[0][0][2][0] = 203
# KERNEL:  dra1[0][0][1][3] = 92
# KERNEL:  dra1[0][0][1][2] = 53
# KERNEL:  dra1[0][0][1][1] = 173
# KERNEL:  dra1[0][0][1][0] = 173
# KERNEL:  dra1[0][0][0][3] = 207
# KERNEL:  dra1[0][0][0][2] = 66
# KERNEL:  dra1[0][0][0][1] = 154
# KERNEL:  dra1[0][0][0][0] = 202

*/
