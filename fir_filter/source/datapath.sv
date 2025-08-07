`timescale 1ns / 10ps

module datapath (
    input logic clk,
    input logic n_rst,
    input logic [2:0] op,
    input logic [3:0] src1,
    input logic [3:0] src2,
    input logic [3:0] dest,
    input logic [15:0] ext_data1, // sample_data
    input logic [15:0] ext_data2, // fir_coefficient
    output logic [16:0] outreg_data,
    output logic overflow
);
  logic [15:0] registers [15:0];
  logic [15:0] next_registers [15:0];
  logic next_overflow;
  logic [15:0] src1_data, src2_data, dest_data;
  logic [31:0] result;
  
  always_ff @(posedge clk, negedge n_rst) begin
    if(~n_rst) begin
      for(int i = 0; i < 16; i++) begin
        registers[i] <= '0;
      end
      overflow <= 0;
    end
    else begin
      for(int i = 0; i < 16; i++) begin
        registers[i] <= next_registers[i];
      end
      overflow <= next_overflow;
    end
  end
  
  assign outreg_data = {registers[0][15], registers[0]};
  
  always_comb begin
    for(int i = 0; i < 16; i++) begin
        next_registers[i] = registers[i];
      end
    src1_data = registers[src1];
    src2_data = registers[src2];
    next_overflow = 0;
    result = 0;
    case(op)
      3'b011: begin 
        next_registers[dest] = ext_data2;
      end
      3'b010: begin 
        next_registers[dest] = ext_data1;
      end
      3'b001: begin 
        next_registers[dest] = src1_data;
      end
      3'b110: begin 
        result =  src1_data * src2_data;
        next_registers[dest] = result[15:0];
        if(result[31:16]) begin
          next_overflow = 1;
        end
      end 
      3'b100: begin 
        result = src1_data + src2_data;
        next_registers[dest] = result[15:0];
        if( (src1_data[15] == src2_data[15]) && (src1_data[15] != result[15]) ) begin
          next_overflow = 1;
        end
      end 
      3'b101: begin 
        result = src1_data - src2_data;
        next_registers[dest] = result[15:0];
        if( (src1_data[15] != src2_data[15]) && (src1_data[15] != result[15]) ) begin
          next_overflow = 1;
        end
      end 
      default: next_registers[dest] = registers[dest];
    endcase
  end

endmodule
      
