module dwncnt_tb;
reg clk,en,rst;
wire [3:0]q;
dwncnt_main dut(clk,en,rst,q);
initial
begin
clk=1'b0;
#50;
end
always
begin
clk=~clk;
#50;
end
initial
begin
en=1'b1;
end
initial
begin
rst=1'b1;
#100;
rst=1'b0;
end
endmodule
