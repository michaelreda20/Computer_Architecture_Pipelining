//////////////////////////////////////////////////////////////////////////////////
// Module: control_unit.v
// Project: Single Cycled RISC_V Processor
// Author: Kyrollos Soliman - kyrolloszakaria@aucegypt.edu, Michael Reda Michael12@aucegypt.edu
// Description: The control unit for the datapath
//////////////////////////////////////////////////////////////////////////////////
module control_unit(input[31:0] instruction, output reg branch, memread, output reg[1:0]memtoreg, output reg memwrite, alusrc, regwrite, AUIPC, ConcEn, Shift, JALR, JAL, output reg[3:0] aluop);

    always @(instruction) begin
        case(instruction[6:2])
            5'b01_100: begin
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b00; aluop = 2'b10; memwrite = 1'b0; alusrc = 1'b0; regwrite = 1'b1; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b0; JAL = 1'b0; 
            end
            5'b00_000: begin
                branch = 1'b0; memread = 1'b1; memtoreg = 2'b01; aluop = 2'b00; memwrite = 1'b0; alusrc = 1'b1; regwrite = 1'b1; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b0; JAL = 1'b0;
            end
            5'b01_000: begin
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b00; aluop = 2'b00; memwrite = 1'b1; alusrc = 1'b1; regwrite = 1'b0; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b0; JAL = 1'b0;
            end                                           
            5'b11_000: begin                               
                branch = 1'b1; memread = 1'b0; memtoreg = 2'b00; aluop = 2'b01; memwrite = 1'b0; alusrc = 1'b0; regwrite = 1'b0; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b1; JALR =1'b0; JAL = 1'b0;
            end                                           
            5'b00_101: begin                               
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b00; aluop = 2'b00; memwrite = 1'b0; alusrc = 1'b1; regwrite = 1'b1; 
                AUIPC = 1'b1; ConcEn = 1'b1; Shift = 1'b0; JALR =1'b0; JAL = 1'b0;
            end                                           
            5'b00_100: begin                               
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b00; aluop = 2'b10; memwrite = 1'b0; alusrc = 1'b1; regwrite = 1'b1; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b0; JAL = 1'b0;
            end                                           
            5'b11_011: begin                               
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b10; aluop = 2'b00; memwrite = 1'b0; alusrc = 1'b1; regwrite = 1'b1; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b0; JAL = 1'b1;
            end                                           
            5'b11_001: begin                               
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b10; aluop = 2'b00; memwrite = 1'b0; alusrc = 1'b1; regwrite = 1'b1; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b1; JAL = 1'b0;
            end                                           
            5'b01_101: begin                               
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b11; aluop = 2'b11; memwrite = 1'b0; alusrc = 1'b1; regwrite = 1'b1; 
                AUIPC = 1'b0; ConcEn = 1'b1; Shift = 1'b0; JALR =1'b0; JAL = 1'b0;
            end                                           
            default: begin                                
                branch = 1'b0; memread = 1'b0; memtoreg = 2'b00; aluop = 2'b10; memwrite = 1'b0; alusrc = 1'b0; regwrite = 1'b0; 
                AUIPC = 1'b0; ConcEn = 1'b0; Shift = 1'b0; JALR =1'b0; JAL = 1'b0;
            end
        endcase
    end
endmodule
