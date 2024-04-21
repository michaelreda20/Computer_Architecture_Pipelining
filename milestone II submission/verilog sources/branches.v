`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: branches.v
// Project: Single Cycled RISC_V Processor
// Author: Kyrollos Soliman - kyrolloszakaria@aucegypt.edu, Michael Reda Michael12@aucegypt.edu
// Description: takes branch conditions and control signals to output the logical and between them depending on the instruction
//////////////////////////////////////////////////////////////////////////////////


module branches(
    input branch,
    input [2:0] inst,
    output reg andout,
    input zf,
    input cf,
    input sf,
    input vf
    );
    
    always @(*) begin
        if(branch)begin
            case(inst)
                3'b000: andout = zf;
                3'b001: andout = ~zf;
                3'b100: andout = (sf != vf);
                3'b101: andout = (sf == vf);
                3'b110: andout = ~cf;
                3'b111: andout = cf;
                default: andout = 1'b0;
            endcase
        end
        else
            andout = 1'b0;
    end
    
endmodule
