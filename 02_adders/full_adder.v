module full_adder (
    input  A,
    input  B,
    input  Cin,
    output SUM,
    output Cout
);

assign SUM  = A ^ B ^ Cin;

assign Cout = (A & B) |
              (A & Cin) |
              (B & Cin);

endmodule