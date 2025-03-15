`timescale 1ns/1ps

module d_flip_flop_tb;
    reg clk, d;
    wire y;

    d_flip_flop uut (
        .clk(clk),
        .d(d),
        .y(y)
    )

    always begin
        #5 clk = ~clk;
    end

    always begin
        $dumpfile("waveform_data_flip_flop.vcd");
        $dumpvars(0, d_flip_flop_tb);
        
        d = 0; #10
        d = 1; #10
        d = 0; #10
        d = 1; #10
        
        $finish;

        end

endmodule