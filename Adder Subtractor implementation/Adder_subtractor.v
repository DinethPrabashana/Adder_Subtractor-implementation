module Adder_subtractor #(parameter bit_len = 8)(sum, c_out, a, b, sel);
input [bit_len -1 : 0] a, b ;
input sel ;
output reg [bit_len -1 : 0] sum ;
output c_out ;
reg [bit_len -1 : 0] b_mod ;

always @(*)
begin
    if (sel)
    begin
        b_mod = -b ;
        sum = a + b_mod ;
    end
    else
    begin 
        b_mod = b ;
        sum = a + b ;
    end
    if (sum[bit_len -1] != b_mod [bit_len - 1])
    begin 
        $monitor("Overflow has occured");
    end  

end

endmodule


