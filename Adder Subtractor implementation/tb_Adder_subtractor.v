module tb_Adder_subtractor();

    // Parameters
    parameter bit_len = 8;
    
    // Signals
    reg [bit_len - 1 : 0] A, B;
    reg SEL;
    wire [bit_len - 1 : 0] SUM;
    wire C_OUT;

    // Instantiate the module under test
    Adder_subtractor #(bit_len) as_1 (
        .sum(SUM),
        .c_out(C_OUT),
        .a(A),
        .b(B),
        .sel(SEL)
    );


    // Test stimulus
    initial begin
        // Initialize inputs
        A = 8;  // Example initial values
        B = 5;
        SEL = 0; // Start with addition
        
        // Print initial state
        $monitor($time, " ns: SEL=%b, A=%d, B=%d, SUM=%d, C_OUT=%b",SEL, A, B, SUM, C_OUT);

        // Test scenario 1: Addition
        #10;
        A = 10;
        B = 6;
        SEL = 0;
 
        
        // Test scenario 2: Subtraction with overflow
        #10;
        A = 5;
        B = 10;
        SEL = 1;
     
        
        // Test scenario 3: Subtraction without overflow
        #10;
        A = 15;
        B = 6;
        SEL = 1;
      
        
        // Add more test scenarios as needed
        
        // Finish simulation after a delay
        #10;
        $finish;
    end

endmodule
