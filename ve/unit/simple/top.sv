
module top(input clk);

task foo();
endtask

export "DPI-C" task foo;
import "DPI-C" context task run_my_tb(int a);

initial begin
end

int count = 0;

always @(posedge clk) begin
  count <= count + 1;
  run_my_tb(count);
end

endmodule

