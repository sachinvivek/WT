
//16 bit barrel shifters
module barrel_shifter_left (input wire [15:0] in,input wire [3:0] ctrl,output wire [15:0] out);
  wire [0:15] x,y,z;


//1 bit shift left

mux2X1  ins_49 (.in0(y[0]),.in1(1'b0),.sel(ctrl[0]),.out(out[0]));
mux2X1  ins_50 (.in0(y[1]),.in1(y[0]),.sel(ctrl[0]),.out(out[1]));
mux2X1  ins_51 (.in0(y[2]),.in1(y[1]),.sel(ctrl[0]),.out(out[2]));
mux2X1  ins_52 (.in0(y[3]),.in1(y[2]),.sel(ctrl[0]),.out(out[3]));
mux2X1  ins_53 (.in0(y[4]),.in1(y[3]),.sel(ctrl[0]),.out(out[4]));
mux2X1  ins_54 (.in0(y[5]),.in1(y[4]),.sel(ctrl[0]),.out(out[5]));
mux2X1  ins_55 (.in0(y[6]),.in1(y[5]),.sel(ctrl[0]),.out(out[6]));
mux2X1  ins_56 (.in0(y[7]),.in1(y[6]),.sel(ctrl[0]),.out(out[7]));
mux2X1  ins_57 (.in0(y[8]),.in1(y[7]),.sel(ctrl[0]),.out(out[8]));
mux2X1  ins_58 (.in0(y[9]),.in1(y[8]),.sel(ctrl[0]),.out(out[9]));
mux2X1  ins_59 (.in0(y[10]),.in1(y[9]),.sel(ctrl[0]),.out(out[10]));
mux2X1  ins_60 (.in0(y[11]),.in1(y[10]),.sel(ctrl[0]),.out(out[11]));
mux2X1  ins_61 (.in0(y[12]),.in1(y[11]),.sel(ctrl[0]),.out(out[12]));
mux2X1  ins_62 (.in0(y[13]),.in1(y[12]),.sel(ctrl[0]),.out(out[13]));
mux2X1  ins_63 (.in0(y[14]),.in1(y[13]),.sel(ctrl[0]),.out(out[14]));
mux2X1  ins_64 (.in0(y[15]),.in1(y[14]),.sel(ctrl[0]),.out(out[15]));


//2 bit shift left
mux2X1  ins_33 (.in0(x[0]),.in1(1'b0),.sel(ctrl[1]),.out(y[0]));
mux2X1  ins_34 (.in0(x[1]),.in1(1'b0),.sel(ctrl[1]),.out(y[1]));
mux2X1  ins_35 (.in0(x[2]),.in1(x[0]),.sel(ctrl[1]),.out(y[2]));
mux2X1  ins_36 (.in0(x[3]),.in1(x[1]),.sel(ctrl[1]),.out(y[3]));
mux2X1  ins_37 (.in0(x[4]),.in1(x[2]),.sel(ctrl[1]),.out(y[4]));
mux2X1  ins_38 (.in0(x[5]),.in1(x[3]),.sel(ctrl[1]),.out(y[5]));
mux2X1  ins_39 (.in0(x[6]),.in1(x[4]),.sel(ctrl[1]),.out(y[6]));
mux2X1  ins_40 (.in0(x[7]),.in1(x[5]),.sel(ctrl[1]),.out(y[7]));
mux2X1  ins_41 (.in0(x[8]),.in1(x[6]),.sel(ctrl[1]),.out(y[8]));
mux2X1  ins_42 (.in0(x[9]),.in1(x[7]),.sel(ctrl[1]),.out(y[9]));
mux2X1  ins_43 (.in0(x[10]),.in1(x[8]),.sel(ctrl[1]),.out(y[10]));
mux2X1  ins_44 (.in0(x[11]),.in1(x[9]),.sel(ctrl[1]),.out(y[11]));
mux2X1  ins_45 (.in0(x[12]),.in1(x[10]),.sel(ctrl[1]),.out(y[12]));
mux2X1  ins_46 (.in0(x[13]),.in1(x[11]),.sel(ctrl[1]),.out(y[13]));
mux2X1  ins_47 (.in0(x[14]),.in1(x[12]),.sel(ctrl[1]),.out(y[14]));
mux2X1  ins_48 (.in0(x[15]),.in1(x[13]),.sel(ctrl[1]),.out(y[15]));

//4bit shift left
mux2X1  ins_17 (.in0(z[0]),.in1(1'b0),.sel(ctrl[2]),.out(x[0]));
mux2X1  ins_18(.in0(z[1]),.in1(1'b0),.sel(ctrl[2]),.out(x[1]));
mux2X1  ins_19 (.in0(z[2]),.in1(1'b0),.sel(ctrl[2]),.out(x[2]));
mux2X1  ins_20 (.in0(z[3]),.in1(1'b0),.sel(ctrl[2]),.out(x[3]));
mux2X1  ins_21 (.in0(z[4]),.in1(z[0]),.sel(ctrl[2]),.out(x[4]));
mux2X1  ins_22 (.in0(z[5]),.in1(z[1]),.sel(ctrl[2]),.out(x[5]));
mux2X1  ins_23 (.in0(z[6]),.in1(z[2]),.sel(ctrl[2]),.out(x[6]));
mux2X1  ins_24 (.in0(z[7]),.in1(z[3]),.sel(ctrl[2]),.out(x[7]));
mux2X1  ins_25 (.in0(z[8]),.in1(z[4]),.sel(ctrl[2]),.out(x[8]));
mux2X1  ins_26 (.in0(z[9]),.in1(z[5]),.sel(ctrl[2]),.out(x[9]));
mux2X1  ins_27 (.in0(z[10]),.in1(z[6]),.sel(ctrl[2]),.out(x[10]));
mux2X1  ins_28 (.in0(z[11]),.in1(z[7]),.sel(ctrl[2]),.out(x[11]));
mux2X1  ins_29 (.in0(z[12]),.in1(z[8]),.sel(ctrl[2]),.out(x[12]));
mux2X1  ins_30 (.in0(z[13]),.in1(z[9]),.sel(ctrl[2]),.out(x[13]));
mux2X1  ins_31 (.in0(z[14]),.in1(z[10]),.sel(ctrl[2]),.out(x[14]));
mux2X1  ins_32 (.in0(z[15]),.in1(z[11]),.sel(ctrl[2]),.out(x[15]));
 
 
//8bit shift left
mux2X1  ins_1 (.in0(in[0]),.in1(1'b0),.sel(ctrl[3]),.out(z[0]));
mux2X1  ins_2 (.in0(in[1]),.in1(1'b0),.sel(ctrl[3]),.out(z[1]));
mux2X1  ins_3 (.in0(in[2]),.in1(1'b0),.sel(ctrl[3]),.out(z[2]));
mux2X1  ins_4 (.in0(in[3]),.in1(1'b0),.sel(ctrl[3]),.out(z[3]));
mux2X1  ins_5 (.in0(in[4]),.in1(1'b0),.sel(ctrl[3]),.out(z[4]));
mux2X1  ins_6 (.in0(in[5]),.in1(1'b0),.sel(ctrl[3]),.out(z[5]));
mux2X1  ins_7 (.in0(in[6]),.in1(1'b0),.sel(ctrl[3]),.out(z[6]));
mux2X1  ins_8 (.in0(in[7]),.in1(1'b0),.sel(ctrl[3]),.out(z[7]));
mux2X1  ins_9 (.in0(in[8]),.in1(in[0]),.sel(ctrl[3]),.out(z[8]));
mux2X1  ins_10 (.in0(in[9]),.in1(in[1]),.sel(ctrl[3]),.out(z[9]));
mux2X1  ins_11 (.in0(in[10]),.in1(in[2]),.sel(ctrl[3]),.out(z[10]));
mux2X1  ins_12 (.in0(in[11]),.in1(in[3]),.sel(ctrl[3]),.out(z[11]));
mux2X1  ins_13 (.in0(in[12]),.in1(in[4]),.sel(ctrl[3]),.out(z[12]));
mux2X1  ins_14 (.in0(in[13]),.in1(in[5]),.sel(ctrl[3]),.out(z[13]));
mux2X1  ins_15 (.in0(in[14]),.in1(in[6]),.sel(ctrl[3]),.out(z[14]));
mux2X1  ins_16 (.in0(in[15]),.in1(in[7]),.sel(ctrl[3]),.out(z[15]));
 
 



 
endmodule



module rotator_left (input wire [15:0] in,input wire [3:0] ctrl,output wire [15:0] out);

  wire [0:15] x,y,z;
  
  //1 bit rotate 
mux2X1  ins_49 (.in0(y[0]),.in1(y[15]),.sel(ctrl[0]),.out(out[0]));
mux2X1  ins_50 (.in0(y[1]),.in1(y[0]),.sel(ctrl[0]),.out(out[1]));
mux2X1  ins_51 (.in0(y[2]),.in1(y[1]),.sel(ctrl[0]),.out(out[2]));
mux2X1  ins_52 (.in0(y[3]),.in1(y[2]),.sel(ctrl[0]),.out(out[3]));
mux2X1  ins_53 (.in0(y[4]),.in1(y[3]),.sel(ctrl[0]),.out(out[4]));
mux2X1  ins_54 (.in0(y[5]),.in1(y[4]),.sel(ctrl[0]),.out(out[5]));
mux2X1  ins_55 (.in0(y[6]),.in1(y[5]),.sel(ctrl[0]),.out(out[6]));
mux2X1  ins_56 (.in0(y[7]),.in1(y[6]),.sel(ctrl[0]),.out(out[7]));
mux2X1  ins_57 (.in0(y[8]),.in1(y[7]),.sel(ctrl[0]),.out(out[8]));
mux2X1  ins_58 (.in0(y[9]),.in1(y[8]),.sel(ctrl[0]),.out(out[9]));
mux2X1  ins_59 (.in0(y[10]),.in1(y[9]),.sel(ctrl[0]),.out(out[10]));
mux2X1  ins_60 (.in0(y[11]),.in1(y[10]),.sel(ctrl[0]),.out(out[11]));
mux2X1  ins_61 (.in0(y[12]),.in1(y[11]),.sel(ctrl[0]),.out(out[12]));
mux2X1  ins_62 (.in0(y[13]),.in1(y[12]),.sel(ctrl[0]),.out(out[13]));
mux2X1  ins_63 (.in0(y[14]),.in1(y[13]),.sel(ctrl[0]),.out(out[14]));
mux2X1  ins_64 (.in0(y[15]),.in1(y[14]),.sel(ctrl[0]),.out(out[15]));

//2 bit rotate 
 
mux2X1  ins_33 (.in0(x[0]),.in1(x[14]),.sel(ctrl[1]),.out(y[0]));
mux2X1  ins_34 (.in0(x[1]),.in1(x[15]),.sel(ctrl[1]),.out(y[1]));
mux2X1  ins_35 (.in0(x[2]),.in1(x[0]),.sel(ctrl[1]),.out(y[2]));
mux2X1  ins_36 (.in0(x[3]),.in1(x[1]),.sel(ctrl[1]),.out(y[3]));
mux2X1  ins_37 (.in0(x[4]),.in1(x[2]),.sel(ctrl[1]),.out(y[4]));
mux2X1  ins_38 (.in0(x[5]),.in1(x[3]),.sel(ctrl[1]),.out(y[5]));
mux2X1  ins_39 (.in0(x[6]),.in1(x[4]),.sel(ctrl[1]),.out(y[6]));
mux2X1  ins_40 (.in0(x[7]),.in1(x[5]),.sel(ctrl[1]),.out(y[7]));
mux2X1  ins_41 (.in0(x[8]),.in1(x[6]),.sel(ctrl[1]),.out(y[8]));
mux2X1  ins_42 (.in0(x[9]),.in1(x[7]),.sel(ctrl[1]),.out(y[9]));
mux2X1  ins_43 (.in0(x[10]),.in1(x[8]),.sel(ctrl[1]),.out(y[10]));
mux2X1  ins_44 (.in0(x[11]),.in1(x[9]),.sel(ctrl[1]),.out(y[11]));
mux2X1  ins_45 (.in0(x[12]),.in1(x[10]),.sel(ctrl[1]),.out(y[12]));
mux2X1  ins_46 (.in0(x[13]),.in1(x[11]),.sel(ctrl[1]),.out(y[13]));
mux2X1  ins_47 (.in0(x[14]),.in1(x[12]),.sel(ctrl[1]),.out(y[14]));
mux2X1  ins_48 (.in0(x[15]),.in1(x[13]),.sel(ctrl[1]),.out(y[15]));

//4bit rotate
mux2X1  ins_17 (.in0(z[0]),.in1(z[12]),.sel(ctrl[2]),.out(x[0]));
mux2X1  ins_18 (.in0(z[1]),.in1(z[13]),.sel(ctrl[2]),.out(x[1]));
mux2X1  ins_19 (.in0(z[2]),.in1(z[14]),.sel(ctrl[2]),.out(x[2]));
mux2X1  ins_20 (.in0(z[3]),.in1(z[15]),.sel(ctrl[2]),.out(x[3]));
mux2X1  ins_21 (.in0(z[4]),.in1(z[0]),.sel(ctrl[2]),.out(x[4]));
mux2X1  ins_22 (.in0(z[5]),.in1(z[1]),.sel(ctrl[2]),.out(x[5]));
mux2X1  ins_23 (.in0(z[6]),.in1(z[2]),.sel(ctrl[2]),.out(x[6]));
mux2X1  ins_24 (.in0(z[7]),.in1(z[3]),.sel(ctrl[2]),.out(x[7]));
mux2X1  ins_25 (.in0(z[8]),.in1(z[4]),.sel(ctrl[2]),.out(x[8]));
mux2X1  ins_26 (.in0(z[9]),.in1(z[5]),.sel(ctrl[2]),.out(x[9]));
mux2X1  ins_27 (.in0(z[10]),.in1(z[6]),.sel(ctrl[2]),.out(x[10]));
mux2X1  ins_28 (.in0(z[11]),.in1(z[7]),.sel(ctrl[2]),.out(x[11]));
mux2X1  ins_29 (.in0(z[12]),.in1(z[8]),.sel(ctrl[2]),.out(x[12]));
mux2X1  ins_30 (.in0(z[13]),.in1(z[9]),.sel(ctrl[2]),.out(x[13]));
mux2X1  ins_31 (.in0(z[14]),.in1(z[10]),.sel(ctrl[2]),.out(x[14]));
mux2X1  ins_32 (.in0(z[15]),.in1(z[11]),.sel(ctrl[2]),.out(x[15]));
 
 
//8bit rotate 
mux2X1  ins_1 (.in0(in[0]),.in1(in[8]),.sel(ctrl[3]),.out(z[0]));
mux2X1  ins_2 (.in0(in[1]),.in1(in[9]),.sel(ctrl[3]),.out(z[1]));
mux2X1  ins_3 (.in0(in[2]),.in1(in[10]),.sel(ctrl[3]),.out(z[2]));
mux2X1  ins_4 (.in0(in[3]),.in1(in[11]),.sel(ctrl[3]),.out(z[3]));
mux2X1  ins_5 (.in0(in[4]),.in1(in[12]),.sel(ctrl[3]),.out(z[4]));
mux2X1  ins_6 (.in0(in[5]),.in1(in[13]),.sel(ctrl[3]),.out(z[5]));
mux2X1  ins_7 (.in0(in[6]),.in1(in[14]),.sel(ctrl[3]),.out(z[6]));
mux2X1  ins_8 (.in0(in[7]),.in1(in[15]),.sel(ctrl[3]),.out(z[7]));
mux2X1  ins_9 (.in0(in[8]),.in1(in[16]),.sel(ctrl[3]),.out(z[8]));
mux2X1  ins_10 (.in0(in[9]),.in1(in[0]),.sel(ctrl[3]),.out(z[9]));
mux2X1  ins_11 (.in0(in[10]),.in1(in[1]),.sel(ctrl[3]),.out(z[10]));
mux2X1  ins_12 (.in0(in[11]),.in1(in[3]),.sel(ctrl[3]),.out(z[11]));
mux2X1  ins_13 (.in0(in[12]),.in1(in[4]),.sel(ctrl[3]),.out(z[12]));
mux2X1  ins_14 (.in0(in[13]),.in1(in[5]),.sel(ctrl[3]),.out(z[13]));
mux2X1  ins_15 (.in0(in[14]),.in1(in[6]),.sel(ctrl[3]),.out(z[14]));
mux2X1  ins_16 (.in0(in[15]),.in1(in[7]),.sel(ctrl[3]),.out(z[15]));



 

 
endmodule


module barrel_shifter_right (input wire [15:0] in,input wire [3:0] ctrl,output wire [15:0] out);
  wire [15:0] x,y,z;




//1 bit shift right
mux2X1  ins_49 (.in0(y[15]),.in1(1'b0),.sel(ctrl[0]),.out(out[15]));
mux2X1  ins_50 (.in0(y[14]),.in1(y[15]),.sel(ctrl[0]),.out(out[14]));
mux2X1  ins_51 (.in0(y[13]),.in1(y[14]),.sel(ctrl[0]),.out(out[13]));
mux2X1  ins_52 (.in0(y[12]),.in1(y[13]),.sel(ctrl[0]),.out(out[12]));
mux2X1  ins_53 (.in0(y[11]),.in1(y[12]),.sel(ctrl[0]),.out(out[11]));
mux2X1  ins_54 (.in0(y[10]),.in1(y[11]),.sel(ctrl[0]),.out(out[10]));
mux2X1  ins_55 (.in0(y[9]),.in1(y[10]),.sel(ctrl[0]),.out(out[9]));
mux2X1  ins_56 (.in0(y[8]),.in1(y[9]),.sel(ctrl[0]),.out(out[8]));
mux2X1  ins_57 (.in0(y[7]),.in1(y[8]),.sel(ctrl[0]),.out(out[7]));
mux2X1  ins_58 (.in0(y[6]),.in1(y[7]),.sel(ctrl[0]),.out(out[6]));
mux2X1  ins_59 (.in0(y[5]),.in1(y[6]),.sel(ctrl[0]),.out(out[5]));
mux2X1  ins_60 (.in0(y[4]),.in1(y[5]),.sel(ctrl[0]),.out(out[4]));
mux2X1  ins_61 (.in0(y[3]),.in1(y[4]),.sel(ctrl[0]),.out(out[3]));
mux2X1  ins_62 (.in0(y[2]),.in1(y[3]),.sel(ctrl[0]),.out(out[2]));
mux2X1  ins_63 (.in0(y[1]),.in1(y[2]),.sel(ctrl[0]),.out(out[1]));
mux2X1  ins_64 (.in0(y[0]),.in1(y[1]),.sel(ctrl[0]),.out(out[0]));

//2 bits shift right
 
mux2X1  ins_33 (.in0(x[15]),.in1(1'b0),.sel(ctrl[1]),.out(y[15]));
mux2X1  ins_34 (.in0(x[14]),.in1(1'b0),.sel(ctrl[1]),.out(y[14]));
mux2X1  ins_35 (.in0(x[13]),.in1(x[15]),.sel(ctrl[1]),.out(y[13]));
mux2X1  ins_36 (.in0(x[12]),.in1(x[14]),.sel(ctrl[1]),.out(y[12]));
mux2X1  ins_37 (.in0(x[11]),.in1(x[13]),.sel(ctrl[1]),.out(y[11]));
mux2X1  ins_38 (.in0(x[10]),.in1(x[12]),.sel(ctrl[1]),.out(y[10]));
mux2X1  ins_39 (.in0(x[9]),.in1(x[11]),.sel(ctrl[1]),.out(y[9]));
mux2X1  ins_40 (.in0(x[8]),.in1(x[10]),.sel(ctrl[1]),.out(y[8]));
mux2X1  ins_41 (.in0(x[7]),.in1(x[9]),.sel(ctrl[1]),.out(y[7]));
mux2X1  ins_42 (.in0(x[6]),.in1(x[8]),.sel(ctrl[1]),.out(y[6]));
mux2X1  ins_43 (.in0(x[5]),.in1(x[7]),.sel(ctrl[1]),.out(y[5]));
mux2X1  ins_44 (.in0(x[4]),.in1(x[6]),.sel(ctrl[1]),.out(y[4]));
mux2X1  ins_45 (.in0(x[3]),.in1(x[5]),.sel(ctrl[1]),.out(y[3]));
mux2X1  ins_46 (.in0(x[2]),.in1(x[4]),.sel(ctrl[1]),.out(y[2]));
mux2X1  ins_47 (.in0(x[1]),.in1(x[3]),.sel(ctrl[1]),.out(y[1]));
mux2X1  ins_48 (.in0(x[0]),.in1(x[2]),.sel(ctrl[1]),.out(y[0]));


//4bits shift right
mux2X1  ins_17 (.in0(z[15]),.in1(1'b0),.sel(ctrl[2]),.out(x[15]));
mux2X1  ins_18 (.in0(z[14]),.in1(1'b0),.sel(ctrl[2]),.out(x[14]));
mux2X1  ins_19 (.in0(z[13]),.in1(1'b0),.sel(ctrl[2]),.out(x[13]));
mux2X1  ins_20 (.in0(z[12]),.in1(1'b0),.sel(ctrl[2]),.out(x[12]));
mux2X1  ins_21 (.in0(z[11]),.in1(z[15]),.sel(ctrl[2]),.out(x[11]));
mux2X1  ins_22 (.in0(z[10]),.in1(z[14]),.sel(ctrl[2]),.out(x[10]));
mux2X1  ins_23 (.in0(z[9]),.in1(z[13]),.sel(ctrl[2]),.out(x[9]));
mux2X1  ins_24 (.in0(z[8]),.in1(z[12]),.sel(ctrl[2]),.out(x[8]));
mux2X1  ins_25 (.in0(z[7]),.in1(z[11]),.sel(ctrl[2]),.out(x[7]));
mux2X1  ins_26 (.in0(z[6]),.in1(z[10]),.sel(ctrl[2]),.out(x[6]));
mux2X1  ins_27 (.in0(z[5]),.in1(z[9]),.sel(ctrl[2]),.out(x[5]));
mux2X1  ins_28 (.in0(z[4]),.in1(z[8]),.sel(ctrl[2]),.out(x[4]));
mux2X1  ins_29 (.in0(z[3]),.in1(in[7]),.sel(ctrl[2]),.out(x[3]));
mux2X1  ins_30 (.in0(z[2]),.in1(in[6]),.sel(ctrl[2]),.out(x[2]));
mux2X1  ins_31 (.in0(z[1]),.in1(in[5]),.sel(ctrl[2]),.out(x[1]));
mux2X1  ins_32 (.in0(z[0]),.in1(in[4]),.sel(ctrl[2]),.out(x[0]));
 
//8bits shift right 
mux2X1  ins_1 (.in0(in[15]),.in1(1'b0),.sel(ctrl[3]),.out(z[15]));
mux2X1  ins_2 (.in0(in[14]),.in1(1'b0),.sel(ctrl[3]),.out(z[14]));
mux2X1  ins_3 (.in0(in[13]),.in1(1'b0),.sel(ctrl[3]),.out(z[13]));
mux2X1  ins_4 (.in0(in[12]),.in1(1'b0),.sel(ctrl[3]),.out(z[12]));
mux2X1  ins_5 (.in0(in[11]),.in1(1'b0),.sel(ctrl[3]),.out(z[11]));
mux2X1  ins_6 (.in0(in[10]),.in1(1'b0),.sel(ctrl[3]),.out(z[10]));
mux2X1  ins_7 (.in0(in[9]),.in1(1'b0),.sel(ctrl[3]),.out(z[9]));
mux2X1  ins_8 (.in0(in[8]),.in1(1'b0),.sel(ctrl[3]),.out(z[8]));
mux2X1  ins_9 (.in0(in[7]),.in1(in[15]),.sel(ctrl[3]),.out(z[7]));
mux2X1  ins_10 (.in0(in[6]),.in1(in[14]),.sel(ctrl[3]),.out(z[6]));
mux2X1  ins_11 (.in0(in[5]),.in1(in[13]),.sel(ctrl[3]),.out(z[5]));
mux2X1  ins_12 (.in0(in[4]),.in1(in[12]),.sel(ctrl[3]),.out(z[4]));
mux2X1  ins_13 (.in0(in[3]),.in1(in[11]),.sel(ctrl[3]),.out(z[3]));
mux2X1  ins_14 (.in0(in[2]),.in1(in[10]),.sel(ctrl[3]),.out(z[2]));
mux2X1  ins_15 (.in0(in[1]),.in1(in[9]),.sel(ctrl[3]),.out(z[1]));
mux2X1  ins_16 (.in0(in[0]),.in1(in[8]),.sel(ctrl[3]),.out(z[0]));
 

 


endmodule



module rotator_right (input wire [15:0] in,input wire [3:0] ctrl,output wire [15:0] out);
  wire [15:0] x,y,z;


//1 bit shift right
mux2X1  ins_49 (.in0(y[15]),.in1(y[0]),.sel(ctrl[0]),.out(out[15]));
mux2X1  ins_50 (.in0(y[14]),.in1(y[15]),.sel(ctrl[0]),.out(out[14]));
mux2X1  ins_51 (.in0(y[13]),.in1(y[14]),.sel(ctrl[0]),.out(out[13]));
mux2X1  ins_52 (.in0(y[12]),.in1(y[13]),.sel(ctrl[0]),.out(out[12]));
mux2X1  ins_53 (.in0(y[11]),.in1(y[12]),.sel(ctrl[0]),.out(out[11]));
mux2X1  ins_54 (.in0(y[10]),.in1(y[11]),.sel(ctrl[0]),.out(out[10]));
mux2X1  ins_55 (.in0(y[9]),.in1(y[10]),.sel(ctrl[0]),.out(out[9]));
mux2X1  ins_56 (.in0(y[8]),.in1(y[9]),.sel(ctrl[0]),.out(out[8]));
mux2X1  ins_57 (.in0(y[7]),.in1(y[8]),.sel(ctrl[0]),.out(out[7]));
mux2X1  ins_58 (.in0(y[6]),.in1(y[7]),.sel(ctrl[0]),.out(out[6]));
mux2X1  ins_59 (.in0(y[5]),.in1(y[6]),.sel(ctrl[0]),.out(out[5]));
mux2X1  ins_60 (.in0(y[4]),.in1(y[5]),.sel(ctrl[0]),.out(out[4]));
mux2X1  ins_61 (.in0(y[3]),.in1(y[4]),.sel(ctrl[0]),.out(out[3]));
mux2X1  ins_62 (.in0(y[2]),.in1(y[3]),.sel(ctrl[0]),.out(out[2]));
mux2X1  ins_63 (.in0(y[1]),.in1(y[2]),.sel(ctrl[0]),.out(out[1]));
mux2X1  ins_64 (.in0(y[0]),.in1(y[1]),.sel(ctrl[0]),.out(out[0]));

//2 bit shift right
 
mux2X1  ins_33 (.in0(x[15]),.in1(x[1]),.sel(ctrl[1]),.out(y[15]));
mux2X1  ins_34 (.in0(x[14]),.in1(x[0]),.sel(ctrl[1]),.out(y[14]));
mux2X1  ins_35 (.in0(x[13]),.in1(x[15]),.sel(ctrl[1]),.out(y[13]));
mux2X1  ins_36 (.in0(x[12]),.in1(x[14]),.sel(ctrl[1]),.out(y[12]));
mux2X1  ins_37 (.in0(x[11]),.in1(x[13]),.sel(ctrl[1]),.out(y[11]));
mux2X1  ins_38 (.in0(x[10]),.in1(x[12]),.sel(ctrl[1]),.out(y[10]));
mux2X1  ins_39 (.in0(x[9]),.in1(x[11]),.sel(ctrl[1]),.out(y[9]));
mux2X1  ins_40 (.in0(x[8]),.in1(x[10]),.sel(ctrl[1]),.out(y[8]));
mux2X1  ins_41 (.in0(x[7]),.in1(x[9]),.sel(ctrl[1]),.out(y[7]));
mux2X1  ins_42 (.in0(x[6]),.in1(x[8]),.sel(ctrl[1]),.out(y[6]));
mux2X1  ins_43 (.in0(x[5]),.in1(x[7]),.sel(ctrl[1]),.out(y[5]));
mux2X1  ins_44 (.in0(x[4]),.in1(x[6]),.sel(ctrl[1]),.out(y[4]));
mux2X1  ins_45 (.in0(x[3]),.in1(x[5]),.sel(ctrl[1]),.out(y[3]));
mux2X1  ins_46 (.in0(x[2]),.in1(x[4]),.sel(ctrl[1]),.out(y[2]));
mux2X1  ins_47 (.in0(x[1]),.in1(x[3]),.sel(ctrl[1]),.out(y[1]));
mux2X1  ins_48 (.in0(x[0]),.in1(x[2]),.sel(ctrl[1]),.out(y[0]));

//4bit shift right
mux2X1  ins_17 (.in0(z[15]),.in1(z[3]),.sel(ctrl[2]),.out(x[15]));
mux2X1  ins_18 (.in0(z[14]),.in1(z[2]),.sel(ctrl[2]),.out(x[14]));
mux2X1  ins_19 (.in0(z[13]),.in1(z[1]),.sel(ctrl[2]),.out(x[13]));
mux2X1  ins_20 (.in0(z[12]),.in1(z[0]),.sel(ctrl[2]),.out(x[12]));
mux2X1  ins_21 (.in0(z[11]),.in1(z[15]),.sel(ctrl[2]),.out(x[11]));
mux2X1  ins_22 (.in0(z[10]),.in1(z[14]),.sel(ctrl[2]),.out(x[10]));
mux2X1  ins_23 (.in0(z[9]),.in1(z[13]),.sel(ctrl[2]),.out(x[9]));
mux2X1  ins_24 (.in0(z[8]),.in1(z[12]),.sel(ctrl[2]),.out(x[8]));
mux2X1  ins_25 (.in0(z[7]),.in1(z[11]),.sel(ctrl[2]),.out(x[7]));
mux2X1  ins_26 (.in0(z[6]),.in1(z[10]),.sel(ctrl[2]),.out(x[6]));
mux2X1  ins_27 (.in0(z[5]),.in1(z[9]),.sel(ctrl[2]),.out(x[5]));
mux2X1  ins_28 (.in0(z[4]),.in1(z[8]),.sel(ctrl[2]),.out(x[4]));
mux2X1  ins_29 (.in0(z[3]),.in1(in[7]),.sel(ctrl[2]),.out(x[3]));
mux2X1  ins_30 (.in0(z[2]),.in1(in[6]),.sel(ctrl[2]),.out(x[2]));
mux2X1  ins_31 (.in0(z[1]),.in1(in[5]),.sel(ctrl[2]),.out(x[1]));
mux2X1  ins_32 (.in0(z[0]),.in1(in[4]),.sel(ctrl[2]),.out(x[0]));


//8bit shift right 
mux2X1  ins_1 (.in0(in[15]),.in1(in[7]),.sel(ctrl[3]),.out(z[15]));
mux2X1  ins_2 (.in0(in[14]),.in1(in[6]),.sel(ctrl[3]),.out(z[14]));
mux2X1  ins_3 (.in0(in[13]),.in1(in[5]),.sel(ctrl[3]),.out(z[13]));
mux2X1  ins_4 (.in0(in[12]),.in1(in[4]),.sel(ctrl[3]),.out(z[12]));
mux2X1  ins_5 (.in0(in[11]),.in1(in[3]),.sel(ctrl[3]),.out(z[11]));
mux2X1  ins_6 (.in0(in[10]),.in1(in[2]),.sel(ctrl[3]),.out(z[10]));
mux2X1  ins_7 (.in0(in[9]),.in1(in[1]),.sel(ctrl[3]),.out(z[9]));
mux2X1  ins_8 (.in0(in[8]),.in1(in[0]),.sel(ctrl[3]),.out(z[8]));
mux2X1  ins_9 (.in0(in[7]),.in1(in[15]),.sel(ctrl[3]),.out(z[7]));
mux2X1  ins_10 (.in0(in[6]),.in1(in[14]),.sel(ctrl[3]),.out(z[6]));
mux2X1  ins_11 (.in0(in[5]),.in1(in[13]),.sel(ctrl[3]),.out(z[5]));
mux2X1  ins_12 (.in0(in[4]),.in1(in[12]),.sel(ctrl[3]),.out(z[4]));
mux2X1  ins_13 (.in0(in[3]),.in1(in[11]),.sel(ctrl[3]),.out(z[3]));
mux2X1  ins_14 (.in0(in[2]),.in1(in[10]),.sel(ctrl[3]),.out(z[2]));
mux2X1  ins_15 (.in0(in[1]),.in1(in[9]),.sel(ctrl[3]),.out(z[1]));
mux2X1  ins_16 (.in0(in[0]),.in1(in[8]),.sel(ctrl[3]),.out(z[0]));
 

 

 

 
endmodule
module alu(input wire [15:0] in,input wire [3:0] ctrl,input wire [1:0] op, output wire [15:0] out);
   
   wire [15:0] l,m,n,o;

barrel_shifter_left bs_left(in, ctrl, l);
barrel_shifter_right bs_right(in, ctrl, m);
rotator_left rotate_l(in, ctrl, n);
rotator_right rotate_r(in, ctrl,o);

mux4 inst1(l[0],m[0],n[0], o[0], op[0],op[1],out[0]);
mux4 inst2(l[1],m[1],n[1], o[1], op[0],op[1],out[1]);
mux4 inst3(l[2],m[2],n[2], o[2], op[0],op[1],out[2]);
mux4 inst4(l[3],m[3],n[3], o[3], op[0],op[1],out[3]);
mux4 inst5(l[4],m[4],n[4], o[4], op[0],op[1],out[4]);
mux4 inst6(l[5],m[5],n[5], o[5], op[0],op[1],out[5]);
mux4 inst7(l[6],m[6],n[6], o[6], op[0],op[1],out[6]);
mux4 inst8(l[7],m[7],n[7], o[7], op[0],op[1],out[7]);
mux4 inst9(l[8],m[8],n[8], o[8], op[0],op[1],out[8]);
mux4 inst10(l[9],m[9],n[9], o[9], op[0],op[1],out[9]);
mux4 inst11(l[10],m[10],n[10], o[10], op[0],op[1],out[10]);
mux4 inst12(l[11],m[11],n[11], o[11], op[0],op[1],out[11]);
mux4 inst13(l[12],m[12],n[12], o[12], op[0],op[1],out[12]);
mux4 inst14(l[13],m[13],n[13], o[13], op[0],op[1],out[13]);
mux4 inst15(l[14],m[14],n[14], o[14], op[0],op[1],out[14]);
mux4 inst16(l[15],m[15],n[15], o[15], op[0],op[1],out[15]);
endmodule

/////////////////////////
//2X1 Mux
/////////////////////////
 module mux2X1( in0,in1,sel,out);
input in0,in1,sel;
output out;
assign out=(sel)?in1:in0;
endmodule

module mux4 (i0,i1,i2,i3, j0,j1,o);
  input i0,i1,i2,i3,j0,j1;
  output o;
  wire  t0, t1;
  mux2X1 mux2_0 (i0, i1, j0, t0);
  mux2X1 mux2_1 (i2, i3, j0, t1);
  mux2X1 mux2_2(t0,t1,j1,o);
endmodule
