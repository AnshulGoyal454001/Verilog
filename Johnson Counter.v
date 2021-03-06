module Johnson_counter(Q,clk,reset);
output [3:0]Q;
input clk,reset;
reg [3:0]Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=4'b0;
else
Q<={~Q[0],Q[3:1]};
end
endmodule