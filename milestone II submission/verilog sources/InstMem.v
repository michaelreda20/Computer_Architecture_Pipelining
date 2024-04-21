//////////////////////////////////////////////////////////////////////////////////
// Module: InstMem.v
// Project: Single Cycled RISC_V Processor
// Author: Kyrollos Soliman - kyrolloszakaria@aucegypt.edu, Michael Reda Michael12@aucegypt.edu
// Description: the memory for instructions
//////////////////////////////////////////////////////////////////////////////////

module InstMem (input [5:0] addr, output [31:0] data_out);
 reg [31:0] mem [0:63];
 assign data_out = mem[addr];
 initial begin
//        mem[0]=32'b0000000_00010_00011_000_00101_0110011 ; //add x5, x3, x2
//        mem[1]=32'b0000000_00101_00000_010_01100_0100011; //sw x5, 12(x0)
//        mem[2]=32'b000000001100_00000_010_00110_0000011 ; //lw x6, 12(x0)
//        mem[3]=32'b0000000_00001_00110_111_00111_0110011 ; //and x7, x6, x1
//        mem[4]=32'b0100000_00010_00001_000_01000_0110011 ; //sub x8, x1, x2
//        mem[5]=32'b0000000_00010_00001_000_00000_0110011 ; //add x0, x1, x2
//        mem[6]=32'b0000000_00001_00000_000_01001_0110011 ; //add x9, x0, x1
//        mem[7] = 32'b00000000000000000000000000000010; // addi x1, x0, 2
//        mem[8] = 32'b00000000000000000000000000001111; // fence 1, 1
//        mem[9] = 32'b00000000001000000001000000110011; // add x1, x1, x1
//        mem[10] = 32'b00000000000000000000000001110011; // ebreak
//        mem[11] = 32'b00000000001000000001000000110011; // add x1, x1, x1
//        mem[12] = 32'b00000000000000000000000000010011; // ecall
//        mem[13] = 32'b00000000000000000000000000010010; // addi x2, x0, 4

mem[0] = 32'b00000000010100000000000010010011;
mem[1] = 32'b00000000100000000000000100010011;
mem[2] = 32'b00000000001000001000000110110011;
mem[3] = 32'b01000000001000001000001000110011;
mem[4] = 32'b00000000001000001001001010110011;
mem[5] = 32'b00000000001000001010001100110011;
mem[6] = 32'b00000000001000001011001110110011;
mem[7] = 32'b00000000001000001100010000110011;
mem[8] = 32'b00000000001000001101010010110011;
mem[9] = 32'b01000000001000001101010100110011;
mem[10] = 32'b00000000001000001110010110110011;
mem[11] = 32'b00000000001000001111011000110011;
mem[12] = 32'b00000000010100001000011010010011;
mem[13] = 32'b00000000100000010010011100010011;
mem[14] = 32'b00000000001000001011011110010011;
mem[15] = 32'b00000000101000010100100000010011;
mem[16] = 32'b00000000100000001110100010010011;
mem[17] = 32'b00000000001100010111100100010011;
mem[18] = 32'b00000000100100001001100110010011;
mem[19] = 32'b01000000001000010101101000010011;
mem[20] = 32'b00000000000100001101101010010011;
mem[21] = 32'b00000000001100000000100110010011;
mem[22] = 32'b11111111110000000000101000010011;
mem[23] = 32'b00000001000000000000101010010011;
mem[24] = 32'b00000001000000000000101010010011;
mem[25] = 32'b00000000100000000000000100010011;
mem[26] = 32'b00000000000100001101101010010011;
mem[27] = 32'b00001111111100000000110000010011;
mem[28] = 32'b00000100110010100000110010010011;
mem[29] = 32'b00000000101110111000110100110111;

        
   end

endmodule