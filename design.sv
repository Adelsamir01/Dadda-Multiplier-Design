module dadda_multiplier(a, b, product);

  input [31:0] a, b;
  output wire [63:0] product;

  reg [31:0] a1, b1;
  reg [31:0] p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12;
  reg [31:0] g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12;

  assign product = {g12, p12, p11, p10, p9, p8, p7, p6, p5, p4, p3, p2, p1, p0};

  always @ (a or b) begin
    a1 = {a[15:0], a[15:0], a[15:0], a[15:0]};
    b1 = {b[15:0], b[15:0], b[15:0], b[15:0]};

    g0 = a[0] & b1;
    p0 = a[0] ^ b1;

    g1 = a[1] & b1;
    p1 = a[1] ^ b1 ^ g0;

    g2 = a[2] & b1;
    p2 = a[2] ^ b1 ^ g1;

    g3 = a[3] & b1;
    p3 = a[3] ^ b1 ^ g2;

    g4 = a[4] & b1;
    p4 = a[4] ^ b1 ^ g3;

    g5 = a[5] & b1;
    p5 = a[5] ^ b1 ^ g4;

    g6 = a[6] & b1;
    p6 = a[6] ^ b1 ^ g5;

    g7 = a[7] & b1;
    p7 = a[7] ^ b1 ^ g6;

    g8 = a[8] & b1;
    p8 = a[8] ^ b1 ^ g7;

    g9 = a[9] & b1;
    p9 = a[9] ^ b1 ^ g8;

    g10 = a[10] & b1;
    p10 = a[10] ^ b1 ^ g9;

    g11 = a[11] & b1;
    p11 = a[11] ^ b1 ^ g10;

    g12 = a[12] & b1;
    p12 = a[12] ^ b1 ^ g11;
  end

endmodule
