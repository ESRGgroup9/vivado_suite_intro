`timescale 1ns / 1ps

/**************************************************
 * Design Name: adder_4bit_tb
 * Date (y/m/d): 2022/09/19
 *
 * Description:
 *
 **************************************************/

module fulladder_tb();

  localparam LP_WIDTH = 4;

  // DUT input values
  reg [LP_WIDTH-1:0] ra  ;
  reg [LP_WIDTH-1:0] rb  ;
  reg                rcin;

  // DUT output values
  wire [LP_WIDTH-1:0] wsum ;
  wire                wcout;

  // DUT cout + sum
  wire [LP_WIDTH:0] wfullsum;

  // ======== DUT instantiation ========

  fulladder #(
    .MP_WIDTH(LP_WIDTH)
  )
  dut
  (
    .ia    (ra   ),
    .ib    (rb   ),
    .icin  (rcin ),
    .osum  (wsum ),
    .ocout (wcout)
  );

  assign wfullsum = {wcout, wsum};

  // ======== DUT verification ========

  initial begin
    // set initial conditions
    ra   = 4'd2;
    rb   = 4'd3;
    rcin = 1'b0;
    #100;

    ra   = 4'd15;
    rb   = 4'd10;
    rcin = 1'b1;
    #100;

    // terminate simulation
    $finish;
  end

endmodule
