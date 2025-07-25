module axi4_to_ahb_vga(
    input                   clk     ,
    input                   rst_n   ,
    input   logic   [3:0]   arid    , //unused
    input   logic   [31:0]  araddr  ,
    input   logic   [7:0]   arlen   ,
    input   logic   [2:0]   arsize  ,
    input   logic   [1:0]   arburst ,
    input   logic           arvalid ,
    output  logic           arready ,
    output  logic   [63:0]  rdata   ,
    output  logic   [1:0]   rresp   ,
    output  logic           rvalid  ,
    output  logic           rlast   ,

    output  logic   [31:0]  ahb_haddr   ,
    output  logic   [2:0]   ahb_hburst  ,
    output  logic   [3:0]   ahb_hprot   ,
    output  logic   [2:0]   ahb_hsize   ,
    output  logic   [1:0]   ahb_htrans  ,
    output  logic           ahb_hwrite  ,
    output  logic   [63:0]  ahb_hwdata  ,
    input   logic   [63:0]  ahb_hrdata  ,
    input   logic           ahb_hready  ,
    input   logic           ahb_hresp

);
assign rresp = 'b0;

parameter IDLE = 2'b00;
parameter ADDR = 2'b01;
parameter DATA = 2'b10;

logic [1:0] state_q,state_d;

logic s_axi4_ar_hdshk;
logic [7:0] addr_intr_cnt_q,addr_intr_cnt_d;
logic [31:0] ahb_addr_q,ahb_addr_d;

assign s_axi4_ar_hdshk = arready && arvalid;

always_ff@(posedge clk or negedge rst_n) begin : ahb_fsm_ff
    if(!rst_n) begin
        state_q <= 0;
    end else begin
        state_q <= state_d;
    end
end

always_comb begin : ahb_fsm_comb
    case(state_q)
        IDLE : state_d = s_axi4_ar_hdshk ? ADDR : IDLE;
        ADDR : state_d = ahb_hready ? DATA : ADDR;
        DATA : state_d = (addr_intr_cnt_q == 0) && ahb_hready ? IDLE : DATA;
        default : state_d = IDLE;
    endcase
end


assign addr_intr_cnt_d  = (state_q==DATA)&&ahb_hready ? addr_intr_cnt_q-1 : addr_intr_cnt_q;//back arlen ahb_hready
assign ahb_addr_d = (!(addr_intr_cnt_q == 0) && ahb_hready )? ahb_addr_q+8 : ahb_addr_q; // len 1  addr   


always_ff @(posedge clk or negedge rst_n) begin : len_cnt_ff
    if(!rst_n)begin
        addr_intr_cnt_q <= 0;
    end else if(s_axi4_ar_hdshk) begin
        addr_intr_cnt_q   <= arlen;
    end else if(addr_intr_cnt_q == 0)begin
        addr_intr_cnt_q <= 0;
    end else begin
        addr_intr_cnt_q <= addr_intr_cnt_d;
    end
end

always_ff @(posedge clk or negedge rst_n) begin : addr_ff
    if(!rst_n)begin
        ahb_addr_q <= 0;
    end else if(s_axi4_ar_hdshk) begin
        ahb_addr_q <= araddr;
    end else
        ahb_addr_q <= ahb_addr_d;
end



assign ahb_haddr = ahb_addr_q;
assign arready = (state_q == IDLE);
assign ahb_htrans = (state_q == IDLE) ? 2'b00 : 2'b10;
assign ahb_hwrite   = 0;
assign ahb_hwdata   = 'b0;
assign ahb_hprot    = 'b0;
assign ahb_hsize    = 3'd3; //8 byte
assign ahb_hburst   =  3'b000;

assign rvalid = (state_q==DATA) ? ahb_hready : 0;
assign rdata  = ahb_hrdata;
assign rlast  = (addr_intr_cnt_q == 0) ;

endmodule