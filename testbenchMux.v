`timescale 1ns/1ps

module tb_mux;

    reg x1, x2, s;
    wire f;

    // Instância do módulo a ser testado (UUT)
    mux uut (
        .x1(x1),
        .x2(x2),
        .s(s),
        .f(f)
    );

    initial begin
        // Cabeçalho para o console
        $display("x1 x2 s | f");
        $display("--------|--");

        // Teste 1
        x1 = 0; x2 = 0; s = 0;
        #10 $display("%b  %b  %b | %b", x1, x2, s, f);

        // Teste 2
        x1 = 1; x2 = 0; s = 0;
        #10 $display("%b  %b  %b | %b", x1, x2, s, f);

        // Teste 3
        x1 = 0; x2 = 1; s = 0;
        #10 $display("%b  %b  %b | %b", x1, x2, s, f);

        // Teste 4
        x1 = 0; x2 = 1; s = 1;
        #10 $display("%b  %b  %b | %b", x1, x2, s, f);

        // Teste 5
        x1 = 1; x2 = 0; s = 1;
        #10 $display("%b  %b  %b | %b", x1, x2, s, f);

        // Teste 6
        x1 = 1; x2 = 1; s = 1;
        #10 $display("%b  %b  %b | %b", x1, x2, s, f);

        $finish;
    end

endmodule
