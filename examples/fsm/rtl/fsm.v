module fsm(
  input  wire       iclk,
  input  wire       irst,

  input  wire [3:0] isw,
  input  wire       ibtn,

  output reg  [3:0] oled
);

  // define rstates
  localparam ST_LOCKED = 2'b00;
  localparam ST_OPEN   = 2'b01;

  // state and nextstate registers
  reg rstate;
  reg wnstate;

  // state register
  always @(posedge iclk or posedge irst) begin
    if(irst)
      rstate <= ST_LOCKED;
    else begin
      rstate <= wnstate;
    end
  end

  // nextstate logic
  always @(*) begin
    case(rstate)
      ST_LOCKED: wnstate = (isw == 4'b1010) ? ST_OPEN : ST_LOCKED;
      ST_OPEN  : wnstate = (ibtn) ? ST_LOCKED : ST_OPEN;
    endcase
  end

  // output logic
  always @(*) begin
    case(rstate)
      ST_LOCKED: oled = 4'b0000;
      ST_OPEN  : oled = 4'b1111;
    endcase
  end

endmodule
