///////////////////////////////////////////////////////////////////////////////
// modified from File Downloaded from Nandland.com
// Modified to use Intel lpm library
///////////////////////////////////////////////////////////////////////////////
// more comments
//`include "module_full_adder.v"
`timescale 1ns/1ps
module carry_lookahead_adder
  #(parameter WIDTH)
   (
     input [WIDTH-1:0] i_add1,
     input [WIDTH-1:0] i_add2,
     output [WIDTH:0]  o_result
   );

//  wire [WIDTH-1:0]   w_G, w_P, w_SUM;
  wire [WIDTH-1:0]   w_SUM;
  wire               w_cout;

  // Use Altera's primitive component. lpm_add_sub

  lpm_add_sub #(
    .lpm_direction("ADD"), 
    .lpm_representation("UNSIGNED"), 
    .lpm_width(WIDTH))
    adder_i0 (
      .dataa(i_add1),
      .datab(i_add2),
      .result(w_SUM),
      .cout(w_cout)
    );

  assign o_result = {w_cout, w_SUM};   // Verilog Concatenation

endmodule // carry_lookahead_adder

