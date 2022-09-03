`timescale 1ns / 1ns

module testbench_p2 ();
    reg Clk_tb;
    reg D_tb;
    wire Q_tb;
    
    initial
        begin: CLOCK_GENERATOR
            Clk_tb = 0;
            forever
                begin
                    #5 Clk_tb = ~Clk_tb;
                end
        end
    
    initial
        begin
            D_tb <= 1;
            #20 D_tb <= 0;
            #10 D_tb <= 1; 
            #10 D_tb <= 0;
            #20 D_tb <= 1;
            #20 D_tb <= 0;
            #20 $stop;
        end
        
    // part2 p2 (Clk_tb, D_tb, Q_tb);
    part3 p3 ({Clk_tb, D_tb}, Q_tb);
endmodule