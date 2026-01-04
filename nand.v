module nand2(a, b, y);
    input a, b;
    output y;

    wire w1;

    and(w1, a, b);   // porta logica AND
    not(y, w1);   // porta logica NOT

endmodule