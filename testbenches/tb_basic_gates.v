`timescale 1ns/1ps

module tb_basic_gates;

    reg A;
    reg B;

    wire AND_Y;
    wire OR_Y;
    wire XOR_Y;
    wire XNOR_Y;
    wire NOT_Y;

    and_gate U1 (
        .A(A),
        .B(B),
        .Y(AND_Y)
    );

    or_gate U2 (
        .A(A),
        .B(B),
        .Y(OR_Y)
    );

    not_gate U3 (
        .A(A),
        .Y(NOT_Y)
    );

    xor_gate U4 (
        .A(A),
        .B(B),
        .Y(XOR_Y)
    );

    xnor_gate U5 (
        .A(A),
        .B(B),
        .Y(XNOR_Y)
    );

    initial begin

        $monitor(
            "A=%b B=%b | AND=%b OR=%b NOT=%b XOR=%b XNOR=%b",
            A, B, AND_Y, OR_Y, NOT_Y, XOR_Y, XNOR_Y
        );

        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $finish;

    end

endmodule