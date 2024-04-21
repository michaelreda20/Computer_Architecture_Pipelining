`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: registerfile.v
// Project: Single Cycled RISC_V Processor
// Author: Kyrollos Soliman - kyrolloszakaria@aucegypt.edu, Michael Reda Michael12@aucegypt.edu
// Description: The register file of the datapath
//////////////////////////////////////////////////////////////////////////////////

module registerfile#(parameter n = 32)(input write, input[n-1:0] write_data, input[4:0] write_address, input[4:0] read_address1, input[4:0] read_address2, output [n-1:0] R1, output [n-1:0] R2, input reset, input clk);

    reg[n-1:0] registers[31:0];
    integer i;
    always@(posedge(clk), posedge(reset)) begin
        registers[0] = 0;
        if(reset)begin
            for(i = 1; i < n; i = i + 1) begin
                  registers[i] = 0;
            end 
        end
        else if(write && (write_address != 0)) begin
            registers[write_address] = write_data;
        end    
    end
    assign R1 = registers[read_address1];
    assign R2 = registers[read_address2];
endmodule

