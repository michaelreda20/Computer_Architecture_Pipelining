`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: n_bit_multiplexer.v
// Project: Single Cycled RISC_V Processor
// Author: Kyrollos Soliman - kyrolloszakaria@aucegypt.edu, Michael Reda Michael12@aucegypt.edu
// Description: An n_bit multiplexer module that is used among many components in the datapath
//////////////////////////////////////////////////////////////////////////////////


module MUX 
#(parameter n = 32)
(
    input[n-1:0] In1,
    input[n-1:0] In2,
    input[n-1:0] In3,
    input[n-1:0] In4, 
    input[1:0] Choose, 
    output reg[n-1:0] Out
);

    always @(*)begin
        case(Choose)
            2'b00: Out = In1;
            2'b01: Out = In2;
            2'b10: Out = In3;
            2'b11: Out = In4;
            default: Out = In4;
        endcase
    end
endmodule
