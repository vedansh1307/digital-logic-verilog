`timescale 1ns/1ps

module tb_adders;

    reg A;
    reg B;
    reg Cin;

    wire HA_SUM;
    wire HA_CARRY;

    wire FA_SUM;
    wire FA_COUT;

    // Half Adder
    half_adder HA (
        .A(A),
        .B(B),
        .SUM(HA_SUM),
        .CARRY(HA_CARRY)
    );

    // Full Adder
    full_adder FA (
        .A(A),
        .B(B),
        .Cin(Cin),
        .SUM(FA_SUM),
        .Cout(FA_COUT)
    );

    initial begin

        $monitor(
            "Time=%0t | A=%b B=%b Cin=%b | HA: SUM=%b CARRY=%b | FA: SUM=%b Cout=%b",
            $time,
            A,
            B,
            Cin,
            HA_SUM,
            HA_CARRY,
            FA_SUM,
            FA_COUT
        );

        // Test 1
        A = 0;
        B = 0;
        Cin = 0;
        #10;

        // Test 2
        A = 0;
        B = 0;
        Cin = 1;
        #10;

        // Test 3
        A = 0;
        B = 1;
        Cin = 0;
        #10;

        // Test 4
        A = 0;
        B = 1;
        Cin = 1;
        #10;

        // Test 5
        A = 1;
        B = 0;
        Cin = 0;
        #10;

        // Test 6
        A = 1;
        B = 0;
        Cin = 1;
        #10;

        // Test 7
        A = 1;
        B = 1;
        Cin = 0;
        #10;

        // Test 8
        A = 1;
        B = 1;
        Cin = 1;
        #10;

        $finish;

    end

endmodule