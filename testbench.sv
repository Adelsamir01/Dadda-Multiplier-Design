`timescale 1ns / 1ps

module dadda_multiplier_tb;

  reg [31:0] a, b;
  wire [63:0] product;

  dadda_multiplier dut (
    .a(a),
    .b(b),
    .product(product)
  );

  initial begin
    $dumpfile("dadda_multiplier.vcd");
    $dumpvars(0, dadda_multiplier_tb);

    // Test multiplication of two positive numbers
    a = 12345;
    b = 67890;
    #10;
    $display("Product of %d and %d is %d", a, b, product);

    // Test multiplication of a positive and negative number
    a = -9876;
    b = 12345;
    #10;
    $display("Product of %d and %d is %d", a, b, product);

    // Test multiplication of two negative numbers
    a = -12345;
    b = -67890;
    #10;
    $display("Product of %d and %d is %d", a, b, product);

    // Test multiplication of a negative and positive number
    a = 9876;
    b = -12345;
    #10;
    $display("Product of %d and %d is %d", a, b, product);

    $finish;
  end

endmodule
