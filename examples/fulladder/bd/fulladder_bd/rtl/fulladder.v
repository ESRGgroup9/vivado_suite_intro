`timescale 1ns / 1ps

/**************************************************
 * Design Name: adder_4bit
 * Date (y/m/d): 2022/09/19
 *
 * Description:
 *
 **************************************************/

/* Module requirements:
  - scalable (use of carries)
  - input  : two MP_WIDTH bit values + carry in (1bit)
  - output : one MP_WIDTH bit value  + carry out (1bit)
  - latency: 0 clock cycles (combinational logic)
*/

module fulladder
#(
  parameter MP_WIDTH = 1
)
(
  input  wire [MP_WIDTH-1:0] ia,   // input value
  input  wire [MP_WIDTH-1:0] ib,   // input value
  input  wire                icin, // carry in

  output reg  [MP_WIDTH-1:0] osum, // output value
  output reg                 ocout // carry out
);

  // ======= 1 method =======

  // assign {ocout, osum} = ia + ib + icin;

  // ======= 2 method =======

  always @(*) begin : cfull_add_PROC
    {ocout, osum} = ia + ib + icin;
  end // cfull_add_PROC

endmodule
