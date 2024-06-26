`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: shifter.v
// Project: Single Cycled RISC_V Processor
// Author: Kyrollos Soliman - kyrolloszakaria@aucegypt.edu, Michael Reda Michael12@aucegypt.edu
// Description: shift left or right according to the parameters //////////////////////////////////////////////////////////////////////////////////


module shifter(
    input [31:0] a,
    input [4:0] shamt,
    input [1:0] type,
    output reg [31:0] r
    );
    /*always @(*) begin
        if(shamt == 32) r = 32'b0;
        else if(shamt == 0) r = a;
        else begin
        
            case(type)
                2'b00: r = a << shamt;
                2'b01: r = a >> shamt;
                2'b10: r = a >>> shamt;
            endcase
            
        end
    end
    */
    integer i;
        always@(*) begin
            r  = a;
            for(i = 0 ; i < shamt ; i = i + 1)
            begin
            case(type)
                  2'b00:  r = {r[30:0], 1'b0};
                  2'b01:  r = {1'b0, r[31:1]};
                  2'b10:  r = {r[31], r[31:1]};
            endcase
            end
        end
endmodule
