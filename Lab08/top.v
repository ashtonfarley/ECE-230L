module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [1:0] mux_sel;
    assign mux_sel = {btnU, btnL};
    
    wire [1:0] demux_sel;
    assign demux_sel = {btnR, btnD};
    
    wire [3:0] mux_out;
    
    assign mux_out = 
        (mux_sel == 2'b00) ? sw[3:0] :
        (mux_sel == 2'b01) ? sw[7:4] :
        (mux_sel == 2'b10) ? sw[11:8] :
                             sw[15:12];
                             
    wire [3:0] data_to_send;
    assign data_to_send = btnC ? mux_out : 4'b0000;
    
    wire [3:0] local_lib;
    wire [3:0] fire_dept;
    wire [3:0] school;
    wire [3:0] rib_shack;
    
    assign local_lib  = (btnC && demux_sel == 2'b00)
                        ? data_to_send : 4'b0000;

    assign fire_dept  = (btnC && demux_sel == 2'b01)
                        ? data_to_send : 4'b0000;

    assign school     = (btnC && demux_sel == 2'b10)
                        ? data_to_send : 4'b0000;

    assign rib_shack  = (btnC && demux_sel == 2'b11)
                        ? data_to_send : 4'b0000;
                        
    assign led[3:0]   = local_lib;
    assign led[7:4]   = fire_dept;
    assign led[11:8]  = school;
    assign led[15:12] = rib_shack;
    
endmodule