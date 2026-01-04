module mux(x1, x2, s, f);    // mux 2:1
    input x1, x2, s;         // entradas
    output f;                // saida

    wire k, g, h;            // fios internos
    
    not(k,s);                // porta logica NOT
    and(g, k, x1);           // porta logica AND
    and(h, s, x2);           // porta logica AND
    or(f, g, h);             // porta logica OR
endmodule

