module RTLCPU(input logic clk,
              input logic reset,
              // Memory bus
              output logic [19:1] q_m_addr,
              input logic [15:0] q_m_data_in,
              output logic [15:0] q_m_data_out,
              output logic q_m_access,
              input logic q_m_ack,
              output logic q_m_wr_en,
              output logic [1:0] q_m_bytesel,
              // Misc
              output logic d_io,
              output logic lock,
              // Debug
              output logic debug_stopped,
              input logic debug_seize,
              input logic [7:0] debug_addr,
              input logic debug_run,
              output logic [15:0] debug_val,
              input logic [15:0] debug_wr_val,
              input logic debug_wr_en);

// Instruction bus
logic [19:1] instr_m_addr;
logic [15:0] instr_m_data_in;
logic instr_m_access;
logic instr_m_ack;
// Data bus
logic [19:1] data_m_addr;
logic [15:0] data_m_data_in;
logic [15:0] data_m_data_out;
logic data_m_access;
logic data_m_ack;
logic data_m_wr_en;
logic [1:0] data_m_bytesel;

MemArbiter MemArbiter(.*);
Core    Core(.*);

endmodule
