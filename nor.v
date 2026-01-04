module nor2(a, b, y);
    input a, b;     // entradas
    output y;       // saida

    wire w1, w2;    // fios internos

    or(w1, a, b);   // porta logica OR
    not(y, w1);     // porta logica NOT
    
endmodule