module ChiselCorePkg(
  input          clock,
  input          reset,
  output         io_itcm_0_cen, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_itcm_0_wen, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [3:0]   io_itcm_0_be, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_itcm_0_addr, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_itcm_0_wdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [31:0]  io_itcm_0_rdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_dtcm_0_cen, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_dtcm_0_wen, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [3:0]   io_dtcm_0_be, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_dtcm_0_addr, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_dtcm_0_wdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [31:0]  io_dtcm_0_rdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_test_en_i, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_irq_nm_i_in, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_core_sleep_o, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_ndmreset_o, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_debug_dmi_req_valid, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_debug_dmi_req_ready, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [40:0]  io_debug_dmi_req, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_debug_dmi_resp_valid, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_debug_dmi_resp_ready, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [33:0]  io_debug_dmi_resp, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_debug_dmi_rst_n, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_debug_ind_o, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [31:0]  io_config_start_addr_i, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_rtc_i, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [15:0]  io_plic_i_in, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [3:0]   io_config_systemStart_i, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [3:0]   io_config_systemEnd_i, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_ibus_hmastlock, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_ibus_hready, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [1:0]   io_ibus_htrans, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [2:0]   io_ibus_hsize, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [2:0]   io_ibus_hburst, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_ibus_hwrite, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [1:0]   io_ibus_hprot, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_ibus_haddr, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_ibus_hwdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [1:0]   io_ibus_hresp, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [31:0]  io_ibus_hrdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_dbus_hmastlock, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input          io_dbus_hready, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [1:0]   io_dbus_htrans, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [2:0]   io_dbus_hsize, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [2:0]   io_dbus_hburst, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output         io_dbus_hwrite, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [1:0]   io_dbus_hprot, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_dbus_haddr, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_dbus_hwdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [1:0]   io_dbus_hresp, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  input  [31:0]  io_dbus_hrdata, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_moniter_inst, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_moniter_pc, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_moniter_mcause, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [63:0]  io_moniter_mcycle, // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
  output [31:0]  io_moniter_mepc // @[src/main/scala/coreGen/ChiselCorePkg.scala 108:16]
);
  wire  u_corewarp_clock; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_reset; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_test_en_i; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_boot_addr_i; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_instr_req_ready; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_instr_req_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_instr_req_bits_addr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_instr_resp_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_instr_resp_bits_err; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_instr_resp_bits_rdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_data_req_ready; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_data_req_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_data_req_bits_addr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_data_req_bits_we; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [3:0] u_corewarp_io_data_req_bits_be; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_data_req_bits_wdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_data_resp_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_data_resp_bits_err; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_data_resp_bits_rdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_irq_timer; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_irq_software; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_irq_external; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_irq_nmi; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [7:0] u_corewarp_io_plicId_id; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_plicClr_en; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_debug_ind_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_core_sleep_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_instr_priv_mode_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_corewarp_io_data_priv_mode_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_moniter_inst; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_moniter_pc; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_moniter_mcause; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [63:0] u_corewarp_io_moniter_mcycle; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire [31:0] u_corewarp_io_moniter_mepc; // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
  wire  u_bmu_clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_instr_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_instr_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_instr_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_instr_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_instr_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_instr_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_data_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_data_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_data_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [3:0] u_bmu_io_data_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_data_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_data_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_data_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_data_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_testmode; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_rtc; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_software; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_timer; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_itcm_0_cen; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_itcm_0_wen; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [3:0] u_bmu_io_itcm_0_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_itcm_0_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_itcm_0_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_itcm_0_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_dtcm_0_cen; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_dtcm_0_wen; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [3:0] u_bmu_io_dtcm_0_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_dtcm_0_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_dtcm_0_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_dtcm_0_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [15:0] u_bmu_io_plicIn_in; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_plicOut_out_0; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [7:0] u_bmu_io_plicId_id; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_plicClr_en; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_ibus_hready; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [1:0] u_bmu_io_ibus_htrans; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [2:0] u_bmu_io_ibus_hsize; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_ibus_hwrite; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [1:0] u_bmu_io_ibus_hprot; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_ibus_haddr; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_ibus_hwdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [1:0] u_bmu_io_ibus_hresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_ibus_hrdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_dbus_hready; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [1:0] u_bmu_io_dbus_htrans; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [2:0] u_bmu_io_dbus_hsize; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_dbus_hwrite; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [1:0] u_bmu_io_dbus_hprot; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_dbus_haddr; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_dbus_hwdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [1:0] u_bmu_io_dbus_hresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire [31:0] u_bmu_io_dbus_hrdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_instr_priv_mode_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  wire  u_bmu_io_data_priv_mode_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
  CoreWarp u_corewarp ( // @[src/main/scala/coreGen/ChiselCorePkg.scala 109:28]
    .clock(u_corewarp_clock),
    .reset(u_corewarp_reset),
    .io_test_en_i(u_corewarp_io_test_en_i),
    .io_boot_addr_i(u_corewarp_io_boot_addr_i),
    .io_instr_req_ready(u_corewarp_io_instr_req_ready),
    .io_instr_req_valid(u_corewarp_io_instr_req_valid),
    .io_instr_req_bits_addr(u_corewarp_io_instr_req_bits_addr),
    .io_instr_resp_valid(u_corewarp_io_instr_resp_valid),
    .io_instr_resp_bits_err(u_corewarp_io_instr_resp_bits_err),
    .io_instr_resp_bits_rdata(u_corewarp_io_instr_resp_bits_rdata),
    .io_data_req_ready(u_corewarp_io_data_req_ready),
    .io_data_req_valid(u_corewarp_io_data_req_valid),
    .io_data_req_bits_addr(u_corewarp_io_data_req_bits_addr),
    .io_data_req_bits_we(u_corewarp_io_data_req_bits_we),
    .io_data_req_bits_be(u_corewarp_io_data_req_bits_be),
    .io_data_req_bits_wdata(u_corewarp_io_data_req_bits_wdata),
    .io_data_resp_valid(u_corewarp_io_data_resp_valid),
    .io_data_resp_bits_err(u_corewarp_io_data_resp_bits_err),
    .io_data_resp_bits_rdata(u_corewarp_io_data_resp_bits_rdata),
    .io_irq_timer(u_corewarp_io_irq_timer),
    .io_irq_software(u_corewarp_io_irq_software),
    .io_irq_external(u_corewarp_io_irq_external),
    .io_irq_nmi(u_corewarp_io_irq_nmi),
    .io_plicId_id(u_corewarp_io_plicId_id),
    .io_plicClr_en(u_corewarp_io_plicClr_en),
    .io_debug_ind_o(u_corewarp_io_debug_ind_o),
    .io_core_sleep_o(u_corewarp_io_core_sleep_o),
    .io_instr_priv_mode_o(u_corewarp_io_instr_priv_mode_o),
    .io_data_priv_mode_o(u_corewarp_io_data_priv_mode_o),
    .io_moniter_inst(u_corewarp_io_moniter_inst),
    .io_moniter_pc(u_corewarp_io_moniter_pc),
    .io_moniter_mcause(u_corewarp_io_moniter_mcause),
    .io_moniter_mcycle(u_corewarp_io_moniter_mcycle),
    .io_moniter_mepc(u_corewarp_io_moniter_mepc)
  );
  BmuDir u_bmu ( // @[src/main/scala/coreGen/bmu/Bmu.scala 1327:15]
    .clock(u_bmu_clock),
    .reset(u_bmu_reset),
    .io_instr_req_ready(u_bmu_io_instr_req_ready),
    .io_instr_req_valid(u_bmu_io_instr_req_valid),
    .io_instr_req_bits_addr(u_bmu_io_instr_req_bits_addr),
    .io_instr_resp_valid(u_bmu_io_instr_resp_valid),
    .io_instr_resp_bits_err(u_bmu_io_instr_resp_bits_err),
    .io_instr_resp_bits_rdata(u_bmu_io_instr_resp_bits_rdata),
    .io_data_req_ready(u_bmu_io_data_req_ready),
    .io_data_req_valid(u_bmu_io_data_req_valid),
    .io_data_req_bits_addr(u_bmu_io_data_req_bits_addr),
    .io_data_req_bits_we(u_bmu_io_data_req_bits_we),
    .io_data_req_bits_be(u_bmu_io_data_req_bits_be),
    .io_data_req_bits_wdata(u_bmu_io_data_req_bits_wdata),
    .io_data_resp_valid(u_bmu_io_data_resp_valid),
    .io_data_resp_bits_err(u_bmu_io_data_resp_bits_err),
    .io_data_resp_bits_rdata(u_bmu_io_data_resp_bits_rdata),
    .io_testmode(u_bmu_io_testmode),
    .io_rtc(u_bmu_io_rtc),
    .io_software(u_bmu_io_software),
    .io_timer(u_bmu_io_timer),
    .io_itcm_0_cen(u_bmu_io_itcm_0_cen),
    .io_itcm_0_wen(u_bmu_io_itcm_0_wen),
    .io_itcm_0_be(u_bmu_io_itcm_0_be),
    .io_itcm_0_addr(u_bmu_io_itcm_0_addr),
    .io_itcm_0_wdata(u_bmu_io_itcm_0_wdata),
    .io_itcm_0_rdata(u_bmu_io_itcm_0_rdata),
    .io_dtcm_0_cen(u_bmu_io_dtcm_0_cen),
    .io_dtcm_0_wen(u_bmu_io_dtcm_0_wen),
    .io_dtcm_0_be(u_bmu_io_dtcm_0_be),
    .io_dtcm_0_addr(u_bmu_io_dtcm_0_addr),
    .io_dtcm_0_wdata(u_bmu_io_dtcm_0_wdata),
    .io_dtcm_0_rdata(u_bmu_io_dtcm_0_rdata),
    .io_plicIn_in(u_bmu_io_plicIn_in),
    .io_plicOut_out_0(u_bmu_io_plicOut_out_0),
    .io_plicId_id(u_bmu_io_plicId_id),
    .io_plicClr_en(u_bmu_io_plicClr_en),
    .io_ibus_hready(u_bmu_io_ibus_hready),
    .io_ibus_htrans(u_bmu_io_ibus_htrans),
    .io_ibus_hsize(u_bmu_io_ibus_hsize),
    .io_ibus_hwrite(u_bmu_io_ibus_hwrite),
    .io_ibus_hprot(u_bmu_io_ibus_hprot),
    .io_ibus_haddr(u_bmu_io_ibus_haddr),
    .io_ibus_hwdata(u_bmu_io_ibus_hwdata),
    .io_ibus_hresp(u_bmu_io_ibus_hresp),
    .io_ibus_hrdata(u_bmu_io_ibus_hrdata),
    .io_dbus_hready(u_bmu_io_dbus_hready),
    .io_dbus_htrans(u_bmu_io_dbus_htrans),
    .io_dbus_hsize(u_bmu_io_dbus_hsize),
    .io_dbus_hwrite(u_bmu_io_dbus_hwrite),
    .io_dbus_hprot(u_bmu_io_dbus_hprot),
    .io_dbus_haddr(u_bmu_io_dbus_haddr),
    .io_dbus_hwdata(u_bmu_io_dbus_hwdata),
    .io_dbus_hresp(u_bmu_io_dbus_hresp),
    .io_dbus_hrdata(u_bmu_io_dbus_hrdata),
    .io_instr_priv_mode_i(u_bmu_io_instr_priv_mode_i),
    .io_data_priv_mode_i(u_bmu_io_data_priv_mode_i)
  );
  assign io_itcm_0_cen = u_bmu_io_itcm_0_cen; // @[src/main/scala/coreGen/ChiselCorePkg.scala 156:41]
  assign io_itcm_0_wen = u_bmu_io_itcm_0_wen; // @[src/main/scala/coreGen/ChiselCorePkg.scala 156:41]
  assign io_itcm_0_be = u_bmu_io_itcm_0_be; // @[src/main/scala/coreGen/ChiselCorePkg.scala 156:41]
  assign io_itcm_0_addr = u_bmu_io_itcm_0_addr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 156:41]
  assign io_itcm_0_wdata = u_bmu_io_itcm_0_wdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 156:41]
  assign io_dtcm_0_cen = u_bmu_io_dtcm_0_cen; // @[src/main/scala/coreGen/ChiselCorePkg.scala 157:41]
  assign io_dtcm_0_wen = u_bmu_io_dtcm_0_wen; // @[src/main/scala/coreGen/ChiselCorePkg.scala 157:41]
  assign io_dtcm_0_be = u_bmu_io_dtcm_0_be; // @[src/main/scala/coreGen/ChiselCorePkg.scala 157:41]
  assign io_dtcm_0_addr = u_bmu_io_dtcm_0_addr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 157:41]
  assign io_dtcm_0_wdata = u_bmu_io_dtcm_0_wdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 157:41]
  assign io_core_sleep_o = u_corewarp_io_core_sleep_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 244:33]
  assign io_ndmreset_o = 1'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 153:41]
  assign io_debug_dmi_req_ready = 1'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 148:41]
  assign io_debug_dmi_resp_valid = 1'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 148:41]
  assign io_debug_dmi_resp = 34'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 148:41]
  assign io_debug_ind_o = u_corewarp_io_debug_ind_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 242:33]
  assign io_ibus_hmastlock = 1'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_htrans = u_bmu_io_ibus_htrans; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_hsize = u_bmu_io_ibus_hsize; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_hburst = 3'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_hwrite = u_bmu_io_ibus_hwrite; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_hprot = u_bmu_io_ibus_hprot; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_haddr = u_bmu_io_ibus_haddr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_ibus_hwdata = u_bmu_io_ibus_hwdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign io_dbus_hmastlock = 1'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_htrans = u_bmu_io_dbus_htrans; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_hsize = u_bmu_io_dbus_hsize; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_hburst = 3'h0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_hwrite = u_bmu_io_dbus_hwrite; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_hprot = u_bmu_io_dbus_hprot; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_haddr = u_bmu_io_dbus_haddr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_dbus_hwdata = u_bmu_io_dbus_hwdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign io_moniter_inst = u_corewarp_io_moniter_inst; // @[src/main/scala/coreGen/ChiselCorePkg.scala 246:33]
  assign io_moniter_pc = u_corewarp_io_moniter_pc; // @[src/main/scala/coreGen/ChiselCorePkg.scala 247:33]
  assign io_moniter_mcause = u_corewarp_io_moniter_mcause; // @[src/main/scala/coreGen/ChiselCorePkg.scala 248:33]
  assign io_moniter_mcycle = u_corewarp_io_moniter_mcycle; // @[src/main/scala/coreGen/ChiselCorePkg.scala 249:33]
  assign io_moniter_mepc = u_corewarp_io_moniter_mepc; // @[src/main/scala/coreGen/ChiselCorePkg.scala 250:33]
  assign u_corewarp_clock = clock;
  assign u_corewarp_reset = reset; // @[src/main/scala/coreGen/ChiselCorePkg.scala 120:30]
  assign u_corewarp_io_test_en_i = io_test_en_i; // @[src/main/scala/coreGen/ChiselCorePkg.scala 218:33]
  assign u_corewarp_io_boot_addr_i = io_config_start_addr_i; // @[src/main/scala/coreGen/ChiselCorePkg.scala 217:33]
  assign u_corewarp_io_instr_req_ready = u_bmu_io_instr_req_ready; // @[src/main/scala/coreGen/ChiselCorePkg.scala 170:41]
  assign u_corewarp_io_instr_resp_valid = u_bmu_io_instr_resp_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 170:41]
  assign u_corewarp_io_instr_resp_bits_err = u_bmu_io_instr_resp_bits_err; // @[src/main/scala/coreGen/ChiselCorePkg.scala 170:41]
  assign u_corewarp_io_instr_resp_bits_rdata = u_bmu_io_instr_resp_bits_rdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 170:41]
  assign u_corewarp_io_data_req_ready = u_bmu_io_data_req_ready; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_corewarp_io_data_resp_valid = u_bmu_io_data_resp_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_corewarp_io_data_resp_bits_err = u_bmu_io_data_resp_bits_err; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_corewarp_io_data_resp_bits_rdata = u_bmu_io_data_resp_bits_rdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_corewarp_io_irq_timer = u_bmu_io_timer; // @[src/main/scala/coreGen/ChiselCorePkg.scala 180:41]
  assign u_corewarp_io_irq_software = u_bmu_io_software; // @[src/main/scala/coreGen/ChiselCorePkg.scala 179:41]
  assign u_corewarp_io_irq_external = u_bmu_io_plicOut_out_0; // @[src/main/scala/coreGen/ChiselCorePkg.scala 183:{70,70}]
  assign u_corewarp_io_irq_nmi = io_irq_nm_i_in; // @[src/main/scala/coreGen/ChiselCorePkg.scala 257:37]
  assign u_corewarp_io_plicId_id = u_bmu_io_plicId_id; // @[src/main/scala/coreGen/ChiselCorePkg.scala 185:44]
  assign u_bmu_clock = clock;
  assign u_bmu_reset = reset;
  assign u_bmu_io_instr_req_valid = u_corewarp_io_instr_req_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 170:41]
  assign u_bmu_io_instr_req_bits_addr = u_corewarp_io_instr_req_bits_addr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 170:41]
  assign u_bmu_io_data_req_valid = u_corewarp_io_data_req_valid; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_bmu_io_data_req_bits_addr = u_corewarp_io_data_req_bits_addr; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_bmu_io_data_req_bits_we = u_corewarp_io_data_req_bits_we; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_bmu_io_data_req_bits_be = u_corewarp_io_data_req_bits_be; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_bmu_io_data_req_bits_wdata = u_corewarp_io_data_req_bits_wdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 171:41]
  assign u_bmu_io_testmode = io_test_en_i; // @[src/main/scala/coreGen/ChiselCorePkg.scala 145:41]
  assign u_bmu_io_rtc = io_rtc_i; // @[src/main/scala/coreGen/ChiselCorePkg.scala 155:41]
  assign u_bmu_io_itcm_0_rdata = io_itcm_0_rdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 156:41]
  assign u_bmu_io_dtcm_0_rdata = io_dtcm_0_rdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 157:41]
  assign u_bmu_io_plicIn_in = io_plic_i_in; // @[src/main/scala/coreGen/ChiselCorePkg.scala 162:41]
  assign u_bmu_io_plicClr_en = u_corewarp_io_plicClr_en; // @[src/main/scala/coreGen/ChiselCorePkg.scala 187:44]
  assign u_bmu_io_ibus_hready = io_ibus_hready; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign u_bmu_io_ibus_hresp = io_ibus_hresp; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign u_bmu_io_ibus_hrdata = io_ibus_hrdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 165:41]
  assign u_bmu_io_dbus_hready = io_dbus_hready; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign u_bmu_io_dbus_hresp = io_dbus_hresp; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign u_bmu_io_dbus_hrdata = io_dbus_hrdata; // @[src/main/scala/coreGen/ChiselCorePkg.scala 166:41]
  assign u_bmu_io_instr_priv_mode_i = u_corewarp_io_instr_priv_mode_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 176:33]
  assign u_bmu_io_data_priv_mode_i = u_corewarp_io_data_priv_mode_o; // @[src/main/scala/coreGen/ChiselCorePkg.scala 177:33]
endmodule
module FetchFifo(
  input         clock,
  input         reset,
  input         io_clear, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  output [1:0]  io_busy, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  input         io_In_valid, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  input  [31:0] io_In_addr, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  input  [31:0] io_In_rdata, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  input         io_In_err, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  output        io_Out_valid, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  input         io_Out_ready, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  output [31:0] io_Out_addr, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  output [31:0] io_Out_rdata, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  output        io_Out_err, // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
  output        io_Out_errplus2 // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 47:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  _rdataQ_T_1 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:16]
  reg [31:0] rdataQ_0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg [31:0] rdataQ_1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg [31:0] rdataQ_2; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg  errQ_0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg  errQ_1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg  errQ_2; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg  validQ_0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg  validQ_1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  reg  validQ_2; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 80:48]
  wire  _rdata_0_flush_T = io_Out_ready & io_Out_valid; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 73:40]
  wire [31:0] rdata = validQ_0 ? rdataQ_0 : io_In_rdata; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 101:24]
  wire  err = validQ_0 ? errQ_0 : io_In_err; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 103:24]
  wire  alignedCompressed = ~(&rdata[1:0] | err); // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 118:31]
  reg [30:0] instrAddrQ; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 145:34]
  wire  popFifo = _rdata_0_flush_T & (~alignedCompressed | instrAddrQ[0]); // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 161:48]
  wire  lowestFreeEntry_1 = ~validQ_1 & validQ_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 169:47]
  wire  _validPushed_1_T = io_In_valid & lowestFreeEntry_1; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 171:40]
  wire  validPushed_1 = io_In_valid & lowestFreeEntry_1 | validQ_1; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 171:62]
  wire  lowestFreeEntry_0 = ~validQ_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 166:36]
  wire  _entry_0_T = io_In_valid & lowestFreeEntry_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 174:68]
  wire  entry_0 = popFifo ? validPushed_1 : io_In_valid & lowestFreeEntry_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 174:30]
  wire  lowestFreeEntry_2 = ~validQ_2 & validQ_1; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 180:54]
  wire  _validPushed_2_T = io_In_valid & lowestFreeEntry_2; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 181:49]
  wire  validPushed_2 = io_In_valid & lowestFreeEntry_2 | validQ_2; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 181:78]
  wire  entry_1 = popFifo ? validPushed_2 : _validPushed_1_T; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 174:30]
  wire  validPushed_0 = _entry_0_T | validQ_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 171:62]
  wire  validPopped_0 = popFifo ? validPushed_1 : validPushed_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 172:30]
  wire  _validD_0_T = ~io_clear; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 173:45]
  wire  validD_0 = validPopped_0 & ~io_clear; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 173:42]
  wire  validPopped_1 = popFifo ? validPushed_2 : validPushed_1; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 172:30]
  wire  validD_1 = validPopped_1 & ~io_clear; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 173:42]
  wire  validPopped_2 = popFifo ? 1'h0 : validPushed_2; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 182:39]
  wire  validD_2 = validPopped_2 & _validD_0_T; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 183:58]
  wire  valid = validQ_0 | io_In_valid; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 104:24]
  wire [15:0] _rdataUnaligned_T_2 = validQ_1 ? rdataQ_1[15:0] : io_In_rdata[15:0]; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 106:36]
  wire [31:0] rdataUnaligned = {_rdataUnaligned_T_2,rdata[31:16]}; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 109:31]
  wire  unalignedCompressed = ~(&rdata[17:16] | err); // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 117:31]
  wire  _errUnaligned_T = ~unalignedCompressed; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 121:48]
  wire  _errUnaligned_T_2 = errQ_1 & ~unalignedCompressed | errQ_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 121:70]
  wire  _errUnaligned_T_7 = validQ_0 & errQ_0 | io_In_err & (validQ_0 | _errUnaligned_T); // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 122:57]
  wire  errUnaligned = validQ_1 ? _errUnaligned_T_2 : _errUnaligned_T_7; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 120:36]
  wire  _errUnalignedNext_T = ~errQ_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 125:48]
  wire  _errUnalignedNext_T_1 = errQ_1 & ~errQ_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 125:46]
  wire  _errUnalignedNext_T_4 = io_In_err & validQ_0 & _errUnalignedNext_T; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 126:59]
  wire  errUnalignedNext = validQ_1 ? _errUnalignedNext_T_1 : _errUnalignedNext_T_4; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 124:36]
  wire  _validUnaligned_T = validQ_0 & io_In_valid; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 132:47]
  wire  validUnaligned = validQ_1 | _validUnaligned_T; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 130:36]
  wire  addrIncrTwo = instrAddrQ[0] ? unalignedCompressed : alignedCompressed; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 148:28]
  wire  _instrAddrNext_T_1 = ~addrIncrTwo; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 149:58]
  wire [30:0] _instrAddrNext_T_2 = {29'h0,_instrAddrNext_T_1,addrIncrTwo}; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 149:47]
  wire [30:0] instrAddrNext = instrAddrQ + _instrAddrNext_T_2; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 149:42]
  wire  instrAddrEn = io_clear | _rdata_0_flush_T; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 147:35]
  wire [2:0] _io_busy_T = {validQ_2,validQ_1,validQ_0}; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 197:23]
  assign io_busy = _io_busy_T[2:1]; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 197:29]
  assign io_Out_valid = instrAddrQ[0] & _errUnaligned_T ? validUnaligned : valid; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 206:30]
  assign io_Out_addr = {instrAddrQ,1'h0}; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 199:38]
  assign io_Out_rdata = instrAddrQ[0] ? rdataUnaligned : rdata; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 203:30]
  assign io_Out_err = instrAddrQ[0] ? errUnaligned : err; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 204:30]
  assign io_Out_errplus2 = instrAddrQ[0] & errUnalignedNext; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 205:30]
  always @(posedge clock) begin
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      rdataQ_0 <= 32'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 78:29]
    end else if (entry_0) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 94:36]
      if (validQ_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 175:30]
        rdataQ_0 <= rdataQ_1;
      end else begin
        rdataQ_0 <= io_In_rdata;
      end
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      rdataQ_1 <= 32'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 78:29]
    end else if (entry_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 94:36]
      if (validQ_2) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 175:30]
        rdataQ_1 <= rdataQ_2;
      end else begin
        rdataQ_1 <= io_In_rdata;
      end
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      rdataQ_2 <= 32'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 78:29]
    end else if (_validPushed_2_T) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 94:36]
      rdataQ_2 <= io_In_rdata;
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      errQ_0 <= 1'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 79:29]
    end else if (entry_0) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 95:36]
      if (validQ_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 177:30]
        errQ_0 <= errQ_1;
      end else begin
        errQ_0 <= io_In_err;
      end
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      errQ_1 <= 1'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 79:29]
    end else if (entry_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 95:36]
      if (validQ_2) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 177:30]
        errQ_1 <= errQ_2;
      end else begin
        errQ_1 <= io_In_err;
      end
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      errQ_2 <= 1'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 79:29]
    end else if (_validPushed_2_T) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 95:36]
      errQ_2 <= io_In_err;
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      validQ_0 <= 1'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 80:29]
    end else begin
      validQ_0 <= validD_0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 96:29]
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      validQ_1 <= 1'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 80:29]
    end else begin
      validQ_1 <= validD_1; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 96:29]
    end
    if (_rdataQ_T_1) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 75:24]
      validQ_2 <= 1'h0; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 80:29]
    end else begin
      validQ_2 <= validD_2; // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 96:29]
    end
    if (instrAddrEn) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 145:34]
      if (io_clear) begin // @[src/main/scala/coreGen/core/ifu/FetchFifo.scala 144:28]
        instrAddrQ <= io_In_addr[31:1];
      end else begin
        instrAddrQ <= instrAddrNext;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdataQ_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  rdataQ_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  rdataQ_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  errQ_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  errQ_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  errQ_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  validQ_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  validQ_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  validQ_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  instrAddrQ = _RAND_9[30:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PrefetchBuffer(
  input         clock,
  input         reset,
  input         io_req, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input         io_branch_flag, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input         io_branch_spec, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input  [31:0] io_branch_addr, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output        io_fifoOut_valid, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input         io_fifoOut_ready, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output [31:0] io_fifoOut_addr, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output [31:0] io_fifoOut_rdata, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output        io_fifoOut_err, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output        io_fifoOut_errplus2, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output        io_IBus_req, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input         io_IBus_gnt, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output [31:0] io_IBus_addr, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input         io_IBus_rvalid, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input  [31:0] io_IBus_rdata, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  input         io_IBus_err, // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
  output        io_busy // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 40:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  fetchFifo_clock; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_reset; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_clear; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire [1:0] fetchFifo_io_busy; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_In_valid; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire [31:0] fetchFifo_io_In_addr; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire [31:0] fetchFifo_io_In_rdata; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_In_err; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_Out_valid; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_Out_ready; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire [31:0] fetchFifo_io_Out_addr; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire [31:0] fetchFifo_io_Out_rdata; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_Out_err; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  wire  fetchFifo_io_Out_errplus2; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
  reg  validreqQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg  discardreqQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [1:0] discardbranchQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [1:0] rdataoutstandingQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [1:0] rdatapmperrQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [31:0] storedaddrQ; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 94:42]
  wire  rdata_outstanding_Bools_1 = rdataoutstandingQ[0]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 122:56]
  wire  rdata_outstanding_Bools_0 = rdataoutstandingQ[1]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 122:56]
  wire [1:0] rdata_outsatndingRev = {rdata_outstanding_Bools_1,rdata_outstanding_Bools_0}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 124:57]
  wire [1:0] _fifo_ready_T = fetchFifo_io_busy | rdata_outsatndingRev; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 117:53]
  wire  fifo_ready = ~(&_fifo_ready_T); // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 117:33]
  wire  valid_newreq = (io_branch_flag | ~io_branch_spec) & io_req & (fifo_ready | io_branch_flag) & ~
    rdata_outstanding_Bools_0; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 140:116]
  wire  _storedaddrEn_T_1 = valid_newreq & ~validreqQ; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 161:46]
  wire  _storedaddrEn_T_2 = ~io_IBus_gnt; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 161:61]
  wire  storedaddrEn = valid_newreq & ~validreqQ & ~io_IBus_gnt; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 161:59]
  reg [31:0] fetchaddrQ; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 95:42]
  wire [31:0] _instr_addr_T_2 = io_branch_spec ? io_branch_addr : fetchaddrQ; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 192:52]
  wire [31:0] instr_addr = validreqQ ? storedaddrQ : _instr_addr_T_2; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 191:36]
  wire  fetchaddrEn = io_branch_flag | _storedaddrEn_T_1; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 175:44]
  wire [31:0] _fetchaddrD_T_5 = {fetchaddrQ[31:2],2'h0}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 180:107]
  wire [31:0] _fetchaddrD_T_8 = io_branch_flag ? io_branch_addr : _fetchaddrD_T_5; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 176:36]
  wire [31:0] _fetchaddrD_T_11 = {29'h0,_storedaddrEn_T_1,2'h0}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 181:44]
  wire [31:0] fetchaddrD = _fetchaddrD_T_8 + _fetchaddrD_T_11; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 181:39]
  wire  err_rvalidpmp = rdata_outstanding_Bools_1 & (io_IBus_rvalid | rdatapmperrQ[0]); // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 146:54]
  wire  valid_req = validreqQ | valid_newreq; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 142:43]
  wire  discard_reqD = validreqQ & (io_branch_flag | discardreqQ); // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 150:44]
  wire  _rdata_outstanding_bs_0_T = valid_req & io_IBus_gnt; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 213:53]
  wire  rdata_outstanding_bs_0 = valid_req & io_IBus_gnt | rdata_outstanding_Bools_1; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 213:67]
  wire  _branch_discard_bs_0_T_1 = _rdata_outstanding_bs_0_T & discard_reqD; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 214:66]
  wire  _branch_discard_bs_0_T_3 = io_branch_flag & rdata_outstanding_Bools_1; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 215:53]
  wire  _branch_discard_bs_0_T_4 = _rdata_outstanding_bs_0_T & discard_reqD | _branch_discard_bs_0_T_3; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 214:82]
  wire  branch_discard_bs_0 = _branch_discard_bs_0_T_4 | discardbranchQ[0]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 215:115]
  wire  rdata_outstanding_bs_1 = _rdata_outstanding_bs_0_T & rdata_outstanding_Bools_1 | rdata_outstanding_Bools_0; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 221:92]
  wire  _branch_discard_bs_1_T_5 = io_branch_flag & rdata_outstanding_Bools_0; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 223:53]
  wire  _branch_discard_bs_1_T_6 = _branch_discard_bs_0_T_1 & rdata_outstanding_Bools_1 | _branch_discard_bs_1_T_5; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 222:107]
  wire  branch_discard_bs_1 = _branch_discard_bs_1_T_6 | discardbranchQ[1]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 223:115]
  wire  rdata_pmp_err_bs_1 = rdatapmperrQ[1]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 226:53]
  wire [1:0] rdata_outstandingN = {rdata_outstanding_bs_1,rdata_outstanding_bs_0}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 229:49]
  wire [1:0] discard_branchN = {branch_discard_bs_1,branch_discard_bs_0}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 230:46]
  wire [1:0] rdata_pmperrN = {rdata_pmp_err_bs_1,rdatapmperrQ[0]}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 231:45]
  wire [1:0] _rdata_outstandingS_T_1 = {1'h0,rdata_outstandingN[1]}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 233:48]
  wire [1:0] _discard_branchS_T_1 = {1'h0,discard_branchN[1]}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 234:48]
  wire [1:0] _rdata_pmperrS_T_1 = {1'h0,rdata_pmperrN[1]}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 235:48]
  FetchFifo fetchFifo ( // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 108:39]
    .clock(fetchFifo_clock),
    .reset(fetchFifo_reset),
    .io_clear(fetchFifo_io_clear),
    .io_busy(fetchFifo_io_busy),
    .io_In_valid(fetchFifo_io_In_valid),
    .io_In_addr(fetchFifo_io_In_addr),
    .io_In_rdata(fetchFifo_io_In_rdata),
    .io_In_err(fetchFifo_io_In_err),
    .io_Out_valid(fetchFifo_io_Out_valid),
    .io_Out_ready(fetchFifo_io_Out_ready),
    .io_Out_addr(fetchFifo_io_Out_addr),
    .io_Out_rdata(fetchFifo_io_Out_rdata),
    .io_Out_err(fetchFifo_io_Out_err),
    .io_Out_errplus2(fetchFifo_io_Out_errplus2)
  );
  assign io_fifoOut_valid = fetchFifo_io_Out_valid; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 134:56]
  assign io_fifoOut_addr = fetchFifo_io_Out_addr; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 132:29]
  assign io_fifoOut_rdata = fetchFifo_io_Out_rdata; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 132:29]
  assign io_fifoOut_err = fetchFifo_io_Out_err; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 132:29]
  assign io_fifoOut_errplus2 = fetchFifo_io_Out_errplus2; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 132:29]
  assign io_IBus_req = validreqQ | valid_newreq; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 142:43]
  assign io_IBus_addr = {instr_addr[31:2],2'h0}; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 242:32]
  assign io_busy = io_req | |rdataoutstandingQ; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 101:40]
  assign fetchFifo_clock = clock;
  assign fetchFifo_reset = reset;
  assign fetchFifo_io_clear = io_branch_flag; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 103:48]
  assign fetchFifo_io_In_valid = err_rvalidpmp & ~discardbranchQ[0]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 128:47]
  assign fetchFifo_io_In_addr = io_branch_flag ? io_branch_addr : 32'h0; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 129:36]
  assign fetchFifo_io_In_rdata = io_IBus_rdata; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 130:29]
  assign fetchFifo_io_In_err = io_IBus_err | rdatapmperrQ[0]; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 131:45]
  assign fetchFifo_io_Out_ready = io_fifoOut_ready; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 132:29]
  always @(posedge clock) begin
    if (storedaddrEn) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 94:42]
      if (!(validreqQ)) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 191:36]
        if (io_branch_spec) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 192:52]
          storedaddrQ <= io_branch_addr;
        end else begin
          storedaddrQ <= fetchaddrQ;
        end
      end
    end
    if (fetchaddrEn) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 95:42]
      fetchaddrQ <= fetchaddrD; // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 95:42]
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 148:45]
      validreqQ <= 1'h0;
    end else begin
      validreqQ <= valid_req & _storedaddrEn_T_2;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 150:44]
      discardreqQ <= 1'h0;
    end else begin
      discardreqQ <= validreqQ & (io_branch_flag | discardreqQ);
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 234:30]
      discardbranchQ <= 2'h0;
    end else if (err_rvalidpmp) begin
      discardbranchQ <= _discard_branchS_T_1;
    end else begin
      discardbranchQ <= discard_branchN;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 233:30]
      rdataoutstandingQ <= 2'h0;
    end else if (err_rvalidpmp) begin
      rdataoutstandingQ <= _rdata_outstandingS_T_1;
    end else begin
      rdataoutstandingQ <= rdata_outstandingN;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/ifu/PrefetchBuffer.scala 235:30]
      rdatapmperrQ <= 2'h0;
    end else if (err_rvalidpmp) begin
      rdatapmperrQ <= _rdata_pmperrS_T_1;
    end else begin
      rdatapmperrQ <= rdata_pmperrN;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  validreqQ = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  discardreqQ = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  discardbranchQ = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  rdataoutstandingQ = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  rdatapmperrQ = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  storedaddrQ = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  fetchaddrQ = _RAND_6[31:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    validreqQ = 1'h0;
  end
  if (~reset) begin
    discardreqQ = 1'h0;
  end
  if (~reset) begin
    discardbranchQ = 2'h0;
  end
  if (~reset) begin
    rdataoutstandingQ = 2'h0;
  end
  if (~reset) begin
    rdatapmperrQ = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Cdecoder(
  input  [31:0] io_instr, // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 609:14]
  output [31:0] io_compressed_instr, // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 609:14]
  output        io_compressed_illegal, // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 609:14]
  output        io_flag // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 609:14]
);
  wire  _io_compressed_T_1 = 3'h0 == io_instr[15:13]; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27]
  wire  _io_compressed_T_3 = io_instr[12:5] == 8'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 306:27]
  wire [31:0] _io_compressed_res_instr_T_5 = {2'h0,io_instr[10:7],io_instr[12:11],io_instr[5],io_instr[6],2'h0,10'h41,
    io_instr[4:2],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 310:29]
  wire [31:0] _GEN_0 = io_instr[12:5] == 8'h0 ? 32'h0 : _io_compressed_res_instr_T_5; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 306:35 307:23 310:23]
  wire  _io_compressed_T_4 = 3'h2 == io_instr[15:13]; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27]
  wire [17:0] io_compressed_res_instr_lo_1 = {io_instr[9:7],3'h2,2'h1,io_instr[4:2],7'h3}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 318:27]
  wire [31:0] _io_compressed_res_instr_T_11 = {5'h0,io_instr[5],io_instr[12:10],io_instr[6],2'h0,2'h1,
    io_compressed_res_instr_lo_1}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 318:27]
  wire  _io_compressed_T_5 = 3'h6 == io_instr[15:13]; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27]
  wire [17:0] io_compressed_res_instr_lo_2 = {io_instr[9:7],3'h2,io_instr[11:10],io_instr[6],2'h0,7'h23}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 325:27]
  wire [31:0] _io_compressed_res_instr_T_18 = {5'h0,io_instr[5],io_instr[12],2'h1,io_instr[4:2],2'h1,
    io_compressed_res_instr_lo_2}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 325:27]
  wire  _io_compressed_T_6 = 3'h4 == io_instr[15:13]; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27]
  wire [17:0] io_compressed_res_instr_lo_3 = {io_instr[9:7],3'h4,2'h1,io_instr[4:2],7'h3}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 333:28]
  wire [31:0] _io_compressed_res_instr_T_24 = {5'h0,io_instr[5],io_instr[12:10],io_instr[6],2'h0,2'h1,
    io_compressed_res_instr_lo_3}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 333:28]
  wire [17:0] io_compressed_res_instr_lo_4 = {io_instr[9:7],3'h5,2'h1,io_instr[4:2],7'h3}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 339:31]
  wire [31:0] _io_compressed_res_instr_T_30 = {5'h0,io_instr[5],io_instr[12:10],io_instr[6],2'h0,2'h1,
    io_compressed_res_instr_lo_4}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 339:31]
  wire [17:0] io_compressed_res_instr_lo_5 = {io_instr[9:7],3'h1,2'h1,io_instr[4:2],7'h3}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 343:31]
  wire [31:0] _io_compressed_res_instr_T_36 = {5'h0,io_instr[5],io_instr[12:10],io_instr[6],2'h0,2'h1,
    io_compressed_res_instr_lo_5}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 343:31]
  wire [31:0] _GEN_2 = io_instr[6] ? _io_compressed_res_instr_T_30 : _io_compressed_res_instr_T_36; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 338:26 339:25 343:25]
  wire [17:0] io_compressed_res_instr_lo_6 = {io_instr[9:7],3'h0,io_instr[11:10],io_instr[6],2'h0,7'h23}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 348:29]
  wire [31:0] _io_compressed_res_instr_T_43 = {5'h0,io_instr[5],io_instr[12],2'h1,io_instr[4:2],2'h1,
    io_compressed_res_instr_lo_6}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 348:29]
  wire [17:0] io_compressed_res_instr_lo_7 = {io_instr[9:7],3'h1,io_instr[11:10],io_instr[6],2'h0,7'h23}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 353:29]
  wire [31:0] _io_compressed_res_instr_T_50 = {5'h0,io_instr[5],io_instr[12],2'h1,io_instr[4:2],2'h1,
    io_compressed_res_instr_lo_7}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 353:29]
  wire [31:0] _GEN_4 = io_instr[12:10] == 3'h3 ? _io_compressed_res_instr_T_50 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 352:42 353:23 358:23]
  wire  _GEN_5 = io_instr[12:10] == 3'h3 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 352:42 356:25 359:25]
  wire [31:0] _GEN_6 = io_instr[12:10] == 3'h2 ? _io_compressed_res_instr_T_43 : _GEN_4; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 347:42 348:23]
  wire  _GEN_7 = io_instr[12:10] == 3'h2 ? 1'h0 : _GEN_5; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 347:42 351:25]
  wire [31:0] _GEN_8 = io_instr[12:10] == 3'h1 ? _GEN_2 : _GEN_6; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 337:42]
  wire  _GEN_9 = io_instr[12:10] == 3'h1 ? 1'h0 : _GEN_7; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 337:42]
  wire [31:0] _GEN_10 = io_instr[12:10] == 3'h0 ? _io_compressed_res_instr_T_24 : _GEN_8; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 332:36 333:23]
  wire  _GEN_11 = io_instr[12:10] == 3'h0 ? 1'h0 : _GEN_9; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 332:36 336:25]
  wire [31:0] _GEN_12 = 3'h4 == io_instr[15:13] ? _GEN_10 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 253:15 304:27]
  wire  _GEN_13 = 3'h4 == io_instr[15:13] ? _GEN_11 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 254:17 304:27]
  wire [31:0] _GEN_14 = 3'h6 == io_instr[15:13] ? _io_compressed_res_instr_T_18 : _GEN_12; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27 325:21]
  wire  _GEN_15 = 3'h6 == io_instr[15:13] ? 1'h0 : _GEN_13; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27 328:23]
  wire [31:0] _GEN_16 = 3'h2 == io_instr[15:13] ? _io_compressed_res_instr_T_11 : _GEN_14; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27 318:21]
  wire  _GEN_17 = 3'h2 == io_instr[15:13] ? 1'h0 : _GEN_15; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27 320:23]
  wire [31:0] io_compressed_res_instr = 3'h0 == io_instr[15:13] ? _GEN_0 : _GEN_16; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27]
  wire  io_compressed_res_illegal = 3'h0 == io_instr[15:13] ? _io_compressed_T_3 : _GEN_17; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 304:27]
  wire [5:0] _io_compressed_instr_T_2 = io_instr[12] ? 6'h3f : 6'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 628:40]
  wire [31:0] _io_compressed_instr_T_7 = {_io_compressed_instr_T_2,io_instr[12],io_instr[6:2],io_instr[11:7],3'h0,
    io_instr[11:7],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 628:35]
  wire [8:0] _io_compressed_instr_T_18 = io_instr[12] ? 9'h1ff : 9'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 636:41]
  wire  _io_compressed_instr_T_20 = ~io_instr[15]; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 636:67]
  wire [24:0] io_compressed_instr_lo_1 = {io_instr[11],io_instr[5:3],_io_compressed_instr_T_18,4'h0,
    _io_compressed_instr_T_20,7'h6f}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 634:35]
  wire [31:0] _io_compressed_instr_T_21 = {io_instr[12],io_instr[8],io_instr[10:9],io_instr[6],io_instr[7],io_instr[2],
    io_compressed_instr_lo_1}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 634:35]
  wire [31:0] _io_compressed_instr_T_28 = {_io_compressed_instr_T_2,io_instr[12],io_instr[6:2],5'h0,3'h0,io_instr[11:7],7'h13
    }; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 641:35]
  wire [5:0] _T_17 = {io_instr[12],io_instr[6:2]}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 645:19]
  wire  _T_18 = _T_17 == 6'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 645:48]
  wire [2:0] _io_compressed_instr_T_33 = io_instr[12] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 652:46]
  wire [31:0] _io_compressed_instr_T_38 = {_io_compressed_instr_T_33,io_instr[4:3],io_instr[5],io_instr[2],io_instr[6],24'h10113
    }; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 652:41]
  wire [14:0] _io_compressed_instr_T_41 = io_instr[12] ? 15'h7fff : 15'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 656:46]
  wire [31:0] _io_compressed_instr_T_44 = {_io_compressed_instr_T_41,io_instr[6:2],io_instr[11:7],7'h37}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 656:41]
  wire [31:0] _io_compressed_instr_T_45 = io_instr[11:7] == 5'h2 ? _io_compressed_instr_T_38 : _io_compressed_instr_T_44
    ; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 650:39]
  wire [31:0] _GEN_21 = _T_17 == 6'h0 ? 32'h0 : _io_compressed_instr_T_45; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 645:56 647:33 650:33]
  wire [31:0] _io_compressed_res_instr_T_55 = {1'h0,io_instr[10],5'h0,io_instr[6:2],2'h1,io_instr[9:7],3'h5,2'h1,
    io_instr[9:7],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 380:27]
  wire [31:0] _GEN_23 = io_instr[12] ? 32'h0 : _io_compressed_res_instr_T_55; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 376:36 378:21 380:21]
  wire [31:0] _io_compressed_res_instr_T_63 = {_io_compressed_instr_T_2,io_instr[12],io_instr[6:2],2'h1,io_instr[9:7],5'h1d
    ,io_instr[9:7],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 387:25]
  wire [2:0] _io_compressed_T_26 = {io_instr[12],io_instr[6:5]}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 393:19]
  wire [31:0] _io_compressed_res_instr_T_67 = {9'h81,io_instr[4:2],2'h1,io_instr[9:7],3'h0,2'h1,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 394:29]
  wire [31:0] _io_compressed_res_instr_T_71 = {9'h1,io_instr[4:2],2'h1,io_instr[9:7],5'h11,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 398:29]
  wire [31:0] _io_compressed_res_instr_T_75 = {9'h1,io_instr[4:2],2'h1,io_instr[9:7],5'h19,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 402:29]
  wire [31:0] _io_compressed_res_instr_T_79 = {9'h1,io_instr[4:2],2'h1,io_instr[9:7],5'h1d,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 406:29]
  wire [31:0] _io_compressed_res_instr_T_83 = {9'h1,io_instr[4:2],2'h1,io_instr[9:7],5'h1,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 410:29]
  wire [31:0] _io_compressed_res_instr_T_87 = {9'h11,io_instr[4:2],2'h1,io_instr[9:7],5'h15,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 415:31]
  wire [31:0] _io_compressed_res_instr_T_90 = {14'h1811,io_instr[9:7],3'h3,2'h1,io_instr[9:7],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 419:31]
  wire [31:0] _io_compressed_res_instr_T_94 = {9'h11,io_instr[4:2],2'h1,io_instr[9:7],5'h11,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 423:31]
  wire [31:0] _io_compressed_res_instr_T_97 = {14'h1815,io_instr[9:7],3'h3,2'h1,io_instr[9:7],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 427:31]
  wire [31:0] _io_compressed_res_instr_T_101 = {9'h81,io_instr[4:2],2'h1,io_instr[9:7],5'h11,io_instr[9:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 431:31]
  wire [31:0] _GEN_24 = io_instr[4:0] == 5'h15 ? _io_compressed_res_instr_T_101 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 430:56 431:25 436:23]
  wire  _GEN_25 = io_instr[4:0] == 5'h15 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 430:56 433:27 435:25]
  wire [31:0] _GEN_26 = io_instr[4:0] == 5'hd ? _io_compressed_res_instr_T_97 : _GEN_24; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 426:56 427:25]
  wire  _GEN_27 = io_instr[4:0] == 5'hd ? 1'h0 : _GEN_25; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 426:56 429:27]
  wire [31:0] _GEN_28 = io_instr[4:0] == 5'h9 ? _io_compressed_res_instr_T_94 : _GEN_26; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 422:56 423:25]
  wire  _GEN_29 = io_instr[4:0] == 5'h9 ? 1'h0 : _GEN_27; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 422:56 425:27]
  wire [31:0] _GEN_30 = io_instr[4:0] == 5'h5 ? _io_compressed_res_instr_T_90 : _GEN_28; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 418:56 419:25]
  wire  _GEN_31 = io_instr[4:0] == 5'h5 ? 1'h0 : _GEN_29; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 418:56 421:27]
  wire [31:0] _GEN_32 = io_instr[4:0] == 5'h1 ? _io_compressed_res_instr_T_87 : _GEN_30; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 414:50 415:25]
  wire  _GEN_33 = io_instr[4:0] == 5'h1 ? 1'h0 : _GEN_31; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 414:50 417:27]
  wire [31:0] _GEN_34 = _io_compressed_T_26 == 3'h7 ? _GEN_32 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 413:59 440:23]
  wire  _GEN_35 = _io_compressed_T_26 == 3'h7 ? _GEN_33 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 413:59 439:25]
  wire [31:0] _GEN_36 = _io_compressed_T_26 == 3'h6 ? _io_compressed_res_instr_T_83 : _GEN_34; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 409:59 410:23]
  wire  _GEN_37 = _io_compressed_T_26 == 3'h6 ? 1'h0 : _GEN_35; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 409:59 412:25]
  wire [31:0] _GEN_38 = _io_compressed_T_26 == 3'h3 ? _io_compressed_res_instr_T_79 : _GEN_36; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 405:59 406:23]
  wire  _GEN_39 = _io_compressed_T_26 == 3'h3 ? 1'h0 : _GEN_37; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 405:59 408:25]
  wire [31:0] _GEN_40 = _io_compressed_T_26 == 3'h2 ? _io_compressed_res_instr_T_75 : _GEN_38; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 401:59 402:23]
  wire  _GEN_41 = _io_compressed_T_26 == 3'h2 ? 1'h0 : _GEN_39; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 401:59 404:25]
  wire [31:0] _GEN_42 = _io_compressed_T_26 == 3'h1 ? _io_compressed_res_instr_T_71 : _GEN_40; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 397:59 398:23]
  wire  _GEN_43 = _io_compressed_T_26 == 3'h1 ? 1'h0 : _GEN_41; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 397:59 400:25]
  wire [31:0] _GEN_44 = _io_compressed_T_26 == 3'h0 ? _io_compressed_res_instr_T_67 : _GEN_42; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 393:53 394:23]
  wire  _GEN_45 = _io_compressed_T_26 == 3'h0 ? 1'h0 : _GEN_43; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 393:53 396:25]
  wire [31:0] _GEN_46 = 2'h3 == io_instr[11:10] ? _GEN_44 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 369:15 371:24]
  wire  _GEN_47 = 2'h3 == io_instr[11:10] ? _GEN_45 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 370:17 371:24]
  wire [31:0] _GEN_48 = 2'h2 == io_instr[11:10] ? _io_compressed_res_instr_T_63 : _GEN_46; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 371:24 387:19]
  wire  _GEN_49 = 2'h2 == io_instr[11:10] ? 1'h0 : _GEN_47; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 371:24 389:21]
  wire  io_compressed_res_1_illegal = 2'h0 == io_instr[11:10] | 2'h1 == io_instr[11:10] ? io_instr[12] : _GEN_49; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 371:24]
  wire [31:0] io_compressed_res_1_instr = 2'h0 == io_instr[11:10] | 2'h1 == io_instr[11:10] ? _GEN_23 : _GEN_48; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 371:24]
  wire [3:0] _io_compressed_instr_T_48 = io_instr[12] ? 4'hf : 4'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 664:40]
  wire [14:0] io_compressed_instr_lo_5 = {2'h0,io_instr[13],io_instr[11:10],io_instr[4:3],io_instr[12],7'h63}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 664:35]
  wire [31:0] _io_compressed_instr_T_56 = {_io_compressed_instr_T_48,io_instr[6:5],io_instr[2],7'h1,io_instr[9:7],
    io_compressed_instr_lo_5}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 664:35]
  wire [31:0] _GEN_52 = io_instr[15:13] == 3'h6 | io_instr[15:13] == 3'h7 ? _io_compressed_instr_T_56 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 661:78 664:29 670:29]
  wire  _GEN_53 = io_instr[15:13] == 3'h6 | io_instr[15:13] == 3'h7 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 661:78 667:31 669:31]
  wire [31:0] _GEN_54 = io_instr[15:13] == 3'h4 ? io_compressed_res_1_instr : _GEN_52; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 658:47 660:23]
  wire  _GEN_55 = io_instr[15:13] == 3'h4 ? io_compressed_res_1_illegal : _GEN_53; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 658:47 660:23]
  wire  _GEN_56 = io_instr[15:13] == 3'h3 ? _T_18 : _GEN_55; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 644:47]
  wire [31:0] _GEN_57 = io_instr[15:13] == 3'h3 ? _GEN_21 : _GEN_54; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 644:47]
  wire [31:0] _GEN_58 = io_instr[15:13] == 3'h2 ? _io_compressed_instr_T_28 : _GEN_57; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 638:47 641:29]
  wire  _GEN_59 = io_instr[15:13] == 3'h2 ? 1'h0 : _GEN_56; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 638:47 643:31]
  wire [31:0] _GEN_60 = io_instr[15:13] == 3'h1 | io_instr[15:13] == 3'h5 ? _io_compressed_instr_T_21 : _GEN_58; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 631:78 634:29]
  wire  _GEN_61 = io_instr[15:13] == 3'h1 | io_instr[15:13] == 3'h5 ? 1'h0 : _GEN_59; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 631:78 637:31]
  wire [31:0] _GEN_62 = io_instr[15:13] == 3'h0 ? _io_compressed_instr_T_7 : _GEN_60; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 625:39 628:29]
  wire  _GEN_63 = io_instr[15:13] == 3'h0 ? 1'h0 : _GEN_61; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 625:39 630:31]
  wire [31:0] _io_compressed_res_instr_T_105 = {7'h0,io_instr[6:2],io_instr[11:7],3'h1,io_instr[11:7],7'h13}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 543:29]
  wire [31:0] _GEN_65 = io_instr[12] ? 32'h0 : _io_compressed_res_instr_T_105; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 539:38 541:23 543:23]
  wire  _io_compressed_T_64 = io_instr[11:7] == 5'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 550:27]
  wire [31:0] _io_compressed_res_instr_T_110 = {4'h0,io_instr[3:2],io_instr[12],io_instr[6:4],2'h0,8'h12,io_instr[11:7],7'h3
    }; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 554:29]
  wire [31:0] _GEN_67 = io_instr[11:7] == 5'h0 ? 32'h0 : _io_compressed_res_instr_T_110; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 550:40 552:23 554:23]
  wire [31:0] _io_compressed_res_instr_T_115 = {4'h0,io_instr[8:7],io_instr[12],io_instr[6:2],5'h2,3'h2,io_instr[11:9],9'h23
    }; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 560:27]
  wire  _io_compressed_T_70 = io_instr[6:2] != 5'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 567:30]
  wire [31:0] _io_compressed_res_instr_T_118 = {7'h0,io_instr[6:2],5'h0,3'h0,io_instr[11:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 571:33]
  wire [31:0] _io_compressed_res_instr_T_120 = {12'h0,io_instr[11:7],3'h0,12'h67}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 579:35]
  wire [31:0] _GEN_68 = _io_compressed_T_64 ? 32'h0 : _io_compressed_res_instr_T_120; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 574:41 575:29 579:29]
  wire  _GEN_70 = io_instr[6:2] != 5'h0 ? 1'h0 : _io_compressed_T_64; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 567:38 570:29]
  wire [31:0] _GEN_71 = io_instr[6:2] != 5'h0 ? _io_compressed_res_instr_T_118 : _GEN_68; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 567:38 571:27]
  wire [31:0] _io_compressed_res_instr_T_124 = {7'h0,io_instr[6:2],io_instr[11:7],3'h0,io_instr[11:7],7'h33}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 587:33]
  wire [31:0] _io_compressed_res_instr_T_126 = {12'h0,io_instr[11:7],3'h0,12'he7}; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 596:35]
  wire [31:0] _GEN_73 = _io_compressed_T_64 ? 32'h100073 : _io_compressed_res_instr_T_126; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 589:41 592:29 596:29]
  wire [31:0] _GEN_75 = _io_compressed_T_70 ? _io_compressed_res_instr_T_124 : _GEN_73; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 583:38 587:27]
  wire  _GEN_76 = ~io_instr[12] & _GEN_70; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 566:28]
  wire [31:0] _GEN_77 = ~io_instr[12] ? _GEN_71 : _GEN_75; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 566:28]
  wire  _GEN_78 = _io_compressed_T_6 ? _GEN_76 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 450:17 535:26]
  wire [31:0] _GEN_79 = _io_compressed_T_6 ? _GEN_77 : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 449:15 535:26]
  wire [31:0] _GEN_80 = _io_compressed_T_5 ? _io_compressed_res_instr_T_115 : _GEN_79; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 535:26 560:21]
  wire  _GEN_81 = _io_compressed_T_5 ? 1'h0 : _GEN_78; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 535:26 562:23]
  wire  _GEN_82 = _io_compressed_T_4 ? _io_compressed_T_64 : _GEN_81; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 535:26]
  wire [31:0] _GEN_83 = _io_compressed_T_4 ? _GEN_67 : _GEN_80; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 535:26]
  wire  io_compressed_res_2_illegal = _io_compressed_T_1 ? io_instr[12] : _GEN_82; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 535:26]
  wire [31:0] io_compressed_res_2_instr = _io_compressed_T_1 ? _GEN_65 : _GEN_83; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 535:26]
  wire [31:0] _GEN_86 = io_instr[1:0] == 2'h3 ? io_instr : 32'h0; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 674:41 675:25 678:25]
  wire  _GEN_87 = io_instr[1:0] == 2'h3 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 674:41 676:27 679:27]
  wire [31:0] _GEN_88 = io_instr[1:0] == 2'h2 ? io_compressed_res_2_instr : _GEN_86; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 672:41 673:19]
  wire  _GEN_89 = io_instr[1:0] == 2'h2 ? io_compressed_res_2_illegal : _GEN_87; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 672:41 673:19]
  wire [31:0] _GEN_90 = io_instr[1:0] == 2'h1 ? _GEN_62 : _GEN_88; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 624:41]
  wire  _GEN_91 = io_instr[1:0] == 2'h1 ? _GEN_63 : _GEN_89; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 624:41]
  assign io_compressed_instr = io_instr[1:0] == 2'h0 ? io_compressed_res_instr : _GEN_90; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 622:35 623:19]
  assign io_compressed_illegal = io_instr[1:0] == 2'h0 ? io_compressed_res_illegal : _GEN_91; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 622:35 623:19]
  assign io_flag = io_instr[1:0] != 2'h3; // @[src/main/scala/coreGen/core/ifu/CompressedDecoder.scala 682:31]
endmodule
module ifu(
  input         clock,
  input         reset,
  input  [31:0] boot_addr_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 31:47]
  input         req_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 32:47]
  output        instr_req_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 48:47]
  output [31:0] instr_addr_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 49:47]
  input         instr_gnt_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 50:47]
  input         instr_rvalid_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 51:47]
  input  [31:0] instr_rdata_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 52:47]
  input         instr_err_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 54:47]
  output        instr_valid_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 58:47]
  output [31:0] instr_rdata_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 60:47]
  output [31:0] instr_rdata_alu_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 61:47]
  output [15:0] instr_rdata_c_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 62:47]
  output        instr_is_compressed_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 64:47]
  output        instr_fetch_err_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 67:47]
  output        instr_fetch_err_plus2_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 68:47]
  output        illegal_c_insn_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 69:47]
  output [31:0] pc_if_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 71:47]
  output [31:0] pc_id_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 72:47]
  input         disable_branch_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 75:47]
  input         instr_valid_clear_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 78:47]
  input         pc_set_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 79:47]
  input         pc_set_spec_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 80:47]
  input  [2:0]  pc_mux_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 81:47]
  input  [2:0]  exc_pc_mux_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 84:47]
  input  [5:0]  exc_cause, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 85:47]
  input  [31:0] branch_target_ex_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 91:47]
  input  [31:0] csr_mepc_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 94:47]
  input  [31:0] csr_mtvec_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 96:47]
  input         id_in_ready_i, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 99:47]
  output        fetch_valid_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 102:47]
  output        if_busy_o, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 106:47]
  input  [31:0] csr_mpvec_base, // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 108:47]
  input  [7:0]  plic_id // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 109:47]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire  u_prebuffer_clock; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_reset; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_branch_flag; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_branch_spec; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire [31:0] u_prebuffer_io_branch_addr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_fifoOut_valid; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_fifoOut_ready; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire [31:0] u_prebuffer_io_fifoOut_addr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire [31:0] u_prebuffer_io_fifoOut_rdata; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_fifoOut_err; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_fifoOut_errplus2; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_IBus_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_IBus_gnt; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire [31:0] u_prebuffer_io_IBus_addr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_IBus_rvalid; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire [31:0] u_prebuffer_io_IBus_rdata; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_IBus_err; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire  u_prebuffer_io_busy; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
  wire [31:0] u_cdecoder_io_instr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 315:28]
  wire [31:0] u_cdecoder_io_compressed_instr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 315:28]
  wire  u_cdecoder_io_compressed_illegal; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 315:28]
  wire  u_cdecoder_io_flag; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 315:28]
  wire  _instr_valid_id_q_T_2 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:31]
  reg  instr_valid_id_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg  latency_flag; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 108:52]
  reg [2:0] latency_cnt; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 108:52]
  wire [2:0] _latency_cnt_T_4 = latency_cnt + 3'h1; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 164:37]
  wire [31:0] _exc_pc_T_1 = {csr_mtvec_i[31:2],2'h0}; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 185:53]
  wire [31:0] _exc_pc_T_6 = {csr_mtvec_i[31:8],1'h0,exc_cause[4:0],2'h0}; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 188:52]
  wire [31:0] _exc_pc_T_8 = {csr_mpvec_base[31:10],plic_id,2'h0}; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 189:52]
  wire [31:0] _exc_pc_T_10 = 3'h0 == exc_pc_mux_i ? _exc_pc_T_1 : _exc_pc_T_1; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 185:83]
  wire [31:0] _exc_pc_T_12 = 3'h1 == exc_pc_mux_i ? _exc_pc_T_6 : _exc_pc_T_10; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 185:83]
  wire [31:0] _exc_pc_T_14 = 3'h2 == exc_pc_mux_i ? _exc_pc_T_8 : _exc_pc_T_12; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 185:83]
  wire [31:0] _exc_pc_T_16 = 3'h3 == exc_pc_mux_i ? 32'h40800 : _exc_pc_T_14; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 185:83]
  wire [31:0] exc_pc = 3'h4 == exc_pc_mux_i ? 32'h40808 : _exc_pc_T_16; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 185:83]
  wire [31:0] _fetch_addr_n_T_1 = 3'h1 == pc_mux_i ? branch_target_ex_i : boot_addr_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 249:71]
  wire [31:0] _fetch_addr_n_T_3 = 3'h2 == pc_mux_i ? exc_pc : _fetch_addr_n_T_1; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 249:71]
  wire [31:0] _fetch_addr_n_T_5 = 3'h3 == pc_mux_i ? csr_mepc_i : _fetch_addr_n_T_3; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 249:71]
  wire [31:0] fetch_addr_n = 3'h4 == pc_mux_i ? 32'h0 : _fetch_addr_n_T_5; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 249:71]
  wire  fetch_valid = u_prebuffer_io_fifoOut_valid; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 129:45 277:49]
  wire  _instr_valid_id_d_T = fetch_valid & id_in_ready_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 347:44]
  wire  _instr_valid_id_d_T_6 = instr_valid_id_q & ~instr_valid_clear_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 348:47]
  reg [31:0] instr_rdata_id_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire [31:0] instr_decompressed = u_cdecoder_io_compressed_instr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 311:34 319:51]
  reg [31:0] instr_rdata_alu_id_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  reg  instr_rdata_err_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire  fetch_err = u_prebuffer_io_fifoOut_err; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 133:45 280:49]
  reg  instr_fetch_err_plus2_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire  fetch_err_plus2 = u_prebuffer_io_fifoOut_errplus2; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 134:45 281:49]
  wire [31:0] fetch_rdata = u_prebuffer_io_fifoOut_rdata; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 131:45 278:49]
  reg [15:0] instr_rdata_c_id_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  reg  instr_is_compressed_id_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire  instr_is_compressed = u_cdecoder_io_flag; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 313:35 320:51]
  reg  illegal_c_insn_id_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire  illegal_c_insn = u_cdecoder_io_compressed_illegal; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 312:30 321:51]
  reg [31:0] pc_id_req; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  PrefetchBuffer u_prebuffer ( // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 266:33]
    .clock(u_prebuffer_clock),
    .reset(u_prebuffer_reset),
    .io_req(u_prebuffer_io_req),
    .io_branch_flag(u_prebuffer_io_branch_flag),
    .io_branch_spec(u_prebuffer_io_branch_spec),
    .io_branch_addr(u_prebuffer_io_branch_addr),
    .io_fifoOut_valid(u_prebuffer_io_fifoOut_valid),
    .io_fifoOut_ready(u_prebuffer_io_fifoOut_ready),
    .io_fifoOut_addr(u_prebuffer_io_fifoOut_addr),
    .io_fifoOut_rdata(u_prebuffer_io_fifoOut_rdata),
    .io_fifoOut_err(u_prebuffer_io_fifoOut_err),
    .io_fifoOut_errplus2(u_prebuffer_io_fifoOut_errplus2),
    .io_IBus_req(u_prebuffer_io_IBus_req),
    .io_IBus_gnt(u_prebuffer_io_IBus_gnt),
    .io_IBus_addr(u_prebuffer_io_IBus_addr),
    .io_IBus_rvalid(u_prebuffer_io_IBus_rvalid),
    .io_IBus_rdata(u_prebuffer_io_IBus_rdata),
    .io_IBus_err(u_prebuffer_io_IBus_err),
    .io_busy(u_prebuffer_io_busy)
  );
  Cdecoder u_cdecoder ( // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 315:28]
    .io_instr(u_cdecoder_io_instr),
    .io_compressed_instr(u_cdecoder_io_compressed_instr),
    .io_compressed_illegal(u_cdecoder_io_compressed_illegal),
    .io_flag(u_cdecoder_io_flag)
  );
  assign instr_req_o = u_prebuffer_io_IBus_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 283:49]
  assign instr_addr_o = u_prebuffer_io_IBus_addr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 284:56]
  assign instr_valid_id_o = instr_valid_id_q; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 352:25]
  assign instr_rdata_id_o = instr_rdata_id_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 358:37]
  assign instr_rdata_alu_id_o = instr_rdata_alu_id_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 360:37]
  assign instr_rdata_c_id_o = instr_rdata_c_id_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 366:37]
  assign instr_is_compressed_id_o = instr_is_compressed_id_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 368:37]
  assign instr_fetch_err_o = instr_rdata_err_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 362:37]
  assign instr_fetch_err_plus2_o = instr_fetch_err_plus2_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 364:37]
  assign illegal_c_insn_id_o = illegal_c_insn_id_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 370:37]
  assign pc_if_o = u_prebuffer_io_fifoOut_addr; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 132:45 279:49]
  assign pc_id_o = pc_id_req; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 372:37]
  assign fetch_valid_o = u_prebuffer_io_fifoOut_valid; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 129:45 277:49]
  assign if_busy_o = u_prebuffer_io_busy; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 122:45 294:49]
  assign u_prebuffer_clock = clock;
  assign u_prebuffer_reset = reset;
  assign u_prebuffer_io_req = req_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 268:43]
  assign u_prebuffer_io_branch_flag = pc_set_i & ~disable_branch_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 305:55]
  assign u_prebuffer_io_branch_spec = pc_set_spec_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 306:34]
  assign u_prebuffer_io_branch_addr = {fetch_addr_n[31:1],1'h0}; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 274:50]
  assign u_prebuffer_io_fifoOut_ready = id_in_ready_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 473:51]
  assign u_prebuffer_io_IBus_gnt = instr_gnt_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 285:43]
  assign u_prebuffer_io_IBus_rvalid = instr_rvalid_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 286:43]
  assign u_prebuffer_io_IBus_rdata = instr_rdata_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 288:69]
  assign u_prebuffer_io_IBus_err = instr_err_i; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 291:43]
  assign u_cdecoder_io_instr = u_prebuffer_io_fifoOut_rdata; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 131:45 278:49]
  always @(posedge clock) begin
    latency_flag <= 1'h0; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 162:43 163:22]
    if (latency_cnt <= 3'h0) begin // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 162:43]
      latency_cnt <= _latency_cnt_T_4; // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 164:22]
    end else begin
      latency_cnt <= 3'h0;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/ifu/InstructFetchUnit.scala 347:101]
      instr_valid_id_q <= 1'h0;
    end else begin
      instr_valid_id_q <= fetch_valid & id_in_ready_i & ~pc_set_i | _instr_valid_id_d_T_6;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_id_req <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_id_req <= instr_decompressed;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_alu_id_req <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_alu_id_req <= instr_decompressed;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_err_req <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_err_req <= fetch_err;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_fetch_err_plus2_req <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_fetch_err_plus2_req <= fetch_err_plus2;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_c_id_req <= 16'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_rdata_c_id_req <= fetch_rdata[15:0];
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_is_compressed_id_req <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      instr_is_compressed_id_req <= instr_is_compressed;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      illegal_c_insn_id_req <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      illegal_c_insn_id_req <= illegal_c_insn;
    end
  end
  always @(posedge clock or posedge _instr_valid_id_q_T_2) begin
    if (_instr_valid_id_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      pc_id_req <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_instr_valid_id_d_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      pc_id_req <= pc_if_o;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  instr_valid_id_q = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  latency_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  latency_cnt = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  instr_rdata_id_req = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  instr_rdata_alu_id_req = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  instr_rdata_err_req = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  instr_fetch_err_plus2_req = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  instr_rdata_c_id_req = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  instr_is_compressed_id_req = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  illegal_c_insn_id_req = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  pc_id_req = _RAND_10[31:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    instr_valid_id_q = 1'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    instr_rdata_id_req = 32'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    instr_rdata_alu_id_req = 32'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    instr_rdata_err_req = 1'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    instr_fetch_err_plus2_req = 1'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    instr_rdata_c_id_req = 16'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    instr_is_compressed_id_req = 1'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    illegal_c_insn_id_req = 1'h0;
  end
  if (_instr_valid_id_q_T_2) begin
    pc_id_req = 32'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module chiseldecoder(
  output        illegal_insn_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 91:36]
  output        ebrk_insn_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 92:36]
  output        mret_insn_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 93:36]
  output        dret_insn_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 95:36]
  output        ecall_insn_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 96:36]
  output        wfi_insn_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 97:36]
  output        jump_set_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 98:36]
  input         instr_first_cycle_i, // @[src/main/scala/coreGen/core/idu/decoder.scala 103:36]
  input  [31:0] instr_rdata_i, // @[src/main/scala/coreGen/core/idu/decoder.scala 104:36]
  input  [31:0] instr_rdata_alu_i, // @[src/main/scala/coreGen/core/idu/decoder.scala 105:36]
  input         illegal_c_insn_i, // @[src/main/scala/coreGen/core/idu/decoder.scala 108:36]
  output        imm_a_mux_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 111:36]
  output [2:0]  imm_b_mux_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 112:36]
  output [2:0]  bt_a_mux_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 113:36]
  output [2:0]  bt_b_mux_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 114:36]
  output [31:0] imm_i_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 115:36]
  output [31:0] imm_s_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 116:36]
  output [31:0] imm_b_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 117:36]
  output [31:0] imm_u_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 118:36]
  output [31:0] imm_j_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 119:36]
  output [31:0] zimm_rs1_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 120:36]
  output [1:0]  rf_wdata_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 123:36]
  output        rf_we_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 124:36]
  output [4:0]  rf_raddr_a_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 125:36]
  output [4:0]  rf_raddr_b_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 126:36]
  output [4:0]  rf_waddr_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 127:36]
  output [5:0]  alu_operator_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 132:36]
  output [2:0]  alu_op_a_mux_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 133:36]
  output [1:0]  alu_op_b_mux_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 135:36]
  output        mult_en_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 142:36]
  output        div_en_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 143:36]
  output        mult_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 144:36]
  output        div_sel_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 145:36]
  output [1:0]  multdiv_operator_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 147:36]
  output [1:0]  multdiv_signed_mode_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 148:36]
  output        csr_access_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 151:36]
  output [1:0]  csr_op_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 152:36]
  output        data_req_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 155:36]
  output        data_we_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 156:36]
  output [1:0]  data_type_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 157:36]
  output        data_sign_extension_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 159:36]
  output        jump_in_dec_o, // @[src/main/scala/coreGen/core/idu/decoder.scala 163:36]
  output        branch_in_dec_o // @[src/main/scala/coreGen/core/idu/decoder.scala 164:36]
);
  wire [19:0] _imm_i_type_o_T_2 = instr_rdata_i[31] ? 20'hfffff : 20'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 212:30]
  wire [26:0] imm_s_type_o_hi = {_imm_i_type_o_T_2,instr_rdata_i[31:25]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 213:25]
  wire [18:0] _imm_b_type_o_T_2 = instr_rdata_i[31] ? 19'h7ffff : 19'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 214:30]
  wire [10:0] imm_b_type_o_lo = {instr_rdata_i[30:25],instr_rdata_i[11:8],1'h0}; // @[src/main/scala/coreGen/core/idu/decoder.scala 214:25]
  wire [20:0] imm_b_type_o_hi = {_imm_b_type_o_T_2,instr_rdata_i[31],instr_rdata_i[7]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 214:25]
  wire [11:0] _imm_j_type_o_T_2 = instr_rdata_i[31] ? 12'hfff : 12'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 216:30]
  wire [10:0] imm_j_type_o_lo = {instr_rdata_i[30:21],1'h0}; // @[src/main/scala/coreGen/core/idu/decoder.scala 216:25]
  wire [20:0] imm_j_type_o_hi = {_imm_j_type_o_T_2,instr_rdata_i[19:12],instr_rdata_i[20]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 216:25]
  wire [4:0] instr_rs1 = instr_rdata_i[19:15]; // @[src/main/scala/coreGen/core/idu/decoder.scala 222:25]
  wire [4:0] instr_rs3 = instr_rdata_i[31:27]; // @[src/main/scala/coreGen/core/idu/decoder.scala 228:30]
  wire [6:0] opcode = instr_rdata_i[6:0]; // @[src/main/scala/coreGen/core/idu/decoder.scala 309:38]
  wire  _T_15 = opcode == 7'h63; // @[src/main/scala/coreGen/core/idu/decoder.scala 342:23]
  wire  _T_33 = opcode == 7'h23; // @[src/main/scala/coreGen/core/idu/decoder.scala 359:23]
  wire  _T_41 = opcode == 7'h3; // @[src/main/scala/coreGen/core/idu/decoder.scala 379:23]
  wire  _T_210 = instr_rdata_i[14:12] == 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 638:25]
  wire  _T_227 = instr_rdata_i[13:12] == 2'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 669:27]
  wire  _T_229 = instr_rdata_i[13:12] == 2'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 671:35]
  wire [1:0] _GEN_98 = instr_rdata_i[13:12] == 2'h3 ? 2'h3 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 673:48 674:20 289:27]
  wire [1:0] _GEN_100 = instr_rdata_i[13:12] == 2'h2 ? 2'h2 : _GEN_98; // @[src/main/scala/coreGen/core/idu/decoder.scala 671:48 672:20]
  wire [1:0] _GEN_102 = instr_rdata_i[13:12] == 2'h1 ? 2'h1 : _GEN_100; // @[src/main/scala/coreGen/core/idu/decoder.scala 669:40 670:20]
  wire [1:0] _GEN_113 = instr_rdata_i[14:12] == 3'h0 ? 2'h0 : _GEN_102; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 638:39]
  wire [1:0] _GEN_130 = opcode == 7'h73 ? _GEN_113 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 637:43]
  wire [1:0] _GEN_144 = opcode == 7'hf ? 2'h0 : _GEN_130; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 623:45]
  wire [1:0] _GEN_161 = opcode == 7'h33 ? 2'h0 : _GEN_144; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 490:38]
  wire [1:0] _GEN_178 = opcode == 7'h13 ? 2'h0 : _GEN_161; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 404:42]
  wire [1:0] _GEN_195 = opcode == 7'h17 ? 2'h0 : _GEN_178; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 402:41]
  wire [1:0] _GEN_212 = opcode == 7'h37 ? 2'h0 : _GEN_195; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 400:39]
  wire [1:0] _GEN_232 = opcode == 7'h3 ? 2'h0 : _GEN_212; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 379:40]
  wire [1:0] _GEN_253 = opcode == 7'h23 ? 2'h0 : _GEN_232; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 359:41]
  wire [1:0] _GEN_275 = opcode == 7'h63 ? 2'h0 : _GEN_253; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 342:42]
  wire [1:0] _GEN_298 = opcode == 7'h67 ? 2'h0 : _GEN_275; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 325:40]
  wire [1:0] csr_op = opcode == 7'h6f ? 2'h0 : _GEN_298; // @[src/main/scala/coreGen/core/idu/decoder.scala 289:27 314:31]
  wire  _T_14 = instr_rdata_i[14:12] != 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 337:26]
  wire  _T_19 = instr_rdata_i[14:12] == 3'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 348:26]
  wire  _T_20 = _T_210 | _T_19; // @[src/main/scala/coreGen/core/idu/decoder.scala 347:39]
  wire  _T_22 = instr_rdata_i[14:12] == 3'h4; // @[src/main/scala/coreGen/core/idu/decoder.scala 349:26]
  wire  _T_23 = _T_20 | _T_22; // @[src/main/scala/coreGen/core/idu/decoder.scala 348:39]
  wire  _T_25 = instr_rdata_i[14:12] == 3'h5; // @[src/main/scala/coreGen/core/idu/decoder.scala 350:26]
  wire  _T_26 = _T_23 | _T_25; // @[src/main/scala/coreGen/core/idu/decoder.scala 349:39]
  wire  _T_28 = instr_rdata_i[14:12] == 3'h6; // @[src/main/scala/coreGen/core/idu/decoder.scala 351:26]
  wire  _T_29 = _T_26 | _T_28; // @[src/main/scala/coreGen/core/idu/decoder.scala 350:39]
  wire  _T_31 = instr_rdata_i[14:12] == 3'h7; // @[src/main/scala/coreGen/core/idu/decoder.scala 352:26]
  wire  _T_32 = _T_29 | _T_31; // @[src/main/scala/coreGen/core/idu/decoder.scala 351:39]
  wire  _GEN_8 = _T_32 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 352:41 353:22 355:22]
  wire  _T_36 = instr_rdata_i[13:12] == 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 370:26]
  wire  _GEN_11 = _T_229 ? instr_rdata_i[14] : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 374:49 377:22]
  wire [1:0] _GEN_12 = _T_227 ? 2'h1 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 372:49 373:22]
  wire  _GEN_13 = _T_227 ? instr_rdata_i[14] : _GEN_11; // @[src/main/scala/coreGen/core/idu/decoder.scala 372:49]
  wire [1:0] _GEN_14 = instr_rdata_i[13:12] == 2'h0 ? 2'h2 : _GEN_12; // @[src/main/scala/coreGen/core/idu/decoder.scala 370:43 371:22]
  wire  _GEN_15 = instr_rdata_i[13:12] == 2'h0 ? instr_rdata_i[14] : _GEN_13; // @[src/main/scala/coreGen/core/idu/decoder.scala 370:43]
  wire  _GEN_20 = _T_227 ? 1'h0 : _GEN_11; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 389:50]
  wire  _GEN_22 = _T_36 ? 1'h0 : _GEN_20; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 387:44]
  wire  _T_55 = instr_rdata_i[14:12] == 3'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 409:21]
  wire  _T_56 = _T_210 | _T_55; // @[src/main/scala/coreGen/core/idu/decoder.scala 408:38]
  wire  _T_58 = instr_rdata_i[14:12] == 3'h3; // @[src/main/scala/coreGen/core/idu/decoder.scala 410:21]
  wire  _T_59 = _T_56 | _T_58; // @[src/main/scala/coreGen/core/idu/decoder.scala 409:33]
  wire  _T_62 = _T_59 | _T_22; // @[src/main/scala/coreGen/core/idu/decoder.scala 410:33]
  wire  _T_65 = _T_62 | _T_28; // @[src/main/scala/coreGen/core/idu/decoder.scala 411:33]
  wire  _T_68 = _T_65 | _T_31; // @[src/main/scala/coreGen/core/idu/decoder.scala 412:33]
  wire  _T_72 = instr_rs3 == 5'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 440:30]
  wire  _illegal_insn_T_2 = instr_rdata_i[26:25] == 2'h0 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 441:34]
  wire  _GEN_26 = instr_rs3 == 5'h0 ? _illegal_insn_T_2 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 440:51 441:28]
  wire  _T_95 = instr_rs3 == 5'h8; // @[src/main/scala/coreGen/core/idu/decoder.scala 480:29]
  wire  _T_96 = _T_72 | _T_95; // @[src/main/scala/coreGen/core/idu/decoder.scala 479:53]
  wire  _GEN_27 = _T_96 ? _illegal_insn_T_2 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 480:49 481:32 483:32]
  wire  _GEN_28 = instr_rdata_i[26] | _GEN_27; // @[src/main/scala/coreGen/core/idu/decoder.scala 476:38 477:28]
  wire  _GEN_29 = _T_25 ? _GEN_28 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 457:46 488:24]
  wire  _GEN_30 = _T_19 ? _GEN_26 : _GEN_29; // @[src/main/scala/coreGen/core/idu/decoder.scala 416:46]
  wire  _GEN_31 = _T_68 ? 1'h0 : _GEN_30; // @[src/main/scala/coreGen/core/idu/decoder.scala 413:34 414:24]
  wire [9:0] _T_100 = {instr_rdata_i[31:25],instr_rdata_i[14:12]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 494:15]
  wire  _T_105 = _T_100 == 10'h100; // @[src/main/scala/coreGen/core/idu/decoder.scala 495:43]
  wire  _T_106 = _T_100 == 10'h0 | _T_105; // @[src/main/scala/coreGen/core/idu/decoder.scala 494:65]
  wire  _T_110 = _T_100 == 10'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 496:43]
  wire  _T_111 = _T_106 | _T_110; // @[src/main/scala/coreGen/core/idu/decoder.scala 495:62]
  wire  _T_115 = _T_100 == 10'h3; // @[src/main/scala/coreGen/core/idu/decoder.scala 497:43]
  wire  _T_116 = _T_111 | _T_115; // @[src/main/scala/coreGen/core/idu/decoder.scala 496:62]
  wire  _T_120 = _T_100 == 10'h4; // @[src/main/scala/coreGen/core/idu/decoder.scala 498:43]
  wire  _T_121 = _T_116 | _T_120; // @[src/main/scala/coreGen/core/idu/decoder.scala 497:62]
  wire  _T_125 = _T_100 == 10'h6; // @[src/main/scala/coreGen/core/idu/decoder.scala 499:43]
  wire  _T_126 = _T_121 | _T_125; // @[src/main/scala/coreGen/core/idu/decoder.scala 498:62]
  wire  _T_130 = _T_100 == 10'h7; // @[src/main/scala/coreGen/core/idu/decoder.scala 500:43]
  wire  _T_131 = _T_126 | _T_130; // @[src/main/scala/coreGen/core/idu/decoder.scala 499:62]
  wire  _T_135 = _T_100 == 10'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 501:43]
  wire  _T_136 = _T_131 | _T_135; // @[src/main/scala/coreGen/core/idu/decoder.scala 500:62]
  wire  _T_140 = _T_100 == 10'h5; // @[src/main/scala/coreGen/core/idu/decoder.scala 502:43]
  wire  _T_141 = _T_136 | _T_140; // @[src/main/scala/coreGen/core/idu/decoder.scala 501:62]
  wire  _T_145 = _T_100 == 10'h105; // @[src/main/scala/coreGen/core/idu/decoder.scala 503:43]
  wire  _T_146 = _T_141 | _T_145; // @[src/main/scala/coreGen/core/idu/decoder.scala 502:62]
  wire [1:0] _GEN_41 = _T_100 == 10'hf ? 2'h3 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 533:74 534:33]
  wire  _GEN_43 = _T_100 == 10'hf ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 533:74 536:36]
  wire [1:0] _GEN_44 = _T_100 == 10'he ? 2'h3 : _GEN_41; // @[src/main/scala/coreGen/core/idu/decoder.scala 529:74 530:33]
  wire [1:0] _GEN_45 = _T_100 == 10'he ? 2'h3 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 529:74 531:33]
  wire  _GEN_46 = _T_100 == 10'he ? 1'h0 : _GEN_43; // @[src/main/scala/coreGen/core/idu/decoder.scala 529:74 532:36]
  wire [1:0] _GEN_47 = _T_100 == 10'hd ? 2'h2 : _GEN_44; // @[src/main/scala/coreGen/core/idu/decoder.scala 525:74 526:33]
  wire [1:0] _GEN_48 = _T_100 == 10'hd ? 2'h0 : _GEN_45; // @[src/main/scala/coreGen/core/idu/decoder.scala 525:74 527:33]
  wire  _GEN_49 = _T_100 == 10'hd ? 1'h0 : _GEN_46; // @[src/main/scala/coreGen/core/idu/decoder.scala 525:74 528:36]
  wire [1:0] _GEN_50 = _T_100 == 10'hc ? 2'h2 : _GEN_47; // @[src/main/scala/coreGen/core/idu/decoder.scala 521:74 522:33]
  wire [1:0] _GEN_51 = _T_100 == 10'hc ? 2'h3 : _GEN_48; // @[src/main/scala/coreGen/core/idu/decoder.scala 521:74 523:33]
  wire  _GEN_52 = _T_100 == 10'hc ? 1'h0 : _GEN_49; // @[src/main/scala/coreGen/core/idu/decoder.scala 521:74 524:36]
  wire [1:0] _GEN_53 = _T_100 == 10'hb ? 2'h1 : _GEN_50; // @[src/main/scala/coreGen/core/idu/decoder.scala 517:74 518:33]
  wire [1:0] _GEN_54 = _T_100 == 10'hb ? 2'h0 : _GEN_51; // @[src/main/scala/coreGen/core/idu/decoder.scala 517:74 519:33]
  wire  _GEN_55 = _T_100 == 10'hb ? 1'h0 : _GEN_52; // @[src/main/scala/coreGen/core/idu/decoder.scala 517:74 520:36]
  wire [1:0] _GEN_56 = _T_100 == 10'ha ? 2'h1 : _GEN_53; // @[src/main/scala/coreGen/core/idu/decoder.scala 513:74 514:33]
  wire [1:0] _GEN_57 = _T_100 == 10'ha ? 2'h1 : _GEN_54; // @[src/main/scala/coreGen/core/idu/decoder.scala 513:74 515:33]
  wire  _GEN_58 = _T_100 == 10'ha ? 1'h0 : _GEN_55; // @[src/main/scala/coreGen/core/idu/decoder.scala 513:74 516:36]
  wire [1:0] _GEN_59 = _T_100 == 10'h9 ? 2'h1 : _GEN_56; // @[src/main/scala/coreGen/core/idu/decoder.scala 509:74 510:33]
  wire [1:0] _GEN_60 = _T_100 == 10'h9 ? 2'h3 : _GEN_57; // @[src/main/scala/coreGen/core/idu/decoder.scala 509:74 511:33]
  wire  _GEN_61 = _T_100 == 10'h9 ? 1'h0 : _GEN_58; // @[src/main/scala/coreGen/core/idu/decoder.scala 509:74 512:36]
  wire [1:0] _GEN_62 = _T_100 == 10'h8 ? 2'h0 : _GEN_59; // @[src/main/scala/coreGen/core/idu/decoder.scala 505:73 506:33]
  wire [1:0] _GEN_63 = _T_100 == 10'h8 ? 2'h0 : _GEN_60; // @[src/main/scala/coreGen/core/idu/decoder.scala 505:73 507:33]
  wire  _GEN_64 = _T_100 == 10'h8 ? 1'h0 : _GEN_61; // @[src/main/scala/coreGen/core/idu/decoder.scala 505:73 508:36]
  wire  _GEN_65 = _T_146 ? 1'h0 : _GEN_64; // @[src/main/scala/coreGen/core/idu/decoder.scala 503:64 504:24]
  wire [1:0] _GEN_66 = _T_146 ? 2'h0 : _GEN_62; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 503:64]
  wire [1:0] _GEN_67 = _T_146 ? 2'h0 : _GEN_63; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 503:64]
  wire  _GEN_70 = _T_19 & instr_first_cycle_i; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 626:45]
  wire  _GEN_71 = _T_19 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 626:45 635:24]
  wire  _GEN_73 = _T_210 ? 1'h0 : _T_19; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 624:39]
  wire  _GEN_74 = _T_210 ? 1'h0 : _GEN_70; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 624:39]
  wire  _GEN_75 = _T_210 ? 1'h0 : _GEN_71; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 624:39]
  wire  _T_212 = instr_rdata_i[31:20] == 12'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 640:27]
  wire  _T_214 = instr_rdata_i[31:20] == 12'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 642:33]
  wire  _T_216 = instr_rdata_i[31:20] == 12'h302; // @[src/main/scala/coreGen/core/idu/decoder.scala 644:33]
  wire  _T_218 = instr_rdata_i[31:20] == 12'h7b2; // @[src/main/scala/coreGen/core/idu/decoder.scala 646:33]
  wire  _T_220 = instr_rdata_i[31:20] == 12'h105; // @[src/main/scala/coreGen/core/idu/decoder.scala 648:33]
  wire  _GEN_77 = instr_rdata_i[31:20] == 12'h105 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 648:47 651:26]
  wire  _GEN_79 = instr_rdata_i[31:20] == 12'h7b2 ? 1'h0 : _T_220; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 646:47]
  wire  _GEN_80 = instr_rdata_i[31:20] == 12'h7b2 ? 1'h0 : _GEN_77; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 646:47]
  wire  _GEN_82 = instr_rdata_i[31:20] == 12'h302 ? 1'h0 : _T_218; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 644:47]
  wire  _GEN_83 = instr_rdata_i[31:20] == 12'h302 ? 1'h0 : _GEN_79; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 644:47]
  wire  _GEN_84 = instr_rdata_i[31:20] == 12'h302 ? 1'h0 : _GEN_80; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 644:47]
  wire  _GEN_86 = instr_rdata_i[31:20] == 12'h1 ? 1'h0 : _T_216; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 642:47]
  wire  _GEN_87 = instr_rdata_i[31:20] == 12'h1 ? 1'h0 : _GEN_82; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 642:47]
  wire  _GEN_88 = instr_rdata_i[31:20] == 12'h1 ? 1'h0 : _GEN_83; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 642:47]
  wire  _GEN_89 = instr_rdata_i[31:20] == 12'h1 ? 1'h0 : _GEN_84; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 642:47]
  wire  _GEN_91 = instr_rdata_i[31:20] == 12'h0 ? 1'h0 : _T_214; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 640:41]
  wire  _GEN_92 = instr_rdata_i[31:20] == 12'h0 ? 1'h0 : _GEN_86; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 640:41]
  wire  _GEN_93 = instr_rdata_i[31:20] == 12'h0 ? 1'h0 : _GEN_87; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 640:41]
  wire  _GEN_94 = instr_rdata_i[31:20] == 12'h0 ? 1'h0 : _GEN_88; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 640:41]
  wire  _GEN_95 = instr_rdata_i[31:20] == 12'h0 ? 1'h0 : _GEN_89; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 640:41]
  wire  _GEN_96 = instr_rs1 != 5'h0 | instr_rdata_i[11:7] != 5'h0 | _GEN_95; // @[src/main/scala/coreGen/core/idu/decoder.scala 655:53 656:24]
  wire  _GEN_99 = instr_rdata_i[13:12] == 2'h3 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 673:48 676:25]
  wire  _GEN_101 = instr_rdata_i[13:12] == 2'h2 ? 1'h0 : _GEN_99; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 671:48]
  wire  _GEN_103 = instr_rdata_i[13:12] == 2'h1 ? 1'h0 : _GEN_101; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 669:40]
  wire  _GEN_104 = instr_rdata_i[14:12] == 3'h0 & _T_212; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 638:39]
  wire  _GEN_105 = instr_rdata_i[14:12] == 3'h0 & _GEN_91; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 638:39]
  wire  _GEN_106 = instr_rdata_i[14:12] == 3'h0 & _GEN_92; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 638:39]
  wire  _GEN_107 = instr_rdata_i[14:12] == 3'h0 & _GEN_93; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 638:39]
  wire  _GEN_108 = instr_rdata_i[14:12] == 3'h0 & _GEN_94; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 638:39]
  wire  _GEN_114 = instr_rdata_i[14:12] == 3'h0 ? 1'h0 : _GEN_103; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 638:39]
  wire  _GEN_131 = opcode == 7'h73 & _GEN_114; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 637:43]
  wire  _GEN_145 = opcode == 7'hf ? 1'h0 : _GEN_131; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 623:45]
  wire  _GEN_162 = opcode == 7'h33 ? 1'h0 : _GEN_145; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 490:38]
  wire  _GEN_179 = opcode == 7'h13 ? 1'h0 : _GEN_162; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 404:42]
  wire  _GEN_196 = opcode == 7'h17 ? 1'h0 : _GEN_179; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 402:41]
  wire  _GEN_213 = opcode == 7'h37 ? 1'h0 : _GEN_196; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 400:39]
  wire  _GEN_233 = opcode == 7'h3 ? 1'h0 : _GEN_213; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 379:40]
  wire  _GEN_254 = opcode == 7'h23 ? 1'h0 : _GEN_233; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 359:41]
  wire  _GEN_276 = opcode == 7'h63 ? 1'h0 : _GEN_254; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 342:42]
  wire  _GEN_299 = opcode == 7'h67 ? 1'h0 : _GEN_276; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 325:40]
  wire  csr_illegal = opcode == 7'h6f ? 1'h0 : _GEN_299; // @[src/main/scala/coreGen/core/idu/decoder.scala 288:27 314:31]
  wire  _GEN_109 = instr_rdata_i[14:12] == 3'h0 ? _GEN_96 : csr_illegal; // @[src/main/scala/coreGen/core/idu/decoder.scala 638:39 679:22]
  wire  _GEN_110 = instr_rdata_i[14:12] == 3'h0 ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 638:39 661:22]
  wire [1:0] _GEN_111 = instr_rdata_i[14:12] == 3'h0 ? 2'h1 : 2'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 638:39 662:24]
  wire  _GEN_120 = opcode == 7'h2f ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 682:38]
  wire  _GEN_121 = opcode == 7'h73 & _GEN_104; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 637:43]
  wire  _GEN_122 = opcode == 7'h73 & _GEN_105; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 637:43]
  wire  _GEN_123 = opcode == 7'h73 & _GEN_106; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 637:43]
  wire  _GEN_124 = opcode == 7'h73 & _GEN_107; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 637:43]
  wire  _GEN_125 = opcode == 7'h73 & _GEN_108; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 637:43]
  wire  _GEN_126 = opcode == 7'h73 ? _GEN_109 : _GEN_120; // @[src/main/scala/coreGen/core/idu/decoder.scala 637:43]
  wire  _GEN_127 = opcode == 7'h73 & _GEN_110; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 637:43]
  wire [1:0] _GEN_128 = opcode == 7'h73 ? _GEN_111 : 2'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 637:43]
  wire  _GEN_132 = opcode == 7'hf ? 1'h0 : _GEN_127; // @[src/main/scala/coreGen/core/idu/decoder.scala 623:45]
  wire  _GEN_133 = opcode == 7'hf & _GEN_73; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 623:45]
  wire  _GEN_134 = opcode == 7'hf & _GEN_74; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 623:45]
  wire  _GEN_135 = opcode == 7'hf ? _GEN_75 : _GEN_126; // @[src/main/scala/coreGen/core/idu/decoder.scala 623:45]
  wire  _GEN_136 = opcode == 7'hf ? 1'h0 : _GEN_121; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 623:45]
  wire  _GEN_137 = opcode == 7'hf ? 1'h0 : _GEN_122; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 623:45]
  wire  _GEN_138 = opcode == 7'hf ? 1'h0 : _GEN_123; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 623:45]
  wire  _GEN_139 = opcode == 7'hf ? 1'h0 : _GEN_124; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 623:45]
  wire  _GEN_140 = opcode == 7'hf ? 1'h0 : _GEN_125; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 623:45]
  wire [1:0] _GEN_142 = opcode == 7'hf ? 2'h1 : _GEN_128; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 623:45]
  wire  _GEN_148 = opcode == 7'h33 | _GEN_132; // @[src/main/scala/coreGen/core/idu/decoder.scala 490:38 493:13]
  wire  _GEN_149 = opcode == 7'h33 ? _GEN_65 : _GEN_135; // @[src/main/scala/coreGen/core/idu/decoder.scala 490:38]
  wire [1:0] _GEN_150 = opcode == 7'h33 ? _GEN_66 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 490:38]
  wire [1:0] _GEN_151 = opcode == 7'h33 ? _GEN_67 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 490:38]
  wire  _GEN_152 = opcode == 7'h33 ? 1'h0 : _GEN_133; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 490:38]
  wire  _GEN_153 = opcode == 7'h33 ? 1'h0 : _GEN_134; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 490:38]
  wire  _GEN_154 = opcode == 7'h33 ? 1'h0 : _GEN_136; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 490:38]
  wire  _GEN_155 = opcode == 7'h33 ? 1'h0 : _GEN_137; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 490:38]
  wire  _GEN_156 = opcode == 7'h33 ? 1'h0 : _GEN_138; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 490:38]
  wire  _GEN_157 = opcode == 7'h33 ? 1'h0 : _GEN_139; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 490:38]
  wire  _GEN_158 = opcode == 7'h33 ? 1'h0 : _GEN_140; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 490:38]
  wire  _GEN_159 = opcode == 7'h33 ? 1'h0 : _GEN_132; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 490:38]
  wire [1:0] _GEN_160 = opcode == 7'h33 ? 2'h1 : _GEN_142; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 490:38]
  wire  _GEN_164 = opcode == 7'h13 | _GEN_148; // @[src/main/scala/coreGen/core/idu/decoder.scala 404:42 406:15]
  wire  _GEN_165 = opcode == 7'h13 ? _GEN_31 : _GEN_149; // @[src/main/scala/coreGen/core/idu/decoder.scala 404:42]
  wire [1:0] _GEN_167 = opcode == 7'h13 ? 2'h0 : _GEN_150; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 404:42]
  wire [1:0] _GEN_168 = opcode == 7'h13 ? 2'h0 : _GEN_151; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 404:42]
  wire  _GEN_169 = opcode == 7'h13 ? 1'h0 : _GEN_152; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 404:42]
  wire  _GEN_170 = opcode == 7'h13 ? 1'h0 : _GEN_153; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 404:42]
  wire  _GEN_171 = opcode == 7'h13 ? 1'h0 : _GEN_154; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 404:42]
  wire  _GEN_172 = opcode == 7'h13 ? 1'h0 : _GEN_155; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 404:42]
  wire  _GEN_173 = opcode == 7'h13 ? 1'h0 : _GEN_156; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 404:42]
  wire  _GEN_174 = opcode == 7'h13 ? 1'h0 : _GEN_157; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 404:42]
  wire  _GEN_175 = opcode == 7'h13 ? 1'h0 : _GEN_158; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 404:42]
  wire  _GEN_176 = opcode == 7'h13 ? 1'h0 : _GEN_159; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 404:42]
  wire [1:0] _GEN_177 = opcode == 7'h13 ? 2'h1 : _GEN_160; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 404:42]
  wire  _GEN_180 = opcode == 7'h17 | _GEN_164; // @[src/main/scala/coreGen/core/idu/decoder.scala 402:41 403:15]
  wire  _GEN_182 = opcode == 7'h17 ? 1'h0 : _GEN_165; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 402:41]
  wire [1:0] _GEN_184 = opcode == 7'h17 ? 2'h0 : _GEN_167; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 402:41]
  wire [1:0] _GEN_185 = opcode == 7'h17 ? 2'h0 : _GEN_168; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 402:41]
  wire  _GEN_186 = opcode == 7'h17 ? 1'h0 : _GEN_169; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 402:41]
  wire  _GEN_187 = opcode == 7'h17 ? 1'h0 : _GEN_170; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 402:41]
  wire  _GEN_188 = opcode == 7'h17 ? 1'h0 : _GEN_171; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 402:41]
  wire  _GEN_189 = opcode == 7'h17 ? 1'h0 : _GEN_172; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 402:41]
  wire  _GEN_190 = opcode == 7'h17 ? 1'h0 : _GEN_173; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 402:41]
  wire  _GEN_191 = opcode == 7'h17 ? 1'h0 : _GEN_174; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 402:41]
  wire  _GEN_192 = opcode == 7'h17 ? 1'h0 : _GEN_175; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 402:41]
  wire  _GEN_193 = opcode == 7'h17 ? 1'h0 : _GEN_176; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 402:41]
  wire [1:0] _GEN_194 = opcode == 7'h17 ? 2'h1 : _GEN_177; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 402:41]
  wire  _GEN_197 = opcode == 7'h37 | _GEN_180; // @[src/main/scala/coreGen/core/idu/decoder.scala 400:39 401:15]
  wire  _GEN_199 = opcode == 7'h37 ? 1'h0 : _GEN_182; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 400:39]
  wire [1:0] _GEN_201 = opcode == 7'h37 ? 2'h0 : _GEN_184; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 400:39]
  wire [1:0] _GEN_202 = opcode == 7'h37 ? 2'h0 : _GEN_185; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 400:39]
  wire  _GEN_203 = opcode == 7'h37 ? 1'h0 : _GEN_186; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 400:39]
  wire  _GEN_204 = opcode == 7'h37 ? 1'h0 : _GEN_187; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 400:39]
  wire  _GEN_205 = opcode == 7'h37 ? 1'h0 : _GEN_188; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 400:39]
  wire  _GEN_206 = opcode == 7'h37 ? 1'h0 : _GEN_189; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 400:39]
  wire  _GEN_207 = opcode == 7'h37 ? 1'h0 : _GEN_190; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 400:39]
  wire  _GEN_208 = opcode == 7'h37 ? 1'h0 : _GEN_191; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 400:39]
  wire  _GEN_209 = opcode == 7'h37 ? 1'h0 : _GEN_192; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 400:39]
  wire  _GEN_210 = opcode == 7'h37 ? 1'h0 : _GEN_193; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 400:39]
  wire [1:0] _GEN_211 = opcode == 7'h37 ? 2'h1 : _GEN_194; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 400:39]
  wire [1:0] _GEN_216 = opcode == 7'h3 ? _GEN_14 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 292:27 379:40]
  wire  _GEN_217 = opcode == 7'h3 & ~instr_rdata_i[14]; // @[src/main/scala/coreGen/core/idu/decoder.scala 293:27 379:40 385:29]
  wire  _GEN_218 = opcode == 7'h3 ? _GEN_22 : _GEN_199; // @[src/main/scala/coreGen/core/idu/decoder.scala 379:40]
  wire  _GEN_219 = opcode == 7'h3 ? 1'h0 : _GEN_197; // @[src/main/scala/coreGen/core/idu/decoder.scala 277:27 379:40]
  wire [1:0] _GEN_221 = opcode == 7'h3 ? 2'h0 : _GEN_201; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 379:40]
  wire [1:0] _GEN_222 = opcode == 7'h3 ? 2'h0 : _GEN_202; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 379:40]
  wire  _GEN_223 = opcode == 7'h3 ? 1'h0 : _GEN_203; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 379:40]
  wire  _GEN_224 = opcode == 7'h3 ? 1'h0 : _GEN_204; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 379:40]
  wire  _GEN_225 = opcode == 7'h3 ? 1'h0 : _GEN_205; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 379:40]
  wire  _GEN_226 = opcode == 7'h3 ? 1'h0 : _GEN_206; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 379:40]
  wire  _GEN_227 = opcode == 7'h3 ? 1'h0 : _GEN_207; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 379:40]
  wire  _GEN_228 = opcode == 7'h3 ? 1'h0 : _GEN_208; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 379:40]
  wire  _GEN_229 = opcode == 7'h3 ? 1'h0 : _GEN_209; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 379:40]
  wire  _GEN_230 = opcode == 7'h3 ? 1'h0 : _GEN_210; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 379:40]
  wire [1:0] _GEN_231 = opcode == 7'h3 ? 2'h1 : _GEN_211; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 379:40]
  wire  _GEN_236 = opcode == 7'h23 | _T_41; // @[src/main/scala/coreGen/core/idu/decoder.scala 359:41 362:26]
  wire  _GEN_238 = opcode == 7'h23 ? _GEN_15 : _GEN_218; // @[src/main/scala/coreGen/core/idu/decoder.scala 359:41]
  wire [1:0] _GEN_239 = opcode == 7'h23 ? _GEN_14 : _GEN_216; // @[src/main/scala/coreGen/core/idu/decoder.scala 359:41]
  wire  _GEN_240 = opcode == 7'h23 ? 1'h0 : _GEN_217; // @[src/main/scala/coreGen/core/idu/decoder.scala 293:27 359:41]
  wire  _GEN_241 = opcode == 7'h23 ? 1'h0 : _GEN_219; // @[src/main/scala/coreGen/core/idu/decoder.scala 277:27 359:41]
  wire [1:0] _GEN_242 = opcode == 7'h23 ? 2'h0 : _GEN_221; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 359:41]
  wire [1:0] _GEN_243 = opcode == 7'h23 ? 2'h0 : _GEN_222; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 359:41]
  wire  _GEN_244 = opcode == 7'h23 ? 1'h0 : _GEN_223; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 359:41]
  wire  _GEN_245 = opcode == 7'h23 ? 1'h0 : _GEN_224; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 359:41]
  wire  _GEN_246 = opcode == 7'h23 ? 1'h0 : _GEN_225; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 359:41]
  wire  _GEN_247 = opcode == 7'h23 ? 1'h0 : _GEN_226; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 359:41]
  wire  _GEN_248 = opcode == 7'h23 ? 1'h0 : _GEN_227; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 359:41]
  wire  _GEN_249 = opcode == 7'h23 ? 1'h0 : _GEN_228; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 359:41]
  wire  _GEN_250 = opcode == 7'h23 ? 1'h0 : _GEN_229; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 359:41]
  wire  _GEN_251 = opcode == 7'h23 ? 1'h0 : _GEN_230; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 359:41]
  wire [1:0] _GEN_252 = opcode == 7'h23 ? 2'h1 : _GEN_231; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 359:41]
  wire  _GEN_256 = opcode == 7'h63 ? _GEN_8 : _GEN_238; // @[src/main/scala/coreGen/core/idu/decoder.scala 342:42]
  wire  _GEN_259 = opcode == 7'h63 ? 1'h0 : _GEN_236; // @[src/main/scala/coreGen/core/idu/decoder.scala 294:27 342:42]
  wire  _GEN_260 = opcode == 7'h63 ? 1'h0 : _T_33; // @[src/main/scala/coreGen/core/idu/decoder.scala 291:27 342:42]
  wire [1:0] _GEN_261 = opcode == 7'h63 ? 2'h0 : _GEN_239; // @[src/main/scala/coreGen/core/idu/decoder.scala 292:27 342:42]
  wire  _GEN_262 = opcode == 7'h63 ? 1'h0 : _GEN_240; // @[src/main/scala/coreGen/core/idu/decoder.scala 293:27 342:42]
  wire  _GEN_263 = opcode == 7'h63 ? 1'h0 : _GEN_241; // @[src/main/scala/coreGen/core/idu/decoder.scala 277:27 342:42]
  wire [1:0] _GEN_264 = opcode == 7'h63 ? 2'h0 : _GEN_242; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 342:42]
  wire [1:0] _GEN_265 = opcode == 7'h63 ? 2'h0 : _GEN_243; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 342:42]
  wire  _GEN_266 = opcode == 7'h63 ? 1'h0 : _GEN_244; // @[src/main/scala/coreGen/core/idu/decoder.scala 268:27 342:42]
  wire  _GEN_267 = opcode == 7'h63 ? 1'h0 : _GEN_245; // @[src/main/scala/coreGen/core/idu/decoder.scala 269:27 342:42]
  wire  _GEN_268 = opcode == 7'h63 ? 1'h0 : _GEN_246; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 342:42]
  wire  _GEN_269 = opcode == 7'h63 ? 1'h0 : _GEN_247; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 342:42]
  wire  _GEN_270 = opcode == 7'h63 ? 1'h0 : _GEN_248; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 342:42]
  wire  _GEN_271 = opcode == 7'h63 ? 1'h0 : _GEN_249; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 342:42]
  wire  _GEN_272 = opcode == 7'h63 ? 1'h0 : _GEN_250; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 342:42]
  wire  _GEN_273 = opcode == 7'h63 ? 1'h0 : _GEN_251; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 342:42]
  wire [1:0] _GEN_274 = opcode == 7'h63 ? 2'h1 : _GEN_252; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 342:42]
  wire  _GEN_277 = opcode == 7'h67 | _GEN_266; // @[src/main/scala/coreGen/core/idu/decoder.scala 325:40 326:26]
  wire  _GEN_278 = opcode == 7'h67 | _GEN_263; // @[src/main/scala/coreGen/core/idu/decoder.scala 325:40]
  wire  _GEN_279 = opcode == 7'h67 ? instr_first_cycle_i : _GEN_267; // @[src/main/scala/coreGen/core/idu/decoder.scala 325:40]
  wire  _GEN_280 = opcode == 7'h67 ? _T_14 : _GEN_256; // @[src/main/scala/coreGen/core/idu/decoder.scala 325:40]
  wire  _GEN_282 = opcode == 7'h67 ? 1'h0 : _T_15; // @[src/main/scala/coreGen/core/idu/decoder.scala 270:27 325:40]
  wire  _GEN_284 = opcode == 7'h67 ? 1'h0 : _GEN_259; // @[src/main/scala/coreGen/core/idu/decoder.scala 294:27 325:40]
  wire  _GEN_285 = opcode == 7'h67 ? 1'h0 : _GEN_260; // @[src/main/scala/coreGen/core/idu/decoder.scala 291:27 325:40]
  wire [1:0] _GEN_286 = opcode == 7'h67 ? 2'h0 : _GEN_261; // @[src/main/scala/coreGen/core/idu/decoder.scala 292:27 325:40]
  wire  _GEN_287 = opcode == 7'h67 ? 1'h0 : _GEN_262; // @[src/main/scala/coreGen/core/idu/decoder.scala 293:27 325:40]
  wire [1:0] _GEN_288 = opcode == 7'h67 ? 2'h0 : _GEN_264; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 325:40]
  wire [1:0] _GEN_289 = opcode == 7'h67 ? 2'h0 : _GEN_265; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 325:40]
  wire  _GEN_291 = opcode == 7'h67 ? 1'h0 : _GEN_268; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 325:40]
  wire  _GEN_292 = opcode == 7'h67 ? 1'h0 : _GEN_269; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 325:40]
  wire  _GEN_293 = opcode == 7'h67 ? 1'h0 : _GEN_270; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 325:40]
  wire  _GEN_294 = opcode == 7'h67 ? 1'h0 : _GEN_271; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 325:40]
  wire  _GEN_295 = opcode == 7'h67 ? 1'h0 : _GEN_272; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 325:40]
  wire  _GEN_296 = opcode == 7'h67 ? 1'h0 : _GEN_273; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 325:40]
  wire [1:0] _GEN_297 = opcode == 7'h67 ? 2'h1 : _GEN_274; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 325:40]
  wire  _GEN_300 = opcode == 7'h6f | _GEN_277; // @[src/main/scala/coreGen/core/idu/decoder.scala 314:31 315:26]
  wire  _GEN_301 = opcode == 7'h6f | _GEN_278; // @[src/main/scala/coreGen/core/idu/decoder.scala 314:31]
  wire  _GEN_302 = opcode == 7'h6f ? instr_first_cycle_i : _GEN_279; // @[src/main/scala/coreGen/core/idu/decoder.scala 314:31]
  wire  _GEN_303 = opcode == 7'h6f ? 1'h0 : _GEN_280; // @[src/main/scala/coreGen/core/idu/decoder.scala 296:27 314:31]
  wire  _GEN_305 = opcode == 7'h6f ? 1'h0 : _GEN_282; // @[src/main/scala/coreGen/core/idu/decoder.scala 270:27 314:31]
  wire  _GEN_307 = opcode == 7'h6f ? 1'h0 : _GEN_284; // @[src/main/scala/coreGen/core/idu/decoder.scala 294:27 314:31]
  wire  _GEN_308 = opcode == 7'h6f ? 1'h0 : _GEN_285; // @[src/main/scala/coreGen/core/idu/decoder.scala 291:27 314:31]
  wire  _GEN_319 = opcode == 7'h6f ? 1'h0 : _GEN_296; // @[src/main/scala/coreGen/core/idu/decoder.scala 287:27 314:31]
  wire  illegal_insn = illegal_c_insn_i | _GEN_303; // @[src/main/scala/coreGen/core/idu/decoder.scala 1105:28 1106:20]
  wire [6:0] opcode_alu = instr_rdata_alu_i[6:0]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1194:39]
  wire  _T_252 = 3'h0 == instr_rdata_alu_i[14:12]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35]
  wire  _T_253 = 3'h1 == instr_rdata_alu_i[14:12]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35]
  wire  _T_254 = 3'h4 == instr_rdata_alu_i[14:12]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35]
  wire  _T_255 = 3'h5 == instr_rdata_alu_i[14:12]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35]
  wire  _T_256 = 3'h6 == instr_rdata_alu_i[14:12]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35]
  wire  _T_257 = 3'h7 == instr_rdata_alu_i[14:12]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35]
  wire [5:0] _GEN_343 = 3'h7 == instr_rdata_alu_i[14:12] ? 6'hb : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1183:24 1242:35 1248:42]
  wire [5:0] _GEN_344 = 3'h6 == instr_rdata_alu_i[14:12] ? 6'h9 : _GEN_343; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35 1247:42]
  wire [5:0] _GEN_345 = 3'h5 == instr_rdata_alu_i[14:12] ? 6'ha : _GEN_344; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35 1246:42]
  wire [5:0] _GEN_346 = 3'h4 == instr_rdata_alu_i[14:12] ? 6'h8 : _GEN_345; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35 1245:42]
  wire [5:0] _GEN_347 = 3'h1 == instr_rdata_alu_i[14:12] ? 6'hd : _GEN_346; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35 1244:42]
  wire [5:0] _GEN_348 = 3'h0 == instr_rdata_alu_i[14:12] ? 6'hc : _GEN_347; // @[src/main/scala/coreGen/core/idu/decoder.scala 1242:35 1243:42]
  wire [1:0] _GEN_350 = instr_first_cycle_i ? 2'h0 : 2'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 1259:36 1261:30 1265:30]
  wire  _GEN_351 = instr_first_cycle_i ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 1259:36 1262:30 1266:30]
  wire [2:0] _GEN_352 = instr_first_cycle_i ? 3'h0 : 3'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 1188:24 1259:36 1268:27]
  wire [5:0] _GEN_353 = instr_first_cycle_i ? _GEN_348 : 6'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1259:36 1269:26]
  wire  _T_260 = ~instr_rdata_alu_i[14]; // @[src/main/scala/coreGen/core/idu/decoder.scala 1280:13]
  wire [2:0] _GEN_354 = ~instr_rdata_alu_i[14] ? 3'h1 : 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1188:24 1280:29 1282:29]
  wire  _T_274 = instr_rdata_alu_i[31:25] == 7'h30; // @[src/main/scala/coreGen/core/idu/decoder.scala 1331:33]
  wire [5:0] _GEN_356 = 5'h5 == instr_rdata_alu_i[24:20] ? 6'h26 : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1183:24 1332:38 1337:46]
  wire [5:0] _GEN_357 = 5'h4 == instr_rdata_alu_i[24:20] ? 6'h25 : _GEN_356; // @[src/main/scala/coreGen/core/idu/decoder.scala 1332:38 1336:46]
  wire [5:0] _GEN_358 = 5'h2 == instr_rdata_alu_i[24:20] ? 6'h24 : _GEN_357; // @[src/main/scala/coreGen/core/idu/decoder.scala 1332:38 1335:46]
  wire [5:0] _GEN_359 = 5'h1 == instr_rdata_alu_i[24:20] ? 6'h23 : _GEN_358; // @[src/main/scala/coreGen/core/idu/decoder.scala 1332:38 1334:46]
  wire [5:0] _GEN_360 = 5'h0 == instr_rdata_alu_i[24:20] ? 6'h22 : _GEN_359; // @[src/main/scala/coreGen/core/idu/decoder.scala 1332:38 1333:46]
  wire  _T_282 = instr_rdata_alu_i[31:25] == 7'h24; // @[src/main/scala/coreGen/core/idu/decoder.scala 1339:39]
  wire  _T_284 = instr_rdata_alu_i[31:25] == 7'h34; // @[src/main/scala/coreGen/core/idu/decoder.scala 1341:39]
  wire  _T_286 = instr_rdata_alu_i[31:25] == 7'h14; // @[src/main/scala/coreGen/core/idu/decoder.scala 1343:39]
  wire [5:0] _GEN_361 = instr_rdata_alu_i[31:25] == 7'h14 ? 6'h21 : 6'h7; // @[src/main/scala/coreGen/core/idu/decoder.scala 1343:56 1344:28 1346:28]
  wire [5:0] _GEN_362 = instr_rdata_alu_i[31:25] == 7'h34 ? 6'h20 : _GEN_361; // @[src/main/scala/coreGen/core/idu/decoder.scala 1341:56 1342:28]
  wire [5:0] _GEN_363 = instr_rdata_alu_i[31:25] == 7'h24 ? 6'h1f : _GEN_362; // @[src/main/scala/coreGen/core/idu/decoder.scala 1339:56 1340:28]
  wire [5:0] _GEN_364 = instr_rdata_alu_i[31:25] == 7'h30 ? _GEN_360 : _GEN_363; // @[src/main/scala/coreGen/core/idu/decoder.scala 1331:50]
  wire [5:0] _GEN_365 = _T_282 ? 6'h2a : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1183:24 1356:{57,73}]
  wire [5:0] _GEN_366 = _T_284 ? 6'h29 : _GEN_365; // @[src/main/scala/coreGen/core/idu/decoder.scala 1355:{57,73}]
  wire [5:0] _GEN_367 = _T_286 ? 6'h28 : _GEN_366; // @[src/main/scala/coreGen/core/idu/decoder.scala 1354:{57,73}]
  wire [5:0] _GEN_368 = _T_274 ? 6'h1b : _GEN_367; // @[src/main/scala/coreGen/core/idu/decoder.scala 1353:{57,73}]
  wire [5:0] _GEN_369 = instr_rdata_alu_i[31:25] == 7'h20 ? 6'h5 : _GEN_368; // @[src/main/scala/coreGen/core/idu/decoder.scala 1352:{57,73}]
  wire [5:0] _GEN_370 = instr_rdata_alu_i[31:25] == 7'h0 ? 6'h6 : _GEN_369; // @[src/main/scala/coreGen/core/idu/decoder.scala 1351:{52,68}]
  wire [5:0] _GEN_371 = _T_255 ? _GEN_370 : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1183:24 1322:32]
  wire [5:0] _GEN_372 = _T_253 ? _GEN_364 : _GEN_371; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32]
  wire [5:0] _GEN_373 = _T_257 ? 6'h4 : _GEN_372; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32 1328:39]
  wire [5:0] _GEN_374 = _T_256 ? 6'h3 : _GEN_373; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32 1327:39]
  wire [5:0] _GEN_375 = _T_254 ? 6'h2 : _GEN_374; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32 1326:39]
  wire [5:0] _GEN_376 = 3'h3 == instr_rdata_alu_i[14:12] ? 6'hf : _GEN_375; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32 1325:39]
  wire [5:0] _GEN_377 = 3'h2 == instr_rdata_alu_i[14:12] ? 6'he : _GEN_376; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32 1324:39]
  wire [5:0] _GEN_378 = _T_252 ? 6'h0 : _GEN_377; // @[src/main/scala/coreGen/core/idu/decoder.scala 1322:32 1323:39]
  wire [9:0] _T_304 = {instr_rdata_alu_i[31:25],instr_rdata_alu_i[14:12]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 1367:20]
  wire [5:0] _GEN_379 = 10'h3f == _T_304 ? 6'h2c : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1183:24 1367:58 1369:50]
  wire [5:0] _GEN_380 = 10'h3d == _T_304 ? 6'h2b : _GEN_379; // @[src/main/scala/coreGen/core/idu/decoder.scala 1367:58 1368:50]
  wire [5:0] _GEN_381 = 10'hf == _T_304 ? 6'h0 : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1183:24 1372:60 1463:30]
  wire [5:0] _GEN_383 = 10'he == _T_304 ? 6'h0 : _GEN_381; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1459:30]
  wire  _GEN_384 = 10'he == _T_304 | 10'hf == _T_304; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1460:30]
  wire [5:0] _GEN_385 = 10'hd == _T_304 ? 6'h0 : _GEN_383; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1455:30]
  wire  _GEN_386 = 10'hd == _T_304 | _GEN_384; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1456:30]
  wire [5:0] _GEN_387 = 10'hc == _T_304 ? 6'h0 : _GEN_385; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1451:30]
  wire  _GEN_388 = 10'hc == _T_304 | _GEN_386; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1452:30]
  wire [5:0] _GEN_389 = 10'hb == _T_304 ? 6'h0 : _GEN_387; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1447:30]
  wire  _GEN_391 = 10'hb == _T_304 ? 1'h0 : _GEN_388; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_392 = 10'ha == _T_304 ? 6'h0 : _GEN_389; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1443:30]
  wire  _GEN_393 = 10'ha == _T_304 | 10'hb == _T_304; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1444:30]
  wire  _GEN_394 = 10'ha == _T_304 ? 1'h0 : _GEN_391; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_395 = 10'h9 == _T_304 ? 6'h0 : _GEN_392; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1439:30]
  wire  _GEN_396 = 10'h9 == _T_304 | _GEN_393; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1440:30]
  wire  _GEN_397 = 10'h9 == _T_304 ? 1'h0 : _GEN_394; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_398 = 10'h8 == _T_304 ? 6'h0 : _GEN_395; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1435:30]
  wire  _GEN_399 = 10'h8 == _T_304 | _GEN_396; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1436:30]
  wire  _GEN_400 = 10'h8 == _T_304 ? 1'h0 : _GEN_397; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_401 = 10'h125 == _T_304 ? 6'h2a : _GEN_398; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1431:50]
  wire  _GEN_402 = 10'h125 == _T_304 ? 1'h0 : _GEN_399; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_403 = 10'h125 == _T_304 ? 1'h0 : _GEN_400; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_404 = 10'ha1 == _T_304 ? 6'h21 : _GEN_401; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1430:50]
  wire  _GEN_405 = 10'ha1 == _T_304 ? 1'h0 : _GEN_402; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_406 = 10'ha1 == _T_304 ? 1'h0 : _GEN_403; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_407 = 10'h1a1 == _T_304 ? 6'h20 : _GEN_404; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1429:50]
  wire  _GEN_408 = 10'h1a1 == _T_304 ? 1'h0 : _GEN_405; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_409 = 10'h1a1 == _T_304 ? 1'h0 : _GEN_406; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_410 = 10'h121 == _T_304 ? 6'h1f : _GEN_407; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1428:50]
  wire  _GEN_411 = 10'h121 == _T_304 ? 1'h0 : _GEN_408; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_412 = 10'h121 == _T_304 ? 1'h0 : _GEN_409; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_413 = 10'h2a == _T_304 ? 6'h1e : _GEN_410; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1426:50]
  wire  _GEN_414 = 10'h2a == _T_304 ? 1'h0 : _GEN_411; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_415 = 10'h2a == _T_304 ? 1'h0 : _GEN_412; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_416 = 10'h2b == _T_304 ? 6'h1d : _GEN_413; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1425:50]
  wire  _GEN_417 = 10'h2b == _T_304 ? 1'h0 : _GEN_414; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_418 = 10'h2b == _T_304 ? 1'h0 : _GEN_415; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_419 = 10'h29 == _T_304 ? 6'h1c : _GEN_416; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1424:50]
  wire  _GEN_420 = 10'h29 == _T_304 ? 1'h0 : _GEN_417; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_421 = 10'h29 == _T_304 ? 1'h0 : _GEN_418; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_422 = 10'h185 == _T_304 ? 6'h1b : _GEN_419; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1422:50]
  wire  _GEN_423 = 10'h185 == _T_304 ? 1'h0 : _GEN_420; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_424 = 10'h185 == _T_304 ? 1'h0 : _GEN_421; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_425 = 10'h181 == _T_304 ? 6'h1a : _GEN_422; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1421:50]
  wire  _GEN_426 = 10'h181 == _T_304 ? 1'h0 : _GEN_423; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_427 = 10'h181 == _T_304 ? 1'h0 : _GEN_424; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_428 = 10'h25 == _T_304 ? 6'h2d : _GEN_425; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1419:50]
  wire  _GEN_429 = 10'h25 == _T_304 ? 1'h0 : _GEN_426; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_430 = 10'h25 == _T_304 ? 1'h0 : _GEN_427; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_431 = 10'h24 == _T_304 ? 6'h27 : _GEN_428; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1418:50]
  wire  _GEN_432 = 10'h24 == _T_304 ? 1'h0 : _GEN_429; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_433 = 10'h24 == _T_304 ? 1'h0 : _GEN_430; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_434 = 10'h2d == _T_304 ? 6'h19 : _GEN_431; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1416:50]
  wire  _GEN_435 = 10'h2d == _T_304 ? 1'h0 : _GEN_432; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_436 = 10'h2d == _T_304 ? 1'h0 : _GEN_433; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_437 = 10'h2c == _T_304 ? 6'h18 : _GEN_434; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1415:50]
  wire  _GEN_438 = 10'h2c == _T_304 ? 1'h0 : _GEN_435; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_439 = 10'h2c == _T_304 ? 1'h0 : _GEN_436; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_440 = 10'h2f == _T_304 ? 6'h17 : _GEN_437; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1414:50]
  wire  _GEN_441 = 10'h2f == _T_304 ? 1'h0 : _GEN_438; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_442 = 10'h2f == _T_304 ? 1'h0 : _GEN_439; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_443 = 10'h2e == _T_304 ? 6'h16 : _GEN_440; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1413:50]
  wire  _GEN_444 = 10'h2e == _T_304 ? 1'h0 : _GEN_441; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_445 = 10'h2e == _T_304 ? 1'h0 : _GEN_442; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_446 = 10'h104 == _T_304 ? 6'h2 : _GEN_443; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1409:30]
  wire  _GEN_447 = 10'h104 == _T_304 ? 1'h0 : _GEN_444; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_448 = 10'h104 == _T_304 ? 1'h0 : _GEN_445; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_449 = 10'h106 == _T_304 ? 6'h3 : _GEN_446; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1405:30]
  wire  _GEN_450 = 10'h106 == _T_304 ? 1'h0 : _GEN_447; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_451 = 10'h106 == _T_304 ? 1'h0 : _GEN_448; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_452 = 10'h107 == _T_304 ? 6'h4 : _GEN_449; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1401:30]
  wire  _GEN_453 = 10'h107 == _T_304 ? 1'h0 : _GEN_450; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_454 = 10'h107 == _T_304 ? 1'h0 : _GEN_451; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_455 = 10'h86 == _T_304 ? 6'h0 : _GEN_452; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1396:30]
  wire  _GEN_456 = 10'h86 == _T_304 ? 1'h0 : _GEN_453; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_457 = 10'h86 == _T_304 ? 1'h0 : _GEN_454; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_458 = 10'h84 == _T_304 ? 6'h0 : _GEN_455; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1392:30]
  wire  _GEN_459 = 10'h84 == _T_304 ? 1'h0 : _GEN_456; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_460 = 10'h84 == _T_304 ? 1'h0 : _GEN_457; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_461 = 10'h82 == _T_304 ? 6'h0 : _GEN_458; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1388:30]
  wire  _GEN_462 = 10'h82 == _T_304 ? 1'h0 : _GEN_459; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_463 = 10'h82 == _T_304 ? 1'h0 : _GEN_460; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_464 = 10'h105 == _T_304 ? 6'h5 : _GEN_461; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1383:50]
  wire  _GEN_465 = 10'h105 == _T_304 ? 1'h0 : _GEN_462; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_466 = 10'h105 == _T_304 ? 1'h0 : _GEN_463; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_467 = 10'h5 == _T_304 ? 6'h6 : _GEN_464; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1382:50]
  wire  _GEN_468 = 10'h5 == _T_304 ? 1'h0 : _GEN_465; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_469 = 10'h5 == _T_304 ? 1'h0 : _GEN_466; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_470 = 10'h1 == _T_304 ? 6'h7 : _GEN_467; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1381:50]
  wire  _GEN_471 = 10'h1 == _T_304 ? 1'h0 : _GEN_468; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_472 = 10'h1 == _T_304 ? 1'h0 : _GEN_469; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_473 = 10'h7 == _T_304 ? 6'h4 : _GEN_470; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1380:50]
  wire  _GEN_474 = 10'h7 == _T_304 ? 1'h0 : _GEN_471; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_475 = 10'h7 == _T_304 ? 1'h0 : _GEN_472; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_476 = 10'h6 == _T_304 ? 6'h3 : _GEN_473; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1379:50]
  wire  _GEN_477 = 10'h6 == _T_304 ? 1'h0 : _GEN_474; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_478 = 10'h6 == _T_304 ? 1'h0 : _GEN_475; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_479 = 10'h4 == _T_304 ? 6'h2 : _GEN_476; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1378:50]
  wire  _GEN_480 = 10'h4 == _T_304 ? 1'h0 : _GEN_477; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_481 = 10'h4 == _T_304 ? 1'h0 : _GEN_478; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_482 = 10'h3 == _T_304 ? 6'hf : _GEN_479; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1377:50]
  wire  _GEN_483 = 10'h3 == _T_304 ? 1'h0 : _GEN_480; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_484 = 10'h3 == _T_304 ? 1'h0 : _GEN_481; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_485 = 10'h2 == _T_304 ? 6'he : _GEN_482; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1376:50]
  wire  _GEN_486 = 10'h2 == _T_304 ? 1'h0 : _GEN_483; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_487 = 10'h2 == _T_304 ? 1'h0 : _GEN_484; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_488 = 10'h100 == _T_304 ? 6'h1 : _GEN_485; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1375:50]
  wire  _GEN_489 = 10'h100 == _T_304 ? 1'h0 : _GEN_486; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_490 = 10'h100 == _T_304 ? 1'h0 : _GEN_487; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_491 = 10'h0 == _T_304 ? 6'h0 : _GEN_488; // @[src/main/scala/coreGen/core/idu/decoder.scala 1372:60 1374:50]
  wire  _GEN_492 = 10'h0 == _T_304 ? 1'h0 : _GEN_489; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1372:60]
  wire  _GEN_493 = 10'h0 == _T_304 ? 1'h0 : _GEN_490; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1372:60]
  wire [5:0] _GEN_494 = instr_rdata_alu_i[26] ? _GEN_380 : _GEN_491; // @[src/main/scala/coreGen/core/idu/decoder.scala 1366:28]
  wire  _GEN_495 = instr_rdata_alu_i[26] ? 1'h0 : _GEN_492; // @[src/main/scala/coreGen/core/idu/decoder.scala 1196:24 1366:28]
  wire  _GEN_496 = instr_rdata_alu_i[26] ? 1'h0 : _GEN_493; // @[src/main/scala/coreGen/core/idu/decoder.scala 1197:24 1366:28]
  wire [2:0] _GEN_503 = _T_253 ? 3'h5 : 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1191:24 1474:33]
  wire [5:0] _GEN_508 = _T_252 ? 6'h0 : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1474:33 1477:30]
  wire [1:0] _GEN_509 = _T_252 ? 2'h0 : 2'h3; // @[src/main/scala/coreGen/core/idu/decoder.scala 1474:33 1478:30]
  wire [2:0] _GEN_512 = _T_252 ? 3'h0 : _GEN_503; // @[src/main/scala/coreGen/core/idu/decoder.scala 1191:24 1474:33]
  wire  _T_355 = instr_rdata_alu_i[14:12] == 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1498:30]
  wire [1:0] _GEN_514 = instr_rdata_alu_i[14] ? 2'h3 : 2'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1508:43 1510:30 1512:30]
  wire [1:0] _GEN_515 = instr_rdata_alu_i[14:12] == 3'h0 ? 2'h0 : _GEN_514; // @[src/main/scala/coreGen/core/idu/decoder.scala 1498:44 1500:28]
  wire [1:0] _GEN_519 = 7'h73 == opcode_alu ? _GEN_515 : 2'h3; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1184:24]
  wire  _GEN_521 = 7'h73 == opcode_alu ? _T_355 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1187:24]
  wire [5:0] _GEN_523 = 7'hf == opcode_alu ? _GEN_508 : 6'hf; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1183:24]
  wire [1:0] _GEN_524 = 7'hf == opcode_alu ? _GEN_509 : _GEN_519; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [2:0] _GEN_527 = 7'hf == opcode_alu ? _GEN_512 : 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire [1:0] _GEN_530 = 7'h33 == opcode_alu ? 2'h0 : _GEN_524; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1363:26]
  wire  _GEN_531 = 7'h33 == opcode_alu ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1364:26]
  wire [5:0] _GEN_532 = 7'h33 == opcode_alu ? _GEN_494 : _GEN_523; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [2:0] _GEN_536 = 7'h33 == opcode_alu ? 3'h0 : _GEN_527; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire [1:0] _GEN_539 = 7'h13 == opcode_alu ? 2'h0 : _GEN_530; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1318:26]
  wire  _GEN_540 = 7'h13 == opcode_alu | _GEN_531; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1319:26]
  wire [5:0] _GEN_542 = 7'h13 == opcode_alu ? _GEN_378 : _GEN_532; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire  _GEN_543 = 7'h13 == opcode_alu ? 1'h0 : 7'h33 == opcode_alu & _GEN_495; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_544 = 7'h13 == opcode_alu ? 1'h0 : 7'h33 == opcode_alu & _GEN_496; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [2:0] _GEN_546 = 7'h13 == opcode_alu ? 3'h0 : _GEN_536; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire [1:0] _GEN_548 = 7'h17 == opcode_alu ? 2'h2 : _GEN_539; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1311:27]
  wire  _GEN_549 = 7'h17 == opcode_alu | _GEN_540; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1312:27]
  wire [2:0] _GEN_550 = 7'h17 == opcode_alu ? 3'h3 : 3'h0; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1313:27]
  wire [5:0] _GEN_551 = 7'h17 == opcode_alu ? 6'h0 : _GEN_542; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1314:27]
  wire  _GEN_552 = 7'h17 == opcode_alu ? 1'h0 : _GEN_543; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_553 = 7'h17 == opcode_alu ? 1'h0 : _GEN_544; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [2:0] _GEN_555 = 7'h17 == opcode_alu ? 3'h0 : _GEN_546; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire  _GEN_556 = 7'h17 == opcode_alu | (7'h13 == opcode_alu | (7'h33 == opcode_alu | (7'hf == opcode_alu | _GEN_521)))
    ; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1187:24]
  wire [1:0] _GEN_557 = 7'h37 == opcode_alu ? 2'h3 : _GEN_548; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1303:27]
  wire  _GEN_558 = 7'h37 == opcode_alu | _GEN_549; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1304:27]
  wire  _GEN_559 = 7'h37 == opcode_alu | _GEN_556; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1305:27]
  wire [2:0] _GEN_560 = 7'h37 == opcode_alu ? 3'h3 : _GEN_550; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1306:27]
  wire [5:0] _GEN_561 = 7'h37 == opcode_alu ? 6'h0 : _GEN_551; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1307:27]
  wire  _GEN_562 = 7'h37 == opcode_alu ? 1'h0 : _GEN_552; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_563 = 7'h37 == opcode_alu ? 1'h0 : _GEN_553; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [2:0] _GEN_565 = 7'h37 == opcode_alu ? 3'h0 : _GEN_555; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire [1:0] _GEN_567 = 7'h3 == opcode_alu ? 2'h0 : _GEN_557; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1292:27]
  wire [5:0] _GEN_568 = 7'h3 == opcode_alu ? 6'h0 : _GEN_561; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1295:27]
  wire  _GEN_569 = 7'h3 == opcode_alu | _GEN_558; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1296:27]
  wire [2:0] _GEN_570 = 7'h3 == opcode_alu ? 3'h0 : _GEN_560; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1297:27]
  wire  _GEN_572 = 7'h3 == opcode_alu ? 1'h0 : _GEN_562; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_573 = 7'h3 == opcode_alu ? 1'h0 : _GEN_563; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [2:0] _GEN_575 = 7'h3 == opcode_alu ? 3'h0 : _GEN_565; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire [1:0] _GEN_576 = 7'h23 == opcode_alu ? 2'h0 : _GEN_567; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1276:26]
  wire  _GEN_577 = 7'h23 == opcode_alu ? _T_260 : _GEN_569; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [5:0] _GEN_578 = 7'h23 == opcode_alu ? 6'h0 : _GEN_568; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1278:26]
  wire [2:0] _GEN_579 = 7'h23 == opcode_alu ? _GEN_354 : _GEN_570; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire  _GEN_582 = 7'h23 == opcode_alu ? 1'h0 : _GEN_572; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_583 = 7'h23 == opcode_alu ? 1'h0 : _GEN_573; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [2:0] _GEN_585 = 7'h23 == opcode_alu ? 3'h0 : _GEN_575; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1191:24]
  wire [5:0] _GEN_586 = 7'h63 == opcode_alu ? _GEN_353 : _GEN_578; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [2:0] _GEN_588 = 7'h63 == opcode_alu ? 3'h2 : _GEN_585; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [1:0] _GEN_589 = 7'h63 == opcode_alu ? _GEN_350 : _GEN_576; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire  _GEN_590 = 7'h63 == opcode_alu ? _GEN_351 : _GEN_577; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [2:0] _GEN_591 = 7'h63 == opcode_alu ? _GEN_352 : _GEN_579; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire  _GEN_594 = 7'h63 == opcode_alu ? 1'h0 : _GEN_582; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_595 = 7'h63 == opcode_alu ? 1'h0 : _GEN_583; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [1:0] _GEN_596 = 7'h67 == opcode_alu ? 2'h0 : 2'h2; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [2:0] _GEN_597 = 7'h67 == opcode_alu ? 3'h0 : _GEN_588; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [1:0] _GEN_598 = 7'h67 == opcode_alu ? 2'h2 : _GEN_589; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [2:0] _GEN_600 = 7'h67 == opcode_alu ? 3'h5 : _GEN_591; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [5:0] _GEN_601 = 7'h67 == opcode_alu ? 6'h0 : _GEN_586; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire  _GEN_604 = 7'h67 == opcode_alu ? 1'h0 : _GEN_594; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  wire  _GEN_605 = 7'h67 == opcode_alu ? 1'h0 : _GEN_595; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  wire [1:0] _GEN_606 = 7'h6f == opcode_alu ? 2'h2 : _GEN_596; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire [1:0] _GEN_608 = 7'h6f == opcode_alu ? 2'h2 : _GEN_598; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  wire  _GEN_609 = 7'h6f == opcode_alu | (7'h67 == opcode_alu | _GEN_590); // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  assign illegal_insn_o = illegal_c_insn_i | _GEN_303; // @[src/main/scala/coreGen/core/idu/decoder.scala 1105:28 1106:20]
  assign ebrk_insn_o = opcode == 7'h6f ? 1'h0 : _GEN_292; // @[src/main/scala/coreGen/core/idu/decoder.scala 297:27 314:31]
  assign mret_insn_o = opcode == 7'h6f ? 1'h0 : _GEN_293; // @[src/main/scala/coreGen/core/idu/decoder.scala 298:27 314:31]
  assign dret_insn_o = opcode == 7'h6f ? 1'h0 : _GEN_294; // @[src/main/scala/coreGen/core/idu/decoder.scala 299:27 314:31]
  assign ecall_insn_o = opcode == 7'h6f ? 1'h0 : _GEN_291; // @[src/main/scala/coreGen/core/idu/decoder.scala 300:27 314:31]
  assign wfi_insn_o = opcode == 7'h6f ? 1'h0 : _GEN_295; // @[src/main/scala/coreGen/core/idu/decoder.scala 301:27 314:31]
  assign jump_set_o = illegal_insn ? 1'h0 : _GEN_302; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1126:20]
  assign imm_a_mux_sel_o = 7'h6f == opcode_alu | (7'h67 == opcode_alu | (7'h63 == opcode_alu | (7'h23 == opcode_alu | (7'h3
     == opcode_alu | _GEN_559)))); // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1187:24]
  assign imm_b_mux_sel_o = 7'h6f == opcode_alu ? 3'h5 : _GEN_600; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  assign bt_a_mux_sel_o = {{1'd0}, _GEN_606};
  assign bt_b_mux_sel_o = 7'h6f == opcode_alu ? 3'h4 : _GEN_597; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  assign imm_i_type_o = {_imm_i_type_o_T_2,instr_rdata_i[31:20]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 212:25]
  assign imm_s_type_o = {imm_s_type_o_hi,instr_rdata_i[11:7]}; // @[src/main/scala/coreGen/core/idu/decoder.scala 213:25]
  assign imm_b_type_o = {imm_b_type_o_hi,imm_b_type_o_lo}; // @[src/main/scala/coreGen/core/idu/decoder.scala 214:25]
  assign imm_u_type_o = {instr_rdata_i[31:12],12'h0}; // @[src/main/scala/coreGen/core/idu/decoder.scala 215:25]
  assign imm_j_type_o = {imm_j_type_o_hi,imm_j_type_o_lo}; // @[src/main/scala/coreGen/core/idu/decoder.scala 216:25]
  assign zimm_rs1_type_o = {27'h0,instr_rs1}; // @[src/main/scala/coreGen/core/idu/decoder.scala 219:27]
  assign rf_wdata_sel_o = opcode == 7'h6f ? 2'h1 : _GEN_297; // @[src/main/scala/coreGen/core/idu/decoder.scala 276:27 314:31]
  assign rf_we_o = illegal_insn ? 1'h0 : _GEN_301; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1122:15]
  assign rf_raddr_a_o = instr_rdata_i[19:15]; // @[src/main/scala/coreGen/core/idu/decoder.scala 222:25]
  assign rf_raddr_b_o = instr_rdata_i[24:20]; // @[src/main/scala/coreGen/core/idu/decoder.scala 223:25]
  assign rf_waddr_o = instr_rdata_i[11:7]; // @[src/main/scala/coreGen/core/idu/decoder.scala 248:25]
  assign alu_operator_o = 7'h6f == opcode_alu ? 6'h0 : _GEN_601; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23]
  assign alu_op_a_mux_sel_o = {{1'd0}, _GEN_608};
  assign alu_op_b_mux_sel_o = {{1'd0}, _GEN_609};
  assign mult_en_o = illegal_insn ? 1'h0 : mult_sel_o; // @[src/main/scala/coreGen/core/idu/decoder.scala 2024:21]
  assign div_en_o = illegal_insn ? 1'h0 : div_sel_o; // @[src/main/scala/coreGen/core/idu/decoder.scala 2025:21]
  assign mult_sel_o = 7'h6f == opcode_alu ? 1'h0 : _GEN_604; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1196:24]
  assign div_sel_o = 7'h6f == opcode_alu ? 1'h0 : _GEN_605; // @[src/main/scala/coreGen/core/idu/decoder.scala 1203:23 1197:24]
  assign multdiv_operator_o = opcode == 7'h6f ? 2'h0 : _GEN_288; // @[src/main/scala/coreGen/core/idu/decoder.scala 273:27 314:31]
  assign multdiv_signed_mode_o = opcode == 7'h6f ? 2'h0 : _GEN_289; // @[src/main/scala/coreGen/core/idu/decoder.scala 274:27 314:31]
  assign csr_access_o = illegal_insn ? 1'h0 : _GEN_319; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1128:22]
  assign csr_op_o = (csr_op == 2'h2 | csr_op == 2'h3) & instr_rs1 == 5'h0 ? 2'h0 : csr_op; // @[src/main/scala/coreGen/core/idu/decoder.scala 261:14 263:88 264:14]
  assign data_req_o = illegal_insn ? 1'h0 : _GEN_307; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1123:20]
  assign data_we_o = illegal_insn ? 1'h0 : _GEN_308; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1124:19]
  assign data_type_o = opcode == 7'h6f ? 2'h0 : _GEN_286; // @[src/main/scala/coreGen/core/idu/decoder.scala 292:27 314:31]
  assign data_sign_extension_o = opcode == 7'h6f ? 1'h0 : _GEN_287; // @[src/main/scala/coreGen/core/idu/decoder.scala 293:27 314:31]
  assign jump_in_dec_o = illegal_insn ? 1'h0 : _GEN_300; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1125:23]
  assign branch_in_dec_o = illegal_insn ? 1'h0 : _GEN_305; // @[src/main/scala/coreGen/core/idu/decoder.scala 1121:26 1127:25]
endmodule
module chiselcontroller(
  input         clk_i, // @[src/main/scala/coreGen/core/idu/controller.scala 29:23]
  input         rst_ni, // @[src/main/scala/coreGen/core/idu/controller.scala 30:23]
  output        ctrl_busy_o, // @[src/main/scala/coreGen/core/idu/controller.scala 51:25]
  input         illegal_insn_i, // @[src/main/scala/coreGen/core/idu/controller.scala 54:28]
  input         ecall_insn_i, // @[src/main/scala/coreGen/core/idu/controller.scala 55:26]
  input         mret_insn_i, // @[src/main/scala/coreGen/core/idu/controller.scala 56:25]
  input         dret_insn_i, // @[src/main/scala/coreGen/core/idu/controller.scala 57:25]
  input         wfi_insn_i, // @[src/main/scala/coreGen/core/idu/controller.scala 58:24]
  input         ebrk_insn_i, // @[src/main/scala/coreGen/core/idu/controller.scala 59:25]
  input         csr_pipe_flush_i, // @[src/main/scala/coreGen/core/idu/controller.scala 60:30]
  input         instr_valid_i, // @[src/main/scala/coreGen/core/idu/controller.scala 64:27]
  input  [31:0] instr_i, // @[src/main/scala/coreGen/core/idu/controller.scala 65:21]
  input  [15:0] instr_compressed_i, // @[src/main/scala/coreGen/core/idu/controller.scala 66:32]
  input         instr_is_compressed_i, // @[src/main/scala/coreGen/core/idu/controller.scala 67:35]
  input         instr_fetch_err_i, // @[src/main/scala/coreGen/core/idu/controller.scala 69:31]
  input         instr_fetch_err_plus2_i, // @[src/main/scala/coreGen/core/idu/controller.scala 70:37]
  input  [31:0] pc_id_i, // @[src/main/scala/coreGen/core/idu/controller.scala 71:21]
  output        instr_valid_clear_o, // @[src/main/scala/coreGen/core/idu/controller.scala 74:33]
  output        id_in_ready_o, // @[src/main/scala/coreGen/core/idu/controller.scala 75:27]
  output        controller_run_o, // @[src/main/scala/coreGen/core/idu/controller.scala 76:30]
  output        instr_req_o, // @[src/main/scala/coreGen/core/idu/controller.scala 79:25]
  output        pc_set_o, // @[src/main/scala/coreGen/core/idu/controller.scala 80:22]
  output        pc_set_spec_o, // @[src/main/scala/coreGen/core/idu/controller.scala 81:27]
  output [2:0]  pc_mux_o, // @[src/main/scala/coreGen/core/idu/controller.scala 82:22]
  output [2:0]  exc_pc_mux_o, // @[src/main/scala/coreGen/core/idu/controller.scala 84:26]
  output [5:0]  exc_cause_o, // @[src/main/scala/coreGen/core/idu/controller.scala 85:25]
  input  [31:0] lsu_addr_last_i, // @[src/main/scala/coreGen/core/idu/controller.scala 88:29]
  input         load_err_i, // @[src/main/scala/coreGen/core/idu/controller.scala 89:24]
  input         store_err_i, // @[src/main/scala/coreGen/core/idu/controller.scala 90:25]
  input         branch_set_i, // @[src/main/scala/coreGen/core/idu/controller.scala 94:26]
  input         branch_set_spec_i, // @[src/main/scala/coreGen/core/idu/controller.scala 95:31]
  input         jump_set_i, // @[src/main/scala/coreGen/core/idu/controller.scala 97:24]
  output        disable_branch_o, // @[src/main/scala/coreGen/core/idu/controller.scala 100:30]
  input         csr_mstatus_mie_i, // @[src/main/scala/coreGen/core/idu/controller.scala 103:31]
  input         irq_pending_i, // @[src/main/scala/coreGen/core/idu/controller.scala 104:27]
  input         irqs_i_timer, // @[src/main/scala/coreGen/core/idu/controller.scala 105:20]
  input         irqs_i_software, // @[src/main/scala/coreGen/core/idu/controller.scala 105:20]
  input         irqs_i_external, // @[src/main/scala/coreGen/core/idu/controller.scala 105:20]
  input         irqs_i_nmi, // @[src/main/scala/coreGen/core/idu/controller.scala 105:20]
  output        nmi_mode_o, // @[src/main/scala/coreGen/core/idu/controller.scala 107:24]
  output        debug_mode_o, // @[src/main/scala/coreGen/core/idu/controller.scala 114:26]
  output        csr_save_if_o, // @[src/main/scala/coreGen/core/idu/controller.scala 121:27]
  output        csr_restore_mret_id_o, // @[src/main/scala/coreGen/core/idu/controller.scala 124:35]
  output        csr_restore_dret_id_o, // @[src/main/scala/coreGen/core/idu/controller.scala 125:35]
  output        csr_save_cause_o, // @[src/main/scala/coreGen/core/idu/controller.scala 126:30]
  output [31:0] csr_mtval_o, // @[src/main/scala/coreGen/core/idu/controller.scala 127:25]
  input  [1:0]  priv_mode_i, // @[src/main/scala/coreGen/core/idu/controller.scala 128:25]
  input         csr_mstatus_tw_i, // @[src/main/scala/coreGen/core/idu/controller.scala 129:30]
  input         stall_id_i, // @[src/main/scala/coreGen/core/idu/controller.scala 132:24]
  output        flush_id_o, // @[src/main/scala/coreGen/core/idu/controller.scala 135:24]
  input         csr_mpvec_mode, // @[src/main/scala/coreGen/core/idu/controller.scala 142:23]
  input         instr_fetch_valid_i, // @[src/main/scala/coreGen/core/idu/controller.scala 148:33]
  output        lsu_err_clean_data_flag_o // @[src/main/scala/coreGen/core/idu/controller.scala 150:39]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  _T_1 = ~rst_ni; // @[src/main/scala/coreGen/core/idu/controller.scala 153:40]
  reg [3:0] ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 155:30]
  reg  nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 157:29]
  reg  debug_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 159:31]
  reg  load_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 161:29]
  reg  store_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 163:30]
  reg  exc_req_q; // @[src/main/scala/coreGen/core/idu/controller.scala 165:28]
  reg  illegal_insn_q; // @[src/main/scala/coreGen/core/idu/controller.scala 168:33]
  reg  flush_state_hold_q; // @[src/main/scala/coreGen/core/idu/controller.scala 249:37]
  wire  _handle_irq_T = ~debug_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 427:21]
  wire  _handle_irq_T_1 = ~nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 427:38]
  wire  _handle_irq_T_4 = irqs_i_nmi | irq_pending_i & csr_mstatus_mie_i; // @[src/main/scala/coreGen/core/idu/controller.scala 428:27]
  wire  handle_irq = ~debug_mode_q & ~nmi_mode_q & _handle_irq_T_4; // @[src/main/scala/coreGen/core/idu/controller.scala 427:50]
  wire  ecall_insn = ecall_insn_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 267:36]
  wire  mret_insn = mret_insn_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 268:35]
  wire  dret_insn = dret_insn_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 269:35]
  wire  wfi_insn = wfi_insn_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 270:34]
  wire  ebrk_insn = ebrk_insn_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 271:35]
  wire  csr_pipe_flush = csr_pipe_flush_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 272:40]
  wire  instr_fetch_err = instr_fetch_err_i & instr_valid_i; // @[src/main/scala/coreGen/core/idu/controller.scala 273:41]
  wire  illegal_dret = dret_insn & _handle_irq_T; // @[src/main/scala/coreGen/core/idu/controller.scala 275:31]
  wire  _illegal_umode_T_2 = mret_insn | csr_mstatus_tw_i & wfi_insn; // @[src/main/scala/coreGen/core/idu/controller.scala 278:34]
  wire  illegal_umode = priv_mode_i != 2'h3 & _illegal_umode_T_2; // @[src/main/scala/coreGen/core/idu/controller.scala 277:51]
  wire  _illegal_insn_d_T_2 = ctrl_fsm_cs != 4'h6; // @[src/main/scala/coreGen/core/idu/controller.scala 280:89]
  wire  illegal_insn_d = (illegal_insn_i | illegal_dret | illegal_umode) & ctrl_fsm_cs != 4'h6; // @[src/main/scala/coreGen/core/idu/controller.scala 280:73]
  wire  _exc_req_d_T_1 = ecall_insn | ebrk_insn | illegal_insn_d; // @[src/main/scala/coreGen/core/idu/controller.scala 288:50]
  wire  _exc_req_d_T_4 = _exc_req_d_T_1 | instr_fetch_err; // @[src/main/scala/coreGen/core/idu/controller.scala 289:64]
  wire  exc_req_d = _exc_req_d_T_4 & _illegal_insn_d_T_2; // @[src/main/scala/coreGen/core/idu/controller.scala 290:48]
  wire  _T_12 = instr_fetch_valid_i & id_in_ready_o; // @[src/main/scala/coreGen/core/idu/controller.scala 295:49]
  wire  _T_13 = ~(instr_fetch_valid_i & id_in_ready_o); // @[src/main/scala/coreGen/core/idu/controller.scala 295:27]
  wire  _T_17 = load_err_i | store_err_i; // @[src/main/scala/coreGen/core/idu/controller.scala 303:28]
  wire  exc_q = exc_req_q | store_err_q | load_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 719:43]
  wire  _GEN_268 = 4'h9 == ctrl_fsm_cs ? 1'h0 : 4'h6 == ctrl_fsm_cs & exc_q; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_289 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_268; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_312 = 4'h7 == ctrl_fsm_cs ? 1'h0 : _GEN_289; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_341 = 4'h5 == ctrl_fsm_cs ? 1'h0 : _GEN_312; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_370 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_341; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_401 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_370; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_432 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_401; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  _GEN_463 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_432; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  wire  update_err = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_463; // @[src/main/scala/coreGen/core/idu/controller.scala 475:16 481:23]
  reg  lsu_err_clean_data_flag_q; // @[src/main/scala/coreGen/core/idu/controller.scala 306:44]
  wire  _GEN_8 = lsu_err_clean_data_flag_q & _T_12 ? 1'h0 : lsu_err_clean_data_flag_q; // @[src/main/scala/coreGen/core/idu/controller.scala 309:82 310:33 306:44]
  wire  exc_req_lsu = store_err_i | load_err_i | load_err_q | store_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 316:63]
  wire  _special_req_all_T = mret_insn | dret_insn; // @[src/main/scala/coreGen/core/idu/controller.scala 322:36]
  wire  special_req_all = mret_insn | dret_insn | wfi_insn | csr_pipe_flush | exc_req_d | exc_req_lsu; // @[src/main/scala/coreGen/core/idu/controller.scala 322:92]
  wire  special_req_branch = instr_fetch_err & _illegal_insn_d_T_2; // @[src/main/scala/coreGen/core/idu/controller.scala 330:43]
  wire  _GEN_12 = ecall_insn ? 1'h0 : ebrk_insn; // @[src/main/scala/coreGen/core/idu/controller.scala 340:28 369:31]
  wire  _GEN_36 = illegal_insn_q ? 1'h0 : ecall_insn; // @[src/main/scala/coreGen/core/idu/controller.scala 339:28 355:35]
  wire  _GEN_37 = illegal_insn_q ? 1'h0 : _GEN_12; // @[src/main/scala/coreGen/core/idu/controller.scala 340:28 355:35]
  wire  illegal_insn_prio = instr_fetch_err ? 1'h0 : illegal_insn_q; // @[src/main/scala/coreGen/core/idu/controller.scala 334:28 353:36]
  wire  _GEN_44 = instr_fetch_err ? 1'h0 : _GEN_36; // @[src/main/scala/coreGen/core/idu/controller.scala 339:28 353:36]
  wire  _GEN_45 = instr_fetch_err ? 1'h0 : _GEN_37; // @[src/main/scala/coreGen/core/idu/controller.scala 340:28 353:36]
  wire  _GEN_56 = store_err_q ? 1'h0 : load_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 349:25 342:28]
  wire  _GEN_65 = ebrk_insn ? 1'h0 : store_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 395:28 408:30]
  wire  _GEN_66 = ebrk_insn ? 1'h0 : _GEN_56; // @[src/main/scala/coreGen/core/idu/controller.scala 396:28 408:30]
  wire  _GEN_67 = ecall_insn ? 1'h0 : _GEN_65; // @[src/main/scala/coreGen/core/idu/controller.scala 395:28 406:31]
  wire  _GEN_68 = ecall_insn ? 1'h0 : _GEN_66; // @[src/main/scala/coreGen/core/idu/controller.scala 396:28 406:31]
  wire  _GEN_82 = illegal_insn_q ? 1'h0 : _GEN_67; // @[src/main/scala/coreGen/core/idu/controller.scala 395:28 400:35]
  wire  _GEN_83 = illegal_insn_q ? 1'h0 : _GEN_68; // @[src/main/scala/coreGen/core/idu/controller.scala 396:28 400:35]
  wire  store_err_prio = instr_fetch_err ? 1'h0 : _GEN_82; // @[src/main/scala/coreGen/core/idu/controller.scala 395:28 398:29]
  wire  load_err_prio = instr_fetch_err ? 1'h0 : _GEN_83; // @[src/main/scala/coreGen/core/idu/controller.scala 396:28 398:29]
  wire  _ebreak_into_debug_T = priv_mode_i == 2'h3; // @[src/main/scala/coreGen/core/idu/controller.scala 423:42]
  wire  _T_34 = irqs_i_nmi | irq_pending_i | debug_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 509:61]
  wire [3:0] _GEN_100 = irqs_i_nmi | irq_pending_i | debug_mode_q ? 4'h4 : ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 509:120 453:17 510:23]
  wire [3:0] _GEN_102 = id_in_ready_o ? 4'h5 : ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 453:17 525:26 526:21]
  wire [3:0] _GEN_103 = handle_irq ? 4'h7 : _GEN_102; // @[src/main/scala/coreGen/core/idu/controller.scala 529:23 530:21]
  wire [3:0] _GEN_109 = special_req_all ? 4'h6 : ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 453:17 556:42]
  wire  _T_42 = ~special_req_branch; // @[src/main/scala/coreGen/core/idu/controller.scala 562:12]
  wire  _T_43 = branch_set_i | jump_set_i; // @[src/main/scala/coreGen/core/idu/controller.scala 563:25]
  wire  _GEN_115 = ~special_req_branch & _T_43; // @[src/main/scala/coreGen/core/idu/controller.scala 446:14 562:32]
  wire  _T_47 = (branch_set_spec_i | jump_set_i) & _T_42; // @[src/main/scala/coreGen/core/idu/controller.scala 576:46]
  wire  _T_49 = handle_irq & stall_id_i; // @[src/main/scala/coreGen/core/idu/controller.scala 579:45]
  wire  _T_50 = ~stall_id_i; // @[src/main/scala/coreGen/core/idu/controller.scala 583:12]
  wire [3:0] _GEN_121 = handle_irq ? 4'h7 : _GEN_109; // @[src/main/scala/coreGen/core/idu/controller.scala 587:31 588:23]
  wire  _GEN_122 = handle_irq | _T_49; // @[src/main/scala/coreGen/core/idu/controller.scala 587:31 589:19]
  wire [3:0] _GEN_125 = ~stall_id_i & ~special_req_all ? _GEN_121 : _GEN_109; // @[src/main/scala/coreGen/core/idu/controller.scala 583:39]
  wire  _GEN_126 = ~stall_id_i & ~special_req_all ? _GEN_122 : _T_49; // @[src/main/scala/coreGen/core/idu/controller.scala 583:39]
  wire [2:0] _exc_pc_mux_o_T = csr_mpvec_mode ? 3'h2 : 3'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 629:34]
  wire [5:0] _GEN_127 = irqs_i_timer ? 6'h27 : 6'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 634:36 635:25 637:25]
  wire [5:0] _GEN_128 = irqs_i_software ? 6'h23 : _GEN_127; // @[src/main/scala/coreGen/core/idu/controller.scala 632:39 633:25]
  wire [2:0] _GEN_129 = irqs_i_external ? _exc_pc_mux_o_T : 3'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 595:20 627:39 629:28]
  wire [5:0] _GEN_130 = irqs_i_external ? 6'h2b : _GEN_128; // @[src/main/scala/coreGen/core/idu/controller.scala 627:39 631:25]
  wire [5:0] _GEN_131 = irqs_i_nmi & _handle_irq_T_1 ? 6'h2f : _GEN_130; // @[src/main/scala/coreGen/core/idu/controller.scala 624:46 625:25]
  wire  _GEN_132 = irqs_i_nmi & _handle_irq_T_1 | nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 624:46 626:24]
  wire [2:0] _GEN_133 = irqs_i_nmi & _handle_irq_T_1 ? 3'h1 : _GEN_129; // @[src/main/scala/coreGen/core/idu/controller.scala 595:20 624:46]
  wire [5:0] _GEN_134 = handle_irq ? _GEN_131 : 6'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 597:23]
  wire  _GEN_135 = handle_irq ? _GEN_132 : nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 597:23]
  wire [2:0] _GEN_136 = handle_irq ? _GEN_133 : 3'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 595:20 597:23]
  wire [2:0] _exc_pc_mux_o_T_1 = debug_mode_q ? 3'h4 : 3'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 725:28]
  wire [31:0] _csr_mtval_o_T_1 = pc_id_i + 32'h2; // @[src/main/scala/coreGen/core/idu/controller.scala 746:64]
  wire [31:0] _csr_mtval_o_T_2 = instr_fetch_err_plus2_i ? _csr_mtval_o_T_1 : pc_id_i; // @[src/main/scala/coreGen/core/idu/controller.scala 746:29]
  wire [31:0] _csr_mtval_o_T_3 = {16'h0,instr_compressed_i}; // @[src/main/scala/coreGen/core/idu/controller.scala 750:56]
  wire [31:0] _csr_mtval_o_T_4 = instr_is_compressed_i ? _csr_mtval_o_T_3 : instr_i; // @[src/main/scala/coreGen/core/idu/controller.scala 750:29]
  wire [5:0] _exc_cause_o_T_1 = _ebreak_into_debug_T ? 6'hb : 6'h8; // @[src/main/scala/coreGen/core/idu/controller.scala 776:29]
  wire  _GEN_147 = debug_mode_q ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 722:18 779:51 780:22]
  wire [3:0] _GEN_149 = debug_mode_q ? 4'h9 : 4'h5; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 779:51 784:25]
  wire [5:0] _GEN_150 = debug_mode_q ? 6'h0 : 6'h3; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 779:51 787:25]
  wire [5:0] _GEN_151 = load_err_prio ? 6'h5 : 6'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 794:45 795:23]
  wire [31:0] _GEN_152 = load_err_prio ? lsu_addr_last_i : 32'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 794:45 796:23]
  wire [5:0] _GEN_153 = store_err_prio ? 6'h7 : _GEN_151; // @[src/main/scala/coreGen/core/idu/controller.scala 790:46 791:23]
  wire [31:0] _GEN_154 = store_err_prio ? lsu_addr_last_i : _GEN_152; // @[src/main/scala/coreGen/core/idu/controller.scala 790:46 792:23]
  wire  _GEN_155 = _GEN_45 ? _GEN_147 : 1'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 722:18 778:46]
  wire [3:0] _GEN_157 = _GEN_45 ? _GEN_149 : 4'h5; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 778:46]
  wire [5:0] _GEN_158 = _GEN_45 ? _GEN_150 : _GEN_153; // @[src/main/scala/coreGen/core/idu/controller.scala 778:46]
  wire [31:0] _GEN_159 = _GEN_45 ? 32'h0 : _GEN_154; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 778:46]
  wire [5:0] _GEN_160 = _GEN_44 ? _exc_cause_o_T_1 : _GEN_158; // @[src/main/scala/coreGen/core/idu/controller.scala 775:47 776:23]
  wire  _GEN_161 = _GEN_44 | _GEN_155; // @[src/main/scala/coreGen/core/idu/controller.scala 722:18 775:47]
  wire [3:0] _GEN_163 = _GEN_44 ? 4'h5 : _GEN_157; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 775:47]
  wire [31:0] _GEN_164 = _GEN_44 ? 32'h0 : _GEN_159; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 775:47]
  wire [5:0] _GEN_192 = illegal_insn_prio ? 6'h2 : _GEN_160; // @[src/main/scala/coreGen/core/idu/controller.scala 748:49 749:23]
  wire [31:0] _GEN_193 = illegal_insn_prio ? _csr_mtval_o_T_4 : _GEN_164; // @[src/main/scala/coreGen/core/idu/controller.scala 748:49 750:23]
  wire  _GEN_196 = illegal_insn_prio | _GEN_161; // @[src/main/scala/coreGen/core/idu/controller.scala 722:18 748:49]
  wire [3:0] _GEN_198 = illegal_insn_prio ? 4'h5 : _GEN_163; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 748:49]
  wire [5:0] _GEN_199 = instr_fetch_err ? 6'h1 : _GEN_192; // @[src/main/scala/coreGen/core/idu/controller.scala 744:47 745:23]
  wire [31:0] _GEN_200 = instr_fetch_err ? _csr_mtval_o_T_2 : _GEN_193; // @[src/main/scala/coreGen/core/idu/controller.scala 744:47 746:23]
  wire  _GEN_203 = instr_fetch_err | _GEN_196; // @[src/main/scala/coreGen/core/idu/controller.scala 722:18 744:47]
  wire [3:0] _GEN_205 = instr_fetch_err ? 4'h5 : _GEN_198; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 744:47]
  wire  _GEN_206 = nmi_mode_q ? 1'h0 : nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 806:28 807:24]
  wire [3:0] _GEN_207 = csr_pipe_flush & handle_irq ? 4'h7 : 4'h5; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 817:50 818:23]
  wire [3:0] _GEN_208 = wfi_insn ? 4'h2 : _GEN_207; // @[src/main/scala/coreGen/core/idu/controller.scala 815:31 816:23]
  wire [2:0] _GEN_209 = dret_insn ? 3'h4 : 3'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 445:14 809:32 810:20]
  wire  _GEN_211 = dret_insn ? 1'h0 : debug_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 809:32 813:24]
  wire [3:0] _GEN_212 = dret_insn ? 4'h5 : _GEN_208; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 809:32]
  wire [2:0] _GEN_213 = mret_insn ? 3'h3 : _GEN_209; // @[src/main/scala/coreGen/core/idu/controller.scala 800:25 801:20]
  wire  _GEN_216 = mret_insn ? _GEN_206 : nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 800:25]
  wire  _GEN_217 = mret_insn ? debug_mode_q : _GEN_211; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 800:25]
  wire  _GEN_218 = mret_insn ? 1'h0 : dret_insn; // @[src/main/scala/coreGen/core/idu/controller.scala 800:25 441:27]
  wire [3:0] _GEN_219 = mret_insn ? 4'h5 : _GEN_212; // @[src/main/scala/coreGen/core/idu/controller.scala 713:19 800:25]
  wire  _GEN_220 = exc_q ? _GEN_203 : _special_req_all_T; // @[src/main/scala/coreGen/core/idu/controller.scala 721:19]
  wire [2:0] _GEN_221 = exc_q ? 3'h2 : _GEN_213; // @[src/main/scala/coreGen/core/idu/controller.scala 721:19 724:18]
  wire [2:0] _GEN_222 = exc_q ? _exc_pc_mux_o_T_1 : 3'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 721:19 725:22]
  wire  _GEN_226 = exc_q & _GEN_203; // @[src/main/scala/coreGen/core/idu/controller.scala 721:19 442:22]
  wire [5:0] _GEN_227 = exc_q ? _GEN_199 : 6'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 721:19]
  wire [31:0] _GEN_228 = exc_q ? _GEN_200 : 32'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 721:19]
  wire [3:0] _GEN_231 = exc_q ? _GEN_205 : _GEN_219; // @[src/main/scala/coreGen/core/idu/controller.scala 721:19]
  wire  _GEN_232 = exc_q ? _GEN_203 : 1'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 712:16 721:19]
  wire  _GEN_233 = exc_q ? 1'h0 : mret_insn; // @[src/main/scala/coreGen/core/idu/controller.scala 721:19 440:27]
  wire  _GEN_234 = exc_q ? nmi_mode_q : _GEN_216; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 721:19]
  wire  _GEN_235 = exc_q ? debug_mode_q : _GEN_217; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 721:19]
  wire  _GEN_236 = exc_q ? 1'h0 : _GEN_218; // @[src/main/scala/coreGen/core/idu/controller.scala 721:19 441:27]
  wire  _GEN_240 = 4'h6 == ctrl_fsm_cs & _GEN_232; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  wire [3:0] _GEN_241 = 4'h6 == ctrl_fsm_cs ? _GEN_231 : ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 453:17 481:23]
  wire  _GEN_242 = 4'h6 == ctrl_fsm_cs & _GEN_220; // @[src/main/scala/coreGen/core/idu/controller.scala 446:14 481:23]
  wire [2:0] _GEN_243 = 4'h6 == ctrl_fsm_cs ? _GEN_221 : 3'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 445:14 481:23]
  wire [2:0] _GEN_244 = 4'h6 == ctrl_fsm_cs ? _GEN_222 : 3'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  wire  _GEN_248 = 4'h6 == ctrl_fsm_cs & _GEN_226; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  wire [5:0] _GEN_249 = 4'h6 == ctrl_fsm_cs ? _GEN_227 : 6'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire [31:0] _GEN_250 = 4'h6 == ctrl_fsm_cs ? _GEN_228 : 32'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_254 = 4'h6 == ctrl_fsm_cs ? _GEN_234 : nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 481:23]
  wire  _GEN_255 = 4'h6 == ctrl_fsm_cs ? _GEN_235 : debug_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 481:23]
  wire  _GEN_257 = 4'h9 == ctrl_fsm_cs | _GEN_240; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 686:16]
  wire [2:0] _GEN_258 = 4'h9 == ctrl_fsm_cs ? 3'h2 : _GEN_243; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 687:16]
  wire  _GEN_259 = 4'h9 == ctrl_fsm_cs | _GEN_242; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 688:16]
  wire [2:0] _GEN_260 = 4'h9 == ctrl_fsm_cs ? 3'h3 : _GEN_244; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 690:20]
  wire  _GEN_261 = 4'h9 == ctrl_fsm_cs ? 1'h0 : _GEN_248; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_265 = 4'h9 == ctrl_fsm_cs | _GEN_255; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 705:20]
  wire [3:0] _GEN_266 = 4'h9 == ctrl_fsm_cs ? 4'h5 : _GEN_241; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 707:20]
  wire  _GEN_267 = 4'h9 == ctrl_fsm_cs ? 1'h0 : 4'h6 == ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 456:13 481:23]
  wire [5:0] _GEN_270 = 4'h9 == ctrl_fsm_cs ? 6'h0 : _GEN_249; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire [31:0] _GEN_271 = 4'h9 == ctrl_fsm_cs ? 32'h0 : _GEN_250; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_274 = 4'h9 == ctrl_fsm_cs ? 1'h0 : 4'h6 == ctrl_fsm_cs & _GEN_233; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_275 = 4'h9 == ctrl_fsm_cs ? nmi_mode_q : _GEN_254; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 481:23]
  wire  _GEN_276 = 4'h9 == ctrl_fsm_cs ? 1'h0 : 4'h6 == ctrl_fsm_cs & _GEN_236; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire [2:0] _GEN_277 = 4'h8 == ctrl_fsm_cs ? 3'h2 : _GEN_258; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 659:16]
  wire [2:0] _GEN_278 = 4'h8 == ctrl_fsm_cs ? 3'h3 : _GEN_260; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 660:20]
  wire  _GEN_279 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_257; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_280 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_259; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_283 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_261; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_285 = 4'h8 == ctrl_fsm_cs ? debug_mode_q : _GEN_265; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire [3:0] _GEN_286 = 4'h8 == ctrl_fsm_cs ? 4'h5 : _GEN_266; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 682:19]
  wire  _GEN_288 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_267; // @[src/main/scala/coreGen/core/idu/controller.scala 456:13 481:23]
  wire [5:0] _GEN_291 = 4'h8 == ctrl_fsm_cs ? 6'h0 : _GEN_270; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire [31:0] _GEN_292 = 4'h8 == ctrl_fsm_cs ? 32'h0 : _GEN_271; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_295 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_274; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_296 = 4'h8 == ctrl_fsm_cs ? nmi_mode_q : _GEN_275; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 481:23]
  wire  _GEN_297 = 4'h8 == ctrl_fsm_cs ? 1'h0 : _GEN_276; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire [2:0] _GEN_298 = 4'h7 == ctrl_fsm_cs ? 3'h2 : _GEN_277; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 594:16]
  wire [2:0] _GEN_299 = 4'h7 == ctrl_fsm_cs ? _GEN_136 : _GEN_278; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_300 = 4'h7 == ctrl_fsm_cs ? handle_irq : _GEN_280; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_302 = 4'h7 == ctrl_fsm_cs ? handle_irq : _GEN_283; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire [5:0] _GEN_303 = 4'h7 == ctrl_fsm_cs ? _GEN_134 : _GEN_291; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_304 = 4'h7 == ctrl_fsm_cs ? _GEN_135 : _GEN_296; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire [3:0] _GEN_305 = 4'h7 == ctrl_fsm_cs ? 4'h5 : _GEN_286; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 655:19]
  wire  _GEN_306 = 4'h7 == ctrl_fsm_cs ? 1'h0 : _GEN_279; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  wire  _GEN_309 = 4'h7 == ctrl_fsm_cs ? debug_mode_q : _GEN_285; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 481:23]
  wire  _GEN_311 = 4'h7 == ctrl_fsm_cs ? 1'h0 : _GEN_288; // @[src/main/scala/coreGen/core/idu/controller.scala 456:13 481:23]
  wire [31:0] _GEN_314 = 4'h7 == ctrl_fsm_cs ? 32'h0 : _GEN_292; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_317 = 4'h7 == ctrl_fsm_cs ? 1'h0 : _GEN_295; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_318 = 4'h7 == ctrl_fsm_cs ? 1'h0 : _GEN_297; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire [2:0] _GEN_320 = 4'h5 == ctrl_fsm_cs ? 3'h1 : _GEN_298; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 541:16]
  wire  _GEN_321 = 4'h5 == ctrl_fsm_cs & (flush_state_hold_q & handle_irq); // @[src/main/scala/coreGen/core/idu/controller.scala 473:23 481:23 544:24]
  wire [3:0] _GEN_323 = 4'h5 == ctrl_fsm_cs ? _GEN_125 : _GEN_305; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_324 = 4'h5 == ctrl_fsm_cs ? _GEN_115 : _GEN_300; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_328 = 4'h5 == ctrl_fsm_cs ? _T_47 : _GEN_300; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_329 = 4'h5 == ctrl_fsm_cs ? _GEN_126 : _GEN_311; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire [2:0] _GEN_330 = 4'h5 == ctrl_fsm_cs ? 3'h1 : _GEN_299; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  wire  _GEN_331 = 4'h5 == ctrl_fsm_cs ? 1'h0 : 4'h7 == ctrl_fsm_cs & handle_irq; // @[src/main/scala/coreGen/core/idu/controller.scala 437:19 481:23]
  wire  _GEN_332 = 4'h5 == ctrl_fsm_cs ? 1'h0 : _GEN_302; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  wire [5:0] _GEN_333 = 4'h5 == ctrl_fsm_cs ? 6'h0 : _GEN_303; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire  _GEN_334 = 4'h5 == ctrl_fsm_cs ? nmi_mode_q : _GEN_304; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 481:23]
  wire  _GEN_335 = 4'h5 == ctrl_fsm_cs ? 1'h0 : _GEN_306; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  wire  _GEN_338 = 4'h5 == ctrl_fsm_cs ? debug_mode_q : _GEN_309; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 481:23]
  wire  _GEN_340 = 4'h5 == ctrl_fsm_cs ? 1'h0 : _GEN_311; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 471:24]
  wire [31:0] _GEN_343 = 4'h5 == ctrl_fsm_cs ? 32'h0 : _GEN_314; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_346 = 4'h5 == ctrl_fsm_cs ? 1'h0 : _GEN_317; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_347 = 4'h5 == ctrl_fsm_cs ? 1'h0 : _GEN_318; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire [3:0] _GEN_348 = 4'h4 == ctrl_fsm_cs ? _GEN_103 : _GEN_323; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_349 = 4'h4 == ctrl_fsm_cs ? handle_irq : _GEN_329; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
  wire  _GEN_350 = 4'h4 == ctrl_fsm_cs ? 1'h0 : 4'h5 == ctrl_fsm_cs; // @[src/main/scala/coreGen/core/idu/controller.scala 469:22 481:23]
  wire [2:0] _GEN_351 = 4'h4 == ctrl_fsm_cs ? 3'h0 : _GEN_320; // @[src/main/scala/coreGen/core/idu/controller.scala 445:14 481:23]
  wire  _GEN_352 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_321; // @[src/main/scala/coreGen/core/idu/controller.scala 473:23 481:23]
  wire  _GEN_353 = 4'h4 == ctrl_fsm_cs ? 1'h0 : 4'h5 == ctrl_fsm_cs & special_req_all; // @[src/main/scala/coreGen/core/idu/controller.scala 457:15 481:23]
  wire  _GEN_354 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_324; // @[src/main/scala/coreGen/core/idu/controller.scala 446:14 481:23]
  wire  _GEN_358 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_328; // @[src/main/scala/coreGen/core/idu/controller.scala 447:19 481:23]
  wire [2:0] _GEN_359 = 4'h4 == ctrl_fsm_cs ? 3'h1 : _GEN_330; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  wire  _GEN_360 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_331; // @[src/main/scala/coreGen/core/idu/controller.scala 437:19 481:23]
  wire  _GEN_361 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_332; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  wire [5:0] _GEN_362 = 4'h4 == ctrl_fsm_cs ? 6'h0 : _GEN_333; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire  _GEN_363 = 4'h4 == ctrl_fsm_cs ? nmi_mode_q : _GEN_334; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16 481:23]
  wire  _GEN_364 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_335; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  wire  _GEN_367 = 4'h4 == ctrl_fsm_cs ? debug_mode_q : _GEN_338; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18 481:23]
  wire  _GEN_369 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_340; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 471:24]
  wire [31:0] _GEN_372 = 4'h4 == ctrl_fsm_cs ? 32'h0 : _GEN_343; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_375 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_346; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_376 = 4'h4 == ctrl_fsm_cs ? 1'h0 : _GEN_347; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire  _GEN_377 = 4'h3 == ctrl_fsm_cs ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 436:17 481:23 504:19]
  wire  _GEN_378 = 4'h3 == ctrl_fsm_cs | _GEN_349; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 505:15]
  wire  _GEN_379 = 4'h3 == ctrl_fsm_cs | _GEN_364; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 506:16]
  wire  _GEN_381 = 4'h3 == ctrl_fsm_cs ? _T_34 : 1'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 454:17 481:23]
  wire  _GEN_382 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_350; // @[src/main/scala/coreGen/core/idu/controller.scala 469:22 481:23]
  wire [2:0] _GEN_383 = 4'h3 == ctrl_fsm_cs ? 3'h0 : _GEN_351; // @[src/main/scala/coreGen/core/idu/controller.scala 445:14 481:23]
  wire  _GEN_384 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_352; // @[src/main/scala/coreGen/core/idu/controller.scala 473:23 481:23]
  wire  _GEN_385 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_353; // @[src/main/scala/coreGen/core/idu/controller.scala 457:15 481:23]
  wire  _GEN_386 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_354; // @[src/main/scala/coreGen/core/idu/controller.scala 446:14 481:23]
  wire  _GEN_390 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_358; // @[src/main/scala/coreGen/core/idu/controller.scala 447:19 481:23]
  wire [2:0] _GEN_391 = 4'h3 == ctrl_fsm_cs ? 3'h1 : _GEN_359; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  wire  _GEN_392 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_360; // @[src/main/scala/coreGen/core/idu/controller.scala 437:19 481:23]
  wire  _GEN_393 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_361; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  wire [5:0] _GEN_394 = 4'h3 == ctrl_fsm_cs ? 6'h0 : _GEN_362; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire [31:0] _GEN_403 = 4'h3 == ctrl_fsm_cs ? 32'h0 : _GEN_372; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_406 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_375; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_407 = 4'h3 == ctrl_fsm_cs ? 1'h0 : _GEN_376; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire  _GEN_408 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_381; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 497:19]
  wire  _GEN_409 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_377; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 498:19]
  wire  _GEN_410 = 4'h2 == ctrl_fsm_cs | _GEN_378; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 499:15]
  wire  _GEN_411 = 4'h2 == ctrl_fsm_cs | _GEN_379; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 500:16]
  wire  _GEN_413 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_382; // @[src/main/scala/coreGen/core/idu/controller.scala 469:22 481:23]
  wire [2:0] _GEN_414 = 4'h2 == ctrl_fsm_cs ? 3'h0 : _GEN_383; // @[src/main/scala/coreGen/core/idu/controller.scala 445:14 481:23]
  wire  _GEN_415 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_384; // @[src/main/scala/coreGen/core/idu/controller.scala 473:23 481:23]
  wire  _GEN_416 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_385; // @[src/main/scala/coreGen/core/idu/controller.scala 457:15 481:23]
  wire  _GEN_417 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_386; // @[src/main/scala/coreGen/core/idu/controller.scala 446:14 481:23]
  wire  _GEN_421 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_390; // @[src/main/scala/coreGen/core/idu/controller.scala 447:19 481:23]
  wire [2:0] _GEN_422 = 4'h2 == ctrl_fsm_cs ? 3'h1 : _GEN_391; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  wire  _GEN_423 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_392; // @[src/main/scala/coreGen/core/idu/controller.scala 437:19 481:23]
  wire  _GEN_424 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_393; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  wire [5:0] _GEN_425 = 4'h2 == ctrl_fsm_cs ? 6'h0 : _GEN_394; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire [31:0] _GEN_434 = 4'h2 == ctrl_fsm_cs ? 32'h0 : _GEN_403; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_437 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_406; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_438 = 4'h2 == ctrl_fsm_cs ? 1'h0 : _GEN_407; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire  _GEN_439 = 4'h1 == ctrl_fsm_cs | _GEN_409; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 490:19]
  wire [2:0] _GEN_440 = 4'h1 == ctrl_fsm_cs ? 3'h0 : _GEN_414; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 491:16]
  wire  _GEN_441 = 4'h1 == ctrl_fsm_cs | _GEN_417; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 492:16]
  wire  _GEN_442 = 4'h1 == ctrl_fsm_cs | _GEN_421; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 493:21]
  wire  _GEN_445 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_410; // @[src/main/scala/coreGen/core/idu/controller.scala 456:13 481:23]
  wire  _GEN_446 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_411; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  wire  _GEN_447 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_413; // @[src/main/scala/coreGen/core/idu/controller.scala 469:22 481:23]
  wire  _GEN_448 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_415; // @[src/main/scala/coreGen/core/idu/controller.scala 473:23 481:23]
  wire  _GEN_449 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_416; // @[src/main/scala/coreGen/core/idu/controller.scala 457:15 481:23]
  wire [2:0] _GEN_453 = 4'h1 == ctrl_fsm_cs ? 3'h1 : _GEN_422; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  wire  _GEN_454 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_423; // @[src/main/scala/coreGen/core/idu/controller.scala 437:19 481:23]
  wire  _GEN_455 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_424; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  wire [5:0] _GEN_456 = 4'h1 == ctrl_fsm_cs ? 6'h0 : _GEN_425; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  wire [31:0] _GEN_465 = 4'h1 == ctrl_fsm_cs ? 32'h0 : _GEN_434; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  wire  _GEN_468 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_437; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  wire  _GEN_469 = 4'h1 == ctrl_fsm_cs ? 1'h0 : _GEN_438; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  wire  halt_if = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_445; // @[src/main/scala/coreGen/core/idu/controller.scala 456:13 481:23]
  wire  flush_id = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_446; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  wire  retain_id = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_449; // @[src/main/scala/coreGen/core/idu/controller.scala 457:15 481:23]
  wire  _GEN_501 = load_err_i | load_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 847:27 848:18 161:29]
  wire  _GEN_503 = store_err_i | store_err_q; // @[src/main/scala/coreGen/core/idu/controller.scala 853:28 854:19 163:30]
  wire  sp_overflow_mode_clean_d = 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 189:44]
  assign ctrl_busy_o = 4'h0 == ctrl_fsm_cs | (4'h1 == ctrl_fsm_cs | _GEN_408); // @[src/main/scala/coreGen/core/idu/controller.scala 454:17 481:23]
  assign instr_valid_clear_o = ~(stall_id_i | retain_id) | flush_id; // @[src/main/scala/coreGen/core/idu/controller.scala 839:49]
  assign id_in_ready_o = _T_50 & ~halt_if & ~retain_id; // @[src/main/scala/coreGen/core/idu/controller.scala 838:41]
  assign controller_run_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_447; // @[src/main/scala/coreGen/core/idu/controller.scala 469:22 481:23]
  assign instr_req_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_439; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 483:19]
  assign pc_set_o = 4'h0 == ctrl_fsm_cs | _GEN_441; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 485:16]
  assign pc_set_spec_o = 4'h0 == ctrl_fsm_cs | _GEN_442; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 486:21]
  assign pc_mux_o = 4'h0 == ctrl_fsm_cs ? 3'h0 : _GEN_440; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 484:16]
  assign exc_pc_mux_o = 4'h0 == ctrl_fsm_cs ? 3'h1 : _GEN_453; // @[src/main/scala/coreGen/core/idu/controller.scala 450:18 481:23]
  assign exc_cause_o = 4'h0 == ctrl_fsm_cs ? 6'h0 : _GEN_456; // @[src/main/scala/coreGen/core/idu/controller.scala 451:17 481:23]
  assign disable_branch_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_448; // @[src/main/scala/coreGen/core/idu/controller.scala 473:23 481:23]
  assign nmi_mode_o = nmi_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 834:16]
  assign debug_mode_o = debug_mode_q; // @[src/main/scala/coreGen/core/idu/controller.scala 833:18]
  assign csr_save_if_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_454; // @[src/main/scala/coreGen/core/idu/controller.scala 437:19 481:23]
  assign csr_restore_mret_id_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_468; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 440:27]
  assign csr_restore_dret_id_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_469; // @[src/main/scala/coreGen/core/idu/controller.scala 481:23 441:27]
  assign csr_save_cause_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_455; // @[src/main/scala/coreGen/core/idu/controller.scala 442:22 481:23]
  assign csr_mtval_o = 4'h0 == ctrl_fsm_cs ? 32'h0 : _GEN_465; // @[src/main/scala/coreGen/core/idu/controller.scala 443:17 481:23]
  assign flush_id_o = 4'h0 == ctrl_fsm_cs ? 1'h0 : _GEN_446; // @[src/main/scala/coreGen/core/idu/controller.scala 458:14 481:23]
  assign lsu_err_clean_data_flag_o = lsu_err_clean_data_flag_q; // @[src/main/scala/coreGen/core/idu/controller.scala 312:31]
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      ctrl_fsm_cs <= 4'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 487:19]
    end else if (4'h0 == ctrl_fsm_cs) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      ctrl_fsm_cs <= 4'h1; // @[src/main/scala/coreGen/core/idu/controller.scala 494:19]
    end else if (4'h1 == ctrl_fsm_cs) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      ctrl_fsm_cs <= 4'h4; // @[src/main/scala/coreGen/core/idu/controller.scala 501:19]
    end else if (4'h2 == ctrl_fsm_cs) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      ctrl_fsm_cs <= 4'h3;
    end else if (4'h3 == ctrl_fsm_cs) begin
      ctrl_fsm_cs <= _GEN_100;
    end else begin
      ctrl_fsm_cs <= _GEN_348;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      nmi_mode_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 464:16]
    end else if (!(4'h0 == ctrl_fsm_cs)) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      if (!(4'h1 == ctrl_fsm_cs)) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
        if (!(4'h2 == ctrl_fsm_cs)) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
          if (!(4'h3 == ctrl_fsm_cs)) begin
            nmi_mode_q <= _GEN_363;
          end
        end
      end
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      debug_mode_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 462:18]
    end else if (!(4'h0 == ctrl_fsm_cs)) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      if (!(4'h1 == ctrl_fsm_cs)) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
        if (!(4'h2 == ctrl_fsm_cs)) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
          if (!(4'h3 == ctrl_fsm_cs)) begin
            debug_mode_q <= _GEN_367;
          end
        end
      end
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 845:21]
      load_err_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 846:18]
    end else if (update_err) begin
      load_err_q <= 1'h0;
    end else begin
      load_err_q <= _GEN_501;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 851:21]
      store_err_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 852:19]
    end else if (update_err) begin
      store_err_q <= 1'h0;
    end else begin
      store_err_q <= _GEN_503;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 290:48]
      exc_req_q <= 1'h0;
    end else begin
      exc_req_q <= _exc_req_d_T_4 & _illegal_insn_d_T_2;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 280:73]
      illegal_insn_q <= 1'h0;
    end else begin
      illegal_insn_q <= (illegal_insn_i | illegal_dret | illegal_umode) & ctrl_fsm_cs != 4'h6;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      flush_state_hold_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 471:24]
    end else if (4'h0 == ctrl_fsm_cs) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      flush_state_hold_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 471:24]
    end else if (4'h1 == ctrl_fsm_cs) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      flush_state_hold_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 471:24]
    end else if (4'h2 == ctrl_fsm_cs) begin // @[src/main/scala/coreGen/core/idu/controller.scala 481:23]
      flush_state_hold_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 471:24]
    end else if (4'h3 == ctrl_fsm_cs) begin
      flush_state_hold_q <= 1'h0;
    end else begin
      flush_state_hold_q <= _GEN_369;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/idu/controller.scala 307:78]
      lsu_err_clean_data_flag_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/controller.scala 308:33]
    end else begin
      lsu_err_clean_data_flag_q <= _T_17 & _T_13 | _GEN_8;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ctrl_fsm_cs = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  nmi_mode_q = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  debug_mode_q = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  load_err_q = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  store_err_q = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  exc_req_q = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  illegal_insn_q = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  flush_state_hold_q = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  lsu_err_clean_data_flag_q = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  if (_T_1) begin
    ctrl_fsm_cs = 4'h0;
  end
  if (_T_1) begin
    nmi_mode_q = 1'h0;
  end
  if (_T_1) begin
    debug_mode_q = 1'h0;
  end
  if (_T_1) begin
    load_err_q = 1'h0;
  end
  if (_T_1) begin
    store_err_q = 1'h0;
  end
  if (_T_1) begin
    exc_req_q = 1'h0;
  end
  if (_T_1) begin
    illegal_insn_q = 1'h0;
  end
  if (_T_1) begin
    flush_state_hold_q = 1'h0;
  end
  if (_T_1) begin
    lsu_err_clean_data_flag_q = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module idu(
  input         clk_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 157:20]
  input         rst_ni, // @[src/main/scala/coreGen/core/idu/id_stage.scala 158:20]
  output        ctrl_busy_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 182:25]
  output        illegal_insn_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 183:28]
  input         instr_valid_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 186:27]
  input  [31:0] instr_rdata_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 187:27]
  input  [31:0] instr_rdata_alu_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 188:31]
  input  [15:0] instr_rdata_c_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 189:29]
  input         instr_is_compressed_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 190:35]
  output        instr_req_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 192:25]
  output        instr_first_cycle_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 193:36]
  output        instr_valid_clear_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 194:33]
  output        id_in_ready_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 195:27]
  input         branch_decision_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 199:31]
  output        branch_in_dec_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 202:29]
  output        pc_set_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 205:22]
  output        pc_set_spec_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 206:27]
  output [2:0]  pc_mux_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 207:22]
  output [2:0]  exc_pc_mux_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 209:26]
  output [5:0]  exc_cause_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 210:25]
  input         illegal_c_insn_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 212:30]
  input         instr_fetch_err_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 213:31]
  input         instr_fetch_err_plus2_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 214:37]
  input  [31:0] pc_id_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 216:21]
  input         ex_valid_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 219:24]
  input         lsu_resp_valid_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 220:30]
  input  [2:0]  misresp_q_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 221:25]
  output [5:0]  alu_operator_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 224:31]
  output [31:0] alu_operand_a_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 225:32]
  output        alu_operand_a_ex_pol_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 226:36]
  output [31:0] alu_operand_a_ex_t_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 227:34]
  output [31:0] alu_operand_b_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 229:32]
  output        alu_operand_b_ex_pol_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 230:36]
  output [31:0] alu_operand_b_ex_t_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 231:34]
  input  [1:0]  imd_val_we_ex_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 235:29]
  input  [33:0] imd_val_d_ex_i_0, // @[src/main/scala/coreGen/core/idu/id_stage.scala 238:30]
  output [33:0] imd_val_q_ex_o_0, // @[src/main/scala/coreGen/core/idu/id_stage.scala 240:30]
  output [31:0] bt_a_operand_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 244:28]
  output [31:0] bt_b_operand_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 245:28]
  output        mult_en_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 248:26]
  output        div_en_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 249:25]
  output        mult_sel_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 250:27]
  output        div_sel_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 251:26]
  output [1:0]  multdiv_operator_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 252:35]
  output [1:0]  multdiv_signed_mode_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 253:38]
  output [31:0] multdiv_operand_a_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 254:36]
  output [31:0] multdiv_operand_b_ex_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 255:36]
  output        csr_access_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 261:26]
  output [1:0]  csr_op_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 262:22]
  output        csr_op_en_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 263:25]
  output        csr_save_if_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 264:27]
  output        csr_restore_mret_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 267:35]
  output        csr_restore_dret_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 268:35]
  output        csr_save_cause_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 269:30]
  output [31:0] csr_mtval_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 270:25]
  input  [1:0]  priv_mode_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 271:25]
  input         csr_mstatus_tw_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 272:30]
  input         illegal_csr_insn_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 273:32]
  output        lsu_req_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 277:23]
  output        lsu_we_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 278:22]
  output [1:0]  lsu_type_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 279:24]
  output        lsu_sign_ext_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 280:28]
  output [31:0] lsu_wdata_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 281:25]
  output        lsu_err_clean_data_flag_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 287:39]
  input         lsu_err_no_finish_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 289:33]
  input         lsu_req_done_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 290:28]
  input         lsu_addr_incr_req_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 291:33]
  input  [31:0] lsu_addr_last_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 292:29]
  input         csr_mstatus_mie_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 297:31]
  input         irq_pending_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 298:27]
  input         irqs_i_timer, // @[src/main/scala/coreGen/core/idu/id_stage.scala 299:20]
  input         irqs_i_software, // @[src/main/scala/coreGen/core/idu/id_stage.scala 299:20]
  input         irqs_i_external, // @[src/main/scala/coreGen/core/idu/id_stage.scala 299:20]
  input         irqs_i_nmi, // @[src/main/scala/coreGen/core/idu/id_stage.scala 299:20]
  output        nmi_mode_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 302:24]
  input         lsu_load_err_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 304:28]
  input         lsu_store_err_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 305:29]
  output        debug_mode_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 308:26]
  input  [31:0] result_ex_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 320:25]
  input         result_ex_pol_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 321:29]
  input  [31:0] csr_rdata_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 322:25]
  output [4:0]  rf_raddr_a_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 325:26]
  input  [31:0] rf_rdata_a_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 326:26]
  input         rf_rdata_a_pol_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 327:30]
  output [4:0]  rf_raddr_b_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 329:26]
  input  [31:0] rf_rdata_b_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 330:26]
  input         rf_rdata_b_pol_i, // @[src/main/scala/coreGen/core/idu/id_stage.scala 331:30]
  output [4:0]  rf_waddr_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 337:27]
  output [31:0] rf_wdata_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 338:27]
  output        rf_wdata_id_pol_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 339:31]
  output        rf_we_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 341:24]
  output        en_wb_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 351:21]
  output        instr_perf_count_id_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 353:35]
  output        disable_branch_o, // @[src/main/scala/coreGen/core/idu/id_stage.scala 367:30]
  input         csr_mpvec_mode, // @[src/main/scala/coreGen/core/idu/id_stage.scala 369:23]
  input         fetch_valid_if_i // @[src/main/scala/coreGen/core/idu/id_stage.scala 372:30]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  decoder_i_illegal_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_ebrk_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_mret_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_dret_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_ecall_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_wfi_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_jump_set_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_instr_first_cycle_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_instr_rdata_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_instr_rdata_alu_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_illegal_c_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_imm_a_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [2:0] decoder_i_imm_b_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [2:0] decoder_i_bt_a_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [2:0] decoder_i_bt_b_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_imm_i_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_imm_s_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_imm_b_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_imm_u_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_imm_j_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [31:0] decoder_i_zimm_rs1_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [1:0] decoder_i_rf_wdata_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_rf_we_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [4:0] decoder_i_rf_raddr_a_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [4:0] decoder_i_rf_raddr_b_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [4:0] decoder_i_rf_waddr_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [5:0] decoder_i_alu_operator_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [2:0] decoder_i_alu_op_a_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [1:0] decoder_i_alu_op_b_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_mult_en_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_div_en_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_mult_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_div_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [1:0] decoder_i_multdiv_operator_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [1:0] decoder_i_multdiv_signed_mode_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_csr_access_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [1:0] decoder_i_csr_op_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_data_req_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_data_we_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire [1:0] decoder_i_data_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_data_sign_extension_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_jump_in_dec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  decoder_i_branch_in_dec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
  wire  controller_i_clk_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_rst_ni; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_ctrl_busy_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_illegal_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_ecall_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_mret_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_dret_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_wfi_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_ebrk_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_pipe_flush_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_valid_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [31:0] controller_i_instr_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [15:0] controller_i_instr_compressed_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_is_compressed_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_fetch_err_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_fetch_err_plus2_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [31:0] controller_i_pc_id_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_valid_clear_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_id_in_ready_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_controller_run_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_req_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_pc_set_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_pc_set_spec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [2:0] controller_i_pc_mux_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [2:0] controller_i_exc_pc_mux_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [5:0] controller_i_exc_cause_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [31:0] controller_i_lsu_addr_last_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_load_err_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_store_err_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_branch_set_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_branch_set_spec_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_jump_set_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_disable_branch_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_mstatus_mie_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_irq_pending_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_irqs_i_timer; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_irqs_i_software; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_irqs_i_external; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_irqs_i_nmi; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_nmi_mode_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_debug_mode_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_save_if_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_restore_mret_id_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_restore_dret_id_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_save_cause_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [31:0] controller_i_csr_mtval_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire [1:0] controller_i_priv_mode_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_mstatus_tw_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_stall_id_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_flush_id_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_csr_mpvec_mode; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_instr_fetch_valid_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  controller_i_lsu_err_clean_data_flag_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
  wire  _if_id_pipe_en_q_T_2 = ~rst_ni; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 88:46]
  reg [33:0] imd_val_q_0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 480:30]
  wire [2:0] alu_op_a_mux_sel_dec = decoder_i_alu_op_a_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 476:36 888:38]
  wire [2:0] alu_op_a_mux_sel = lsu_addr_incr_req_i ? 3'h1 : alu_op_a_mux_sel_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 600:28]
  wire [1:0] alu_op_b_mux_sel_dec = decoder_i_alu_op_b_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 478:36 889:38]
  wire [1:0] alu_op_b_mux_sel = lsu_addr_incr_req_i ? 2'h1 : alu_op_b_mux_sel_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 601:28]
  wire [2:0] imm_b_mux_sel_dec = decoder_i_imm_b_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 488:33 865:38]
  wire [2:0] imm_b_mux_sel = lsu_addr_incr_req_i ? 3'h6 : imm_b_mux_sel_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 602:25]
  wire  imm_a_mux_sel = decoder_i_imm_a_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 486:29 864:38]
  wire [31:0] zimm_rs1_type = decoder_i_zimm_rs1_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 446:29 874:38]
  wire [31:0] imm_a = ~imm_a_mux_sel ? zimm_rs1_type : 32'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 607:17]
  wire [31:0] _rf_rdata_a_fwd_t_T_7 = rf_rdata_a_pol_i ? 32'hffffffff : 32'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1758:133]
  wire [31:0] _rf_rdata_a_fwd_t_T_8 = _rf_rdata_a_fwd_t_T_7 ^ rf_rdata_a_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1758:156]
  wire [31:0] _rf_rdata_a_fwd_t_T_9 = _rf_rdata_a_fwd_t_T_7 ^ rf_rdata_a_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1758:156]
  wire [31:0] rf_rdata_a_fwd_t = _rf_rdata_a_fwd_t_T_8; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1803:56]
  wire [31:0] _GEN_2 = alu_op_a_mux_sel == 3'h5 ? 32'h0 : pc_id_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 638:49 639:23 641:23]
  wire [31:0] _GEN_5 = alu_op_a_mux_sel == 3'h4 ? rf_rdata_b_i : _GEN_2; // @[src/main/scala/coreGen/core/idu/id_stage.scala 634:49 635:23]
  wire [31:0] _rf_rdata_b_fwd_t_T_7 = rf_rdata_b_pol_i ? 32'hffffffff : 32'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1759:133]
  wire [31:0] _rf_rdata_b_fwd_t_T_8 = _rf_rdata_b_fwd_t_T_7 ^ rf_rdata_b_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1759:156]
  wire [31:0] _rf_rdata_b_fwd_t_T_9 = _rf_rdata_b_fwd_t_T_7 ^ rf_rdata_b_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1759:156]
  wire [31:0] rf_rdata_b_fwd_t = _rf_rdata_b_fwd_t_T_8; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1805:56]
  wire [31:0] _GEN_6 = alu_op_a_mux_sel == 3'h4 ? _rf_rdata_b_fwd_t_T_9 : _GEN_2; // @[src/main/scala/coreGen/core/idu/id_stage.scala 634:49 636:25]
  wire  _GEN_7 = alu_op_a_mux_sel == 3'h4 & rf_rdata_b_pol_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 634:49 637:27]
  wire [31:0] _GEN_8 = alu_op_a_mux_sel == 3'h3 ? imm_a : _GEN_5; // @[src/main/scala/coreGen/core/idu/id_stage.scala 630:47 631:23]
  wire [31:0] _GEN_9 = alu_op_a_mux_sel == 3'h3 ? imm_a : _GEN_6; // @[src/main/scala/coreGen/core/idu/id_stage.scala 630:47 632:25]
  wire  _GEN_10 = alu_op_a_mux_sel == 3'h3 ? 1'h0 : _GEN_7; // @[src/main/scala/coreGen/core/idu/id_stage.scala 630:47 633:27]
  wire [31:0] _GEN_11 = alu_op_a_mux_sel == 3'h2 ? pc_id_i : _GEN_8; // @[src/main/scala/coreGen/core/idu/id_stage.scala 626:50 627:23]
  wire [31:0] _GEN_12 = alu_op_a_mux_sel == 3'h2 ? pc_id_i : _GEN_9; // @[src/main/scala/coreGen/core/idu/id_stage.scala 626:50 628:25]
  wire  _GEN_13 = alu_op_a_mux_sel == 3'h2 ? 1'h0 : _GEN_10; // @[src/main/scala/coreGen/core/idu/id_stage.scala 626:50 629:27]
  wire [31:0] _GEN_14 = alu_op_a_mux_sel == 3'h1 ? lsu_addr_last_i : _GEN_11; // @[src/main/scala/coreGen/core/idu/id_stage.scala 622:47 623:23]
  wire [31:0] _GEN_15 = alu_op_a_mux_sel == 3'h1 ? lsu_addr_last_i : _GEN_12; // @[src/main/scala/coreGen/core/idu/id_stage.scala 622:47 624:25]
  wire  _GEN_16 = alu_op_a_mux_sel == 3'h1 ? 1'h0 : _GEN_13; // @[src/main/scala/coreGen/core/idu/id_stage.scala 622:47 625:27]
  wire [2:0] bt_a_mux_sel = decoder_i_bt_a_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 483:28 866:38]
  wire [2:0] bt_b_mux_sel = decoder_i_bt_b_mux_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 484:28 867:38]
  wire [2:0] _bt_b_operand_o_T = instr_is_compressed_i ? 3'h2 : 3'h4; // @[src/main/scala/coreGen/core/idu/id_stage.scala 665:35]
  wire [2:0] _GEN_22 = bt_b_mux_sel == 3'h5 ? _bt_b_operand_o_T : _bt_b_operand_o_T; // @[src/main/scala/coreGen/core/idu/id_stage.scala 664:52 665:28 667:28]
  wire [31:0] imm_j_type = decoder_i_imm_j_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 445:26 873:38]
  wire [31:0] _GEN_23 = bt_b_mux_sel == 3'h4 ? imm_j_type : {{29'd0}, _GEN_22}; // @[src/main/scala/coreGen/core/idu/id_stage.scala 662:46 663:28]
  wire [31:0] imm_b_type = decoder_i_imm_b_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 443:26 871:38]
  wire [31:0] _GEN_24 = bt_b_mux_sel == 3'h2 ? imm_b_type : _GEN_23; // @[src/main/scala/coreGen/core/idu/id_stage.scala 660:46 661:28]
  wire [31:0] imm_i_type = decoder_i_imm_i_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 441:26 869:38]
  wire [2:0] _GEN_27 = imm_b_mux_sel == 3'h5 ? _bt_b_operand_o_T : 3'h4; // @[src/main/scala/coreGen/core/idu/id_stage.scala 677:53 678:19]
  wire [31:0] imm_u_type = decoder_i_imm_u_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 444:26 872:38]
  wire [31:0] _GEN_28 = imm_b_mux_sel == 3'h3 ? imm_u_type : {{29'd0}, _GEN_27}; // @[src/main/scala/coreGen/core/idu/id_stage.scala 675:47 676:19]
  wire [31:0] imm_s_type = decoder_i_imm_s_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 442:26 870:38]
  wire [31:0] _GEN_29 = imm_b_mux_sel == 3'h1 ? imm_s_type : _GEN_28; // @[src/main/scala/coreGen/core/idu/id_stage.scala 673:47 674:19]
  wire [31:0] imm_b = imm_b_mux_sel == 3'h0 ? imm_i_type : _GEN_29; // @[src/main/scala/coreGen/core/idu/id_stage.scala 671:40 672:19]
  wire  _T_32 = alu_op_b_mux_sel == 2'h1; // @[src/main/scala/coreGen/core/idu/id_stage.scala 724:38]
  wire  controller_run = controller_i_controller_run_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 409:30 1030:42]
  wire  instr_executing = instr_valid_i & ~instr_fetch_err_i & controller_run; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1800:64]
  reg [1:0] id_fsm_q; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1175:32]
  wire  lsu_req_dec = decoder_i_data_req_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 507:27 907:38]
  wire  rf_we_dec = decoder_i_rf_we_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 453:25 878:38]
  wire  mult_en_dec = decoder_i_mult_en_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 495:27 895:38]
  wire  div_en_dec = decoder_i_div_en_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 497:26 896:38]
  wire  multdiv_en_dec = mult_en_dec | div_en_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1112:35]
  wire  _T_62 = ~ex_valid_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1346:30]
  wire  _GEN_70 = ~ex_valid_i ? 1'h0 : rf_we_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1178:22 1346:42 1348:39]
  wire  _GEN_86 = multdiv_en_dec ? _GEN_70 : rf_we_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1178:22 1345:47]
  wire  _GEN_96 = lsu_req_dec ? rf_we_dec : _GEN_86; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1178:22 1334:38]
  wire  _GEN_105 = multdiv_en_dec ? rf_we_dec & ex_valid_i : rf_we_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1178:22 1381:41 1382:35]
  wire  _GEN_115 = 2'h1 == id_fsm_q ? _GEN_105 : rf_we_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1178:22 1330:29]
  wire  _GEN_121 = 2'h0 == id_fsm_q ? _GEN_96 : _GEN_115; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1330:29]
  wire  rf_we_raw = instr_executing ? _GEN_121 : rf_we_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1178:22 1329:30]
  wire [1:0] rf_wdata_sel = decoder_i_rf_wdata_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 452:28 877:38]
  wire [31:0] _GEN_51 = rf_wdata_sel == 2'h0 ? 32'h0 : result_ex_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 778:48 779:26 781:26]
  wire [31:0] _GEN_53 = rf_wdata_sel == 2'h2 ? csr_rdata_i : _GEN_51; // @[src/main/scala/coreGen/core/idu/id_stage.scala 775:48 776:26]
  wire  _T_46 = 12'h300 == instr_rdata_i[31:20] | 12'h304 == instr_rdata_i[31:20]; // @[src/main/scala/coreGen/core/idu/id_stage.scala 922:39]
  wire  _T_57 = 12'h7b0 == instr_rdata_i[31:20] | 12'h7b1 == instr_rdata_i[31:20] | 12'h7b2 == instr_rdata_i[31:20] | 12'h7b3
     == instr_rdata_i[31:20]; // @[src/main/scala/coreGen/core/idu/id_stage.scala 927:39]
  wire  _GEN_59 = csr_op_en_o & csr_op_o != 2'h0 & _T_57; // @[src/main/scala/coreGen/core/idu/id_stage.scala 919:20 926:69]
  wire  illegal_insn_dec = decoder_i_illegal_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 386:32 847:38]
  reg  lsu_req_finish_q; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1115:35]
  wire  _GEN_61 = lsu_req_done_i | lsu_req_finish_q; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1119:35 1120:30 1115:35]
  wire  branch_in_dec = decoder_i_branch_in_dec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 395:29 916:38]
  wire  _GEN_79 = branch_in_dec & branch_decision_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1203:18 1351:46 1360:38]
  wire  _GEN_89 = multdiv_en_dec ? 1'h0 : _GEN_79; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1203:18 1345:47]
  wire  _GEN_99 = lsu_req_dec ? 1'h0 : _GEN_89; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1203:18 1334:38]
  wire  _GEN_124 = 2'h0 == id_fsm_q & _GEN_99; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1203:18 1330:29]
  wire [1:0] _id_fsm_d_T = instr_executing ? 2'h0 : id_fsm_q; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1177:28]
  wire [1:0] _GEN_69 = ~ex_valid_i ? 2'h1 : _id_fsm_d_T; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1177:22 1346:42 1347:38]
  wire  jump_in_dec = decoder_i_jump_in_dec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 402:27 913:38]
  wire  jump_set_dec = decoder_i_jump_set_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 403:28 853:38]
  wire  _GEN_76 = jump_in_dec & jump_set_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1206:14 1369:44 1374:34]
  wire  _GEN_84 = branch_in_dec ? 1'h0 : _GEN_76; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1206:14 1351:46]
  wire  _GEN_87 = multdiv_en_dec & _T_62; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1179:22 1345:47]
  wire  _GEN_94 = multdiv_en_dec ? 1'h0 : _GEN_84; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1206:14 1345:47]
  wire  _GEN_97 = lsu_req_dec ? 1'h0 : _GEN_87; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1179:22 1334:38]
  wire  _GEN_104 = lsu_req_dec ? 1'h0 : _GEN_94; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1206:14 1334:38]
  wire  _stall_mem_req_T_6 = lsu_resp_valid_i & misresp_q_i != 3'h2; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1795:79]
  wire  stall_mem_req = instr_valid_i & (lsu_req_dec & ~(lsu_resp_valid_i & misresp_q_i != 3'h2)); // @[src/main/scala/coreGen/core/idu/id_stage.scala 1795:40]
  wire  multicycle_done = lsu_req_dec ? _stall_mem_req_T_6 : ex_valid_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1791:31]
  wire  _GEN_111 = multicycle_done ? 1'h0 : multdiv_en_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1179:22 1385:56]
  wire  _GEN_112 = multicycle_done ? 1'h0 : branch_in_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1181:22 1385:56]
  wire  _GEN_113 = multicycle_done ? 1'h0 : jump_in_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1180:22 1385:56]
  wire  _GEN_116 = 2'h1 == id_fsm_q & _GEN_111; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1179:22 1330:29]
  wire  _GEN_117 = 2'h1 == id_fsm_q & _GEN_112; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1181:22 1330:29]
  wire  _GEN_118 = 2'h1 == id_fsm_q & _GEN_113; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1180:22 1330:29]
  wire  _GEN_122 = 2'h0 == id_fsm_q ? _GEN_97 : _GEN_116; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1330:29]
  wire  _GEN_123 = 2'h0 == id_fsm_q ? 1'h0 : _GEN_117; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1330:29]
  wire  _GEN_128 = 2'h0 == id_fsm_q ? 1'h0 : _GEN_118; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1330:29]
  wire  _GEN_129 = 2'h0 == id_fsm_q & _GEN_104; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1206:14 1330:29]
  wire  stall_multdiv = instr_executing & _GEN_122; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1179:22 1329:30]
  wire  stall_branch = instr_executing & _GEN_123; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1181:22 1329:30]
  wire  stall_jump = instr_executing & _GEN_128; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1180:22 1329:30]
  wire  _stall_id_T_5 = stall_mem_req | lsu_err_no_finish_i | stall_multdiv | stall_jump; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1642:123]
  wire  _stall_id_T_6 = stall_mem_req | lsu_err_no_finish_i | stall_multdiv | stall_jump | stall_branch; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1642:137]
  wire  flush_id = controller_i_flush_id_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 437:24 1090:42]
  wire  ebrk_insn = decoder_i_ebrk_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 387:25 848:38]
  wire  ecall_insn_dec = decoder_i_ecall_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 390:30 851:38]
  chiseldecoder decoder_i ( // @[src/main/scala/coreGen/core/idu/id_stage.scala 787:23]
    .illegal_insn_o(decoder_i_illegal_insn_o),
    .ebrk_insn_o(decoder_i_ebrk_insn_o),
    .mret_insn_o(decoder_i_mret_insn_o),
    .dret_insn_o(decoder_i_dret_insn_o),
    .ecall_insn_o(decoder_i_ecall_insn_o),
    .wfi_insn_o(decoder_i_wfi_insn_o),
    .jump_set_o(decoder_i_jump_set_o),
    .instr_first_cycle_i(decoder_i_instr_first_cycle_i),
    .instr_rdata_i(decoder_i_instr_rdata_i),
    .instr_rdata_alu_i(decoder_i_instr_rdata_alu_i),
    .illegal_c_insn_i(decoder_i_illegal_c_insn_i),
    .imm_a_mux_sel_o(decoder_i_imm_a_mux_sel_o),
    .imm_b_mux_sel_o(decoder_i_imm_b_mux_sel_o),
    .bt_a_mux_sel_o(decoder_i_bt_a_mux_sel_o),
    .bt_b_mux_sel_o(decoder_i_bt_b_mux_sel_o),
    .imm_i_type_o(decoder_i_imm_i_type_o),
    .imm_s_type_o(decoder_i_imm_s_type_o),
    .imm_b_type_o(decoder_i_imm_b_type_o),
    .imm_u_type_o(decoder_i_imm_u_type_o),
    .imm_j_type_o(decoder_i_imm_j_type_o),
    .zimm_rs1_type_o(decoder_i_zimm_rs1_type_o),
    .rf_wdata_sel_o(decoder_i_rf_wdata_sel_o),
    .rf_we_o(decoder_i_rf_we_o),
    .rf_raddr_a_o(decoder_i_rf_raddr_a_o),
    .rf_raddr_b_o(decoder_i_rf_raddr_b_o),
    .rf_waddr_o(decoder_i_rf_waddr_o),
    .alu_operator_o(decoder_i_alu_operator_o),
    .alu_op_a_mux_sel_o(decoder_i_alu_op_a_mux_sel_o),
    .alu_op_b_mux_sel_o(decoder_i_alu_op_b_mux_sel_o),
    .mult_en_o(decoder_i_mult_en_o),
    .div_en_o(decoder_i_div_en_o),
    .mult_sel_o(decoder_i_mult_sel_o),
    .div_sel_o(decoder_i_div_sel_o),
    .multdiv_operator_o(decoder_i_multdiv_operator_o),
    .multdiv_signed_mode_o(decoder_i_multdiv_signed_mode_o),
    .csr_access_o(decoder_i_csr_access_o),
    .csr_op_o(decoder_i_csr_op_o),
    .data_req_o(decoder_i_data_req_o),
    .data_we_o(decoder_i_data_we_o),
    .data_type_o(decoder_i_data_type_o),
    .data_sign_extension_o(decoder_i_data_sign_extension_o),
    .jump_in_dec_o(decoder_i_jump_in_dec_o),
    .branch_in_dec_o(decoder_i_branch_in_dec_o)
  );
  chiselcontroller controller_i ( // @[src/main/scala/coreGen/core/idu/id_stage.scala 974:30]
    .clk_i(controller_i_clk_i),
    .rst_ni(controller_i_rst_ni),
    .ctrl_busy_o(controller_i_ctrl_busy_o),
    .illegal_insn_i(controller_i_illegal_insn_i),
    .ecall_insn_i(controller_i_ecall_insn_i),
    .mret_insn_i(controller_i_mret_insn_i),
    .dret_insn_i(controller_i_dret_insn_i),
    .wfi_insn_i(controller_i_wfi_insn_i),
    .ebrk_insn_i(controller_i_ebrk_insn_i),
    .csr_pipe_flush_i(controller_i_csr_pipe_flush_i),
    .instr_valid_i(controller_i_instr_valid_i),
    .instr_i(controller_i_instr_i),
    .instr_compressed_i(controller_i_instr_compressed_i),
    .instr_is_compressed_i(controller_i_instr_is_compressed_i),
    .instr_fetch_err_i(controller_i_instr_fetch_err_i),
    .instr_fetch_err_plus2_i(controller_i_instr_fetch_err_plus2_i),
    .pc_id_i(controller_i_pc_id_i),
    .instr_valid_clear_o(controller_i_instr_valid_clear_o),
    .id_in_ready_o(controller_i_id_in_ready_o),
    .controller_run_o(controller_i_controller_run_o),
    .instr_req_o(controller_i_instr_req_o),
    .pc_set_o(controller_i_pc_set_o),
    .pc_set_spec_o(controller_i_pc_set_spec_o),
    .pc_mux_o(controller_i_pc_mux_o),
    .exc_pc_mux_o(controller_i_exc_pc_mux_o),
    .exc_cause_o(controller_i_exc_cause_o),
    .lsu_addr_last_i(controller_i_lsu_addr_last_i),
    .load_err_i(controller_i_load_err_i),
    .store_err_i(controller_i_store_err_i),
    .branch_set_i(controller_i_branch_set_i),
    .branch_set_spec_i(controller_i_branch_set_spec_i),
    .jump_set_i(controller_i_jump_set_i),
    .disable_branch_o(controller_i_disable_branch_o),
    .csr_mstatus_mie_i(controller_i_csr_mstatus_mie_i),
    .irq_pending_i(controller_i_irq_pending_i),
    .irqs_i_timer(controller_i_irqs_i_timer),
    .irqs_i_software(controller_i_irqs_i_software),
    .irqs_i_external(controller_i_irqs_i_external),
    .irqs_i_nmi(controller_i_irqs_i_nmi),
    .nmi_mode_o(controller_i_nmi_mode_o),
    .debug_mode_o(controller_i_debug_mode_o),
    .csr_save_if_o(controller_i_csr_save_if_o),
    .csr_restore_mret_id_o(controller_i_csr_restore_mret_id_o),
    .csr_restore_dret_id_o(controller_i_csr_restore_dret_id_o),
    .csr_save_cause_o(controller_i_csr_save_cause_o),
    .csr_mtval_o(controller_i_csr_mtval_o),
    .priv_mode_i(controller_i_priv_mode_i),
    .csr_mstatus_tw_i(controller_i_csr_mstatus_tw_i),
    .stall_id_i(controller_i_stall_id_i),
    .flush_id_o(controller_i_flush_id_o),
    .csr_mpvec_mode(controller_i_csr_mpvec_mode),
    .instr_fetch_valid_i(controller_i_instr_fetch_valid_i),
    .lsu_err_clean_data_flag_o(controller_i_lsu_err_clean_data_flag_o)
  );
  assign ctrl_busy_o = controller_i_ctrl_busy_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1005:42]
  assign illegal_insn_o = instr_valid_i & (illegal_insn_dec | illegal_csr_insn_i); // @[src/main/scala/coreGen/core/idu/id_stage.scala 936:37]
  assign instr_req_o = controller_i_instr_req_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1033:42]
  assign instr_first_cycle_id_o = instr_valid_i & id_fsm_q == 2'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1657:38]
  assign instr_valid_clear_o = controller_i_instr_valid_clear_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1028:42]
  assign id_in_ready_o = controller_i_id_in_ready_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1029:42]
  assign branch_in_dec_o = decoder_i_branch_in_dec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 395:29 916:38]
  assign pc_set_o = controller_i_pc_set_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1034:42]
  assign pc_set_spec_o = controller_i_pc_set_spec_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1035:42]
  assign pc_mux_o = controller_i_pc_mux_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1036:42]
  assign exc_pc_mux_o = controller_i_exc_pc_mux_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1038:42]
  assign exc_cause_o = controller_i_exc_cause_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1039:42]
  assign alu_operator_ex_o = decoder_i_alu_operator_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 474:28 887:38]
  assign alu_operand_a_ex_o = alu_op_a_mux_sel == 3'h0 ? rf_rdata_a_i : _GEN_14; // @[src/main/scala/coreGen/core/idu/id_stage.scala 618:42 619:23]
  assign alu_operand_a_ex_pol_o = alu_op_a_mux_sel == 3'h0 ? rf_rdata_a_pol_i : _GEN_16; // @[src/main/scala/coreGen/core/idu/id_stage.scala 618:42 621:27]
  assign alu_operand_a_ex_t_o = alu_op_a_mux_sel == 3'h0 ? _rf_rdata_a_fwd_t_T_9 : _GEN_15; // @[src/main/scala/coreGen/core/idu/id_stage.scala 618:42 620:25]
  assign alu_operand_b_ex_o = _T_32 ? imm_b : rf_rdata_b_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 738:28]
  assign alu_operand_b_ex_pol_o = _T_32 ? 1'h0 : rf_rdata_b_pol_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 740:32]
  assign alu_operand_b_ex_t_o = _T_32 ? imm_b : _rf_rdata_b_fwd_t_T_9; // @[src/main/scala/coreGen/core/idu/id_stage.scala 739:30]
  assign imd_val_q_ex_o_0 = imd_val_q_0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 750:22]
  assign bt_a_operand_o = bt_a_mux_sel == 3'h0 ? _rf_rdata_a_fwd_t_T_9 : pc_id_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 648:42 649:28]
  assign bt_b_operand_o = bt_b_mux_sel == 3'h0 ? imm_i_type : _GEN_24; // @[src/main/scala/coreGen/core/idu/id_stage.scala 658:39 659:28]
  assign mult_en_ex_o = instr_executing & mult_en_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1124:22]
  assign div_en_ex_o = instr_executing & div_en_dec; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1125:21]
  assign mult_sel_ex_o = decoder_i_mult_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 897:38]
  assign div_sel_ex_o = decoder_i_div_sel_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 898:38]
  assign multdiv_operator_ex_o = decoder_i_multdiv_operator_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 499:32 899:38]
  assign multdiv_signed_mode_ex_o = decoder_i_multdiv_signed_mode_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 500:35 900:38]
  assign multdiv_operand_a_ex_o = _rf_rdata_a_fwd_t_T_9; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1156:28]
  assign multdiv_operand_b_ex_o = _rf_rdata_b_fwd_t_T_9; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1157:28]
  assign csr_access_o = decoder_i_csr_access_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 903:38]
  assign csr_op_o = decoder_i_csr_op_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 904:38]
  assign csr_op_en_o = csr_access_o & instr_executing; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1141:33]
  assign csr_save_if_o = controller_i_csr_save_if_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1066:42]
  assign csr_restore_mret_id_o = controller_i_csr_restore_mret_id_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1069:42]
  assign csr_restore_dret_id_o = controller_i_csr_restore_dret_id_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1070:42]
  assign csr_save_cause_o = controller_i_csr_save_cause_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1071:42]
  assign csr_mtval_o = controller_i_csr_mtval_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1072:42]
  assign lsu_req_o = instr_executing & (lsu_req_dec & ~lsu_req_finish_q); // @[src/main/scala/coreGen/core/idu/id_stage.scala 1123:19]
  assign lsu_we_o = decoder_i_data_we_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 503:22 908:38]
  assign lsu_type_o = decoder_i_data_type_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 504:24 909:38]
  assign lsu_sign_ext_o = decoder_i_data_sign_extension_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 505:28 910:38]
  assign lsu_wdata_o = rf_rdata_b_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1132:3 1133:17 1135:17]
  assign lsu_err_clean_data_flag_o = controller_i_lsu_err_clean_data_flag_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1098:31]
  assign nmi_mode_o = controller_i_nmi_mode_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1058:42]
  assign debug_mode_o = controller_i_debug_mode_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1077:42]
  assign rf_raddr_a_o = decoder_i_rf_raddr_a_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 880:38]
  assign rf_raddr_b_o = decoder_i_rf_raddr_b_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 881:38]
  assign rf_waddr_id_o = decoder_i_rf_waddr_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 882:38]
  assign rf_wdata_id_o = rf_wdata_sel == 2'h1 ? result_ex_i : _GEN_53; // @[src/main/scala/coreGen/core/idu/id_stage.scala 772:40 773:26]
  assign rf_wdata_id_pol_o = rf_wdata_sel == 2'h1 & result_ex_pol_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 772:40 774:31]
  assign rf_we_id_o = rf_we_raw & instr_executing & ~illegal_csr_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 756:48]
  assign en_wb_o = ~_stall_id_T_6 & ~flush_id & instr_executing; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1656:40]
  assign instr_perf_count_id_o = ~(ebrk_insn | ecall_insn_dec | illegal_insn_dec | illegal_csr_insn_i |
    instr_fetch_err_i); // @[src/main/scala/coreGen/core/idu/id_stage.scala 1832:30]
  assign disable_branch_o = controller_i_disable_branch_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1106:42]
  assign decoder_i_instr_first_cycle_i = instr_valid_i & id_fsm_q == 2'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1657:38]
  assign decoder_i_instr_rdata_i = instr_rdata_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 859:38]
  assign decoder_i_instr_rdata_alu_i = instr_rdata_alu_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 860:38]
  assign decoder_i_illegal_c_insn_i = illegal_c_insn_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 861:38]
  assign controller_i_clk_i = clk_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 984:42]
  assign controller_i_rst_ni = rst_ni; // @[src/main/scala/coreGen/core/idu/id_stage.scala 985:42]
  assign controller_i_illegal_insn_i = illegal_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1008:42]
  assign controller_i_ecall_insn_i = decoder_i_ecall_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 390:30 851:38]
  assign controller_i_mret_insn_i = decoder_i_mret_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 388:29 849:38]
  assign controller_i_dret_insn_i = decoder_i_dret_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 389:29 850:38]
  assign controller_i_wfi_insn_i = decoder_i_wfi_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 391:28 852:38]
  assign controller_i_ebrk_insn_i = decoder_i_ebrk_insn_o; // @[src/main/scala/coreGen/core/idu/id_stage.scala 387:25 848:38]
  assign controller_i_csr_pipe_flush_i = csr_op_en_o & (csr_op_o == 2'h1 | csr_op_o == 2'h2) ? _T_46 : _GEN_59; // @[src/main/scala/coreGen/core/idu/id_stage.scala 921:92]
  assign controller_i_instr_valid_i = instr_valid_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1018:42]
  assign controller_i_instr_i = instr_rdata_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1019:42]
  assign controller_i_instr_compressed_i = instr_rdata_c_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1020:42]
  assign controller_i_instr_is_compressed_i = instr_is_compressed_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1021:42]
  assign controller_i_instr_fetch_err_i = instr_fetch_err_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1023:42]
  assign controller_i_instr_fetch_err_plus2_i = instr_fetch_err_plus2_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1024:42]
  assign controller_i_pc_id_i = pc_id_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1025:42]
  assign controller_i_lsu_addr_last_i = lsu_addr_last_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1042:42]
  assign controller_i_load_err_i = lsu_load_err_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1043:42]
  assign controller_i_store_err_i = lsu_store_err_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1044:42]
  assign controller_i_branch_set_i = instr_executing & _GEN_124; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1203:18 1329:30]
  assign controller_i_branch_set_spec_i = instr_executing & _GEN_124; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1204:17 1329:30]
  assign controller_i_jump_set_i = instr_executing & _GEN_129; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1206:14 1329:30]
  assign controller_i_csr_mstatus_mie_i = csr_mstatus_mie_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1054:42]
  assign controller_i_irq_pending_i = irq_pending_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1055:42]
  assign controller_i_irqs_i_timer = irqs_i_timer; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1056:42]
  assign controller_i_irqs_i_software = irqs_i_software; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1056:42]
  assign controller_i_irqs_i_external = irqs_i_external; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1056:42]
  assign controller_i_irqs_i_nmi = irqs_i_nmi; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1056:42]
  assign controller_i_priv_mode_i = priv_mode_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1073:42]
  assign controller_i_csr_mstatus_tw_i = csr_mstatus_tw_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1074:42]
  assign controller_i_stall_id_i = _stall_id_T_5 | stall_branch; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1645:117]
  assign controller_i_csr_mpvec_mode = csr_mpvec_mode; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1061:42]
  assign controller_i_instr_fetch_valid_i = fetch_valid_if_i; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1096:42]
  always @(posedge clk_i or posedge _if_id_pipe_en_q_T_2) begin
    if (_if_id_pipe_en_q_T_2) begin // @[src/main/scala/coreGen/core/idu/id_stage.scala 747:23]
      imd_val_q_0 <= 34'h0;
    end else if (imd_val_we_ex_i[0]) begin
      imd_val_q_0 <= imd_val_d_ex_i_0;
    end
  end
  always @(posedge clk_i or posedge _if_id_pipe_en_q_T_2) begin
    if (_if_id_pipe_en_q_T_2) begin // @[src/main/scala/coreGen/core/idu/id_stage.scala 1329:30]
      id_fsm_q <= 2'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1177:22 1330:{29,29} 1334:38 1345:47 1385:56 1393:38]
    end else if (instr_executing) begin // @[src/main/scala/coreGen/core/idu/id_stage.scala 1177:22]
      if (2'h0 == id_fsm_q) begin
        if (lsu_req_dec) begin
          id_fsm_q <= 2'h1;
        end else if (multdiv_en_dec) begin
          id_fsm_q <= _GEN_69;
        end else begin
          id_fsm_q <= 2'h0;
        end
      end else if (2'h1 == id_fsm_q) begin
        if (multicycle_done) begin
          id_fsm_q <= 2'h0;
        end
      end else begin
        id_fsm_q <= _id_fsm_d_T;
      end
    end else begin
      id_fsm_q <= _id_fsm_d_T;
    end
  end
  always @(posedge clk_i or posedge _if_id_pipe_en_q_T_2) begin
    if (_if_id_pipe_en_q_T_2) begin // @[src/main/scala/coreGen/core/idu/id_stage.scala 1117:47]
      lsu_req_finish_q <= 1'h0; // @[src/main/scala/coreGen/core/idu/id_stage.scala 1118:30]
    end else if (id_in_ready_o & fetch_valid_if_i) begin
      lsu_req_finish_q <= 1'h0;
    end else begin
      lsu_req_finish_q <= _GEN_61;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  imd_val_q_0 = _RAND_0[33:0];
  _RAND_1 = {1{`RANDOM}};
  id_fsm_q = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  lsu_req_finish_q = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  if (_if_id_pipe_en_q_T_2) begin
    imd_val_q_0 = 34'h0;
  end
  if (_if_id_pipe_en_q_T_2) begin
    id_fsm_q = 2'h0;
  end
  if (_if_id_pipe_en_q_T_2) begin
    lsu_req_finish_q = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module chiselmultdiv_fast(
  input         clock,
  input         reset,
  input         io_mult_en_i, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  input  [1:0]  io_operator_i, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  input  [1:0]  io_signed_mode_i, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  input  [31:0] io_op_a_i, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  input  [31:0] io_op_b_i, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  output [32:0] io_alu_operand_b_o, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  input  [33:0] io_imd_val_q_i_0, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  output [33:0] io_imd_val_d_o_0, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  output        io_imd_val_we_o_0, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  output [31:0] io_multdiv_result_o, // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
  output        io_valid_o // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 398:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  _T_2 = ~reset; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 399:43]
  wire  signed_mult = io_signed_mode_i != 2'h0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 413:38]
  reg [1:0] mult_state_q_1; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 567:31]
  wire  _T_11 = io_operator_i == 2'h0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 611:28]
  wire [15:0] mult1_op_a = io_op_a_i[15:0]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 511:30]
  wire [15:0] mult1_op_b = io_op_b_i[15:0]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 512:30]
  wire  _sign_b_T_2 = io_signed_mode_i[1] & io_op_b_i[31]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 507:35]
  wire  _GEN_40 = 2'h3 == mult_state_q_1 & _sign_b_T_2; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 575:21 581:25 629:22]
  wire  _GEN_51 = 2'h2 == mult_state_q_1 ? 1'h0 : _GEN_40; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 609:22]
  wire  _GEN_62 = 2'h1 == mult_state_q_1 ? _sign_b_T_2 : _GEN_51; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 595:22]
  wire  sign_b = 2'h0 == mult_state_q_1 ? 1'h0 : _GEN_62; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 586:22]
  wire [15:0] mult2_op_b = io_op_b_i[31:16]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 517:30]
  wire  _sign_a_T_2 = io_signed_mode_i[0] & io_op_a_i[31]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 506:35]
  wire  _GEN_39 = 2'h3 == mult_state_q_1 & _sign_a_T_2; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 574:21 581:25 628:22]
  wire  _GEN_50 = 2'h2 == mult_state_q_1 ? _sign_a_T_2 : _GEN_39; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 608:22]
  wire  _GEN_61 = 2'h1 == mult_state_q_1 ? 1'h0 : _GEN_50; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 594:22]
  wire  sign_a = 2'h0 == mult_state_q_1 ? 1'h0 : _GEN_61; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 585:22]
  wire [15:0] _accum_h_T_3 = signed_mult & io_imd_val_q_i_0[33] ? 16'hffff : 16'h0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 521:24]
  wire [15:0] _GEN_42 = 2'h3 == mult_state_q_1 ? _accum_h_T_3 : 16'h0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 631:22 407:25]
  wire [15:0] _GEN_58 = 2'h2 == mult_state_q_1 ? 16'h0 : _GEN_42; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 407:25 581:25]
  wire [15:0] _GEN_69 = 2'h1 == mult_state_q_1 ? 16'h0 : _GEN_58; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 407:25 581:25]
  wire [15:0] accum_h = 2'h0 == mult_state_q_1 ? 16'h0 : _GEN_69; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 407:25 581:25]
  wire [17:0] _GEN_41 = 2'h3 == mult_state_q_1 ? io_imd_val_q_i_0[33:16] : 18'h0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 630:22 408:25]
  wire [17:0] _GEN_57 = 2'h2 == mult_state_q_1 ? 18'h0 : _GEN_41; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 408:25 581:25]
  wire [17:0] _GEN_68 = 2'h1 == mult_state_q_1 ? 18'h0 : _GEN_57; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 408:25 581:25]
  wire [17:0] accum_l = 2'h0 == mult_state_q_1 ? 18'h0 : _GEN_68; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 408:25 581:25]
  wire [33:0] _accum_T = {accum_h,accum_l}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 522:18]
  wire [33:0] _accum_T_3 = {18'h0,io_imd_val_q_i_0[31:16]}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 596:28]
  wire [33:0] _GEN_32 = io_operator_i == 2'h0 ? _accum_T_3 : io_imd_val_q_i_0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 611:43 612:24 620:18]
  wire [33:0] _GEN_43 = 2'h3 == mult_state_q_1 ? _accum_T : io_imd_val_q_i_0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 576:21 581:25 632:22]
  wire [33:0] _GEN_52 = 2'h2 == mult_state_q_1 ? _GEN_32 : _GEN_43; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25]
  wire [33:0] _GEN_63 = 2'h1 == mult_state_q_1 ? _accum_T_3 : _GEN_52; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 596:22]
  wire [15:0] _GEN_37 = 2'h3 == mult_state_q_1 ? io_op_a_i[31:16] : mult1_op_a; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 572:21 581:25 626:22]
  wire [15:0] _GEN_48 = 2'h2 == mult_state_q_1 ? io_op_a_i[31:16] : _GEN_37; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 606:22]
  wire [15:0] _GEN_59 = 2'h1 == mult_state_q_1 ? mult1_op_a : _GEN_48; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 592:22]
  wire [15:0] mult_op_a = 2'h0 == mult_state_q_1 ? mult1_op_a : _GEN_59; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 583:22]
  wire [16:0] _mac_res_signed_T_10 = {sign_a,mult_op_a}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 569:47]
  wire [15:0] _GEN_38 = 2'h3 == mult_state_q_1 ? mult2_op_b : mult1_op_b; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 573:21 581:25 627:22]
  wire [15:0] _GEN_49 = 2'h2 == mult_state_q_1 ? mult1_op_b : _GEN_38; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 607:22]
  wire [15:0] _GEN_60 = 2'h1 == mult_state_q_1 ? mult2_op_b : _GEN_49; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 593:22]
  wire [15:0] mult_op_b = 2'h0 == mult_state_q_1 ? mult1_op_b : _GEN_60; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 584:22]
  wire [16:0] _mac_res_signed_T_12 = {sign_b,mult_op_b}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 569:79]
  wire [33:0] _mac_res_signed_T_13 = $signed(_mac_res_signed_T_10) * $signed(_mac_res_signed_T_12); // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 569:54]
  wire [33:0] _mac_res_signed_T_14 = 2'h0 == mult_state_q_1 ? 34'h0 : _GEN_63; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 569:93]
  wire [33:0] _mac_res_ext_T = $signed(_mac_res_signed_T_13) + $signed(_mac_res_signed_T_14); // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 503:35]
  wire [34:0] mac_res_ext = {{1'd0}, _mac_res_ext_T}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 405:25]
  wire [33:0] _mac_res_d_T_7 = {2'h0,mac_res_ext[15:0],io_imd_val_q_i_0[15:0]}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 599:28]
  wire [33:0] _GEN_31 = _T_11 ? _mac_res_d_T_7 : mac_res_ext[33:0]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 598:43 599:22 601:22]
  wire [1:0] _GEN_35 = io_operator_i == 2'h0 ? 2'h0 : 2'h3; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 611:43 617:24 622:24]
  wire [1:0] _GEN_46 = 2'h3 == mult_state_q_1 ? 2'h0 : mult_state_q_1; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 578:21 581:25 635:22]
  wire [33:0] _GEN_53 = 2'h2 == mult_state_q_1 ? _GEN_31 : mac_res_ext[33:0]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25]
  wire  _GEN_54 = 2'h2 == mult_state_q_1 ? _T_11 : 2'h3 == mult_state_q_1; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25]
  wire [33:0] _GEN_64 = 2'h1 == mult_state_q_1 ? _GEN_31 : _GEN_53; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25]
  wire  _GEN_66 = 2'h1 == mult_state_q_1 ? 1'h0 : _GEN_54; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 579:21 581:25]
  wire [33:0] mac_res_d = 2'h0 == mult_state_q_1 ? mac_res_ext[33:0] : _GEN_64; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 588:22]
  wire [31:0] _io_alu_operand_b_o_T = ~io_op_b_i; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 663:29]
  assign io_alu_operand_b_o = {_io_alu_operand_b_o_T,1'h1}; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 678:32]
  assign io_imd_val_d_o_0 = 2'h0 == mult_state_q_1 ? mac_res_ext[33:0] : _GEN_64; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 588:22]
  assign io_imd_val_we_o_0 = io_mult_en_i; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 450:36]
  assign io_multdiv_result_o = mac_res_d[31:0]; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 737:78]
  assign io_valid_o = 2'h0 == mult_state_q_1 ? 1'h0 : _GEN_66; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 579:21 581:25]
  always @(posedge clock or posedge _T_2) begin
    if (_T_2) begin // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 640:24]
      mult_state_q_1 <= 2'h0; // @[src/main/scala/coreGen/core/exu/muldiv_new.scala 581:25 589:22 581:25 603:22 581:25]
    end else if (io_mult_en_i) begin
      if (2'h0 == mult_state_q_1) begin
        mult_state_q_1 <= 2'h1;
      end else if (2'h1 == mult_state_q_1) begin
        mult_state_q_1 <= 2'h2;
      end else if (2'h2 == mult_state_q_1) begin
        mult_state_q_1 <= _GEN_35;
      end else begin
        mult_state_q_1 <= _GEN_46;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mult_state_q_1 = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  if (_T_2) begin
    mult_state_q_1 = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Alu(
  input  [5:0]  io_operator_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input  [31:0] io_operand_a_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input  [31:0] io_operand_b_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input  [31:0] io_operand_a_t_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input  [31:0] io_operand_b_t_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input         io_operand_a_pol_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input         io_operand_b_pol_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input         io_instr_first_cycle_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input  [32:0] io_multdiv_operand_b_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  input         io_multdiv_sel_i, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  output [31:0] io_adder_result_o, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  output [33:0] io_adder_result_ext_o, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  output [31:0] io_result_o, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  output        io_result_pol_o, // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
  output        io_comparison_result_o // @[src/main/scala/coreGen/core/exu/Alu.scala 261:14]
);
  wire  operand_a_rev_0 = io_operand_a_t_i[31]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_1 = io_operand_a_t_i[30]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_2 = io_operand_a_t_i[29]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_3 = io_operand_a_t_i[28]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_4 = io_operand_a_t_i[27]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_5 = io_operand_a_t_i[26]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_6 = io_operand_a_t_i[25]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_7 = io_operand_a_t_i[24]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_8 = io_operand_a_t_i[23]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_9 = io_operand_a_t_i[22]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_10 = io_operand_a_t_i[21]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_11 = io_operand_a_t_i[20]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_12 = io_operand_a_t_i[19]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_13 = io_operand_a_t_i[18]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_14 = io_operand_a_t_i[17]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_15 = io_operand_a_t_i[16]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_16 = io_operand_a_t_i[15]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_17 = io_operand_a_t_i[14]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_18 = io_operand_a_t_i[13]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_19 = io_operand_a_t_i[12]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_20 = io_operand_a_t_i[11]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_21 = io_operand_a_t_i[10]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_22 = io_operand_a_t_i[9]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_23 = io_operand_a_t_i[8]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_24 = io_operand_a_t_i[7]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_25 = io_operand_a_t_i[6]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_26 = io_operand_a_t_i[5]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_27 = io_operand_a_t_i[4]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_28 = io_operand_a_t_i[3]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_29 = io_operand_a_t_i[2]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_30 = io_operand_a_t_i[1]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  operand_a_rev_31 = io_operand_a_t_i[0]; // @[src/main/scala/coreGen/core/exu/Alu.scala 277:29]
  wire  _adder_op_b_negate_T = 6'h1 == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_1 = 6'hc == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_2 = 6'hd == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_3 = 6'ha == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_4 = 6'hb == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_5 = 6'h8 == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_6 = 6'h9 == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_7 = 6'he == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_8 = 6'hf == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_9 = 6'h18 == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  _adder_op_b_negate_T_11 = 6'h16 == io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire  adder_op_b_negate_res = 6'h1 == io_operator_i | 6'hc == io_operator_i | 6'hd == io_operator_i | 6'ha ==
    io_operator_i | 6'hb == io_operator_i | 6'h8 == io_operator_i | 6'h9 == io_operator_i | 6'he == io_operator_i | 6'hf
     == io_operator_i | 6'h18 == io_operator_i | 6'h19 == io_operator_i | 6'h16 == io_operator_i | 6'h17 ==
    io_operator_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 68:15]
  wire [32:0] _adder_in_a_T = {io_operand_a_t_i,1'h1}; // @[src/main/scala/coreGen/core/exu/Alu.scala 287:66]
  wire [32:0] adder_in_a = io_multdiv_sel_i ? 33'h1 : _adder_in_a_T; // @[src/main/scala/coreGen/core/exu/Alu.scala 287:20]
  wire [32:0] _operand_b_neg_T = {io_operand_b_t_i,1'h0}; // @[src/main/scala/coreGen/core/exu/Alu.scala 288:23]
  wire [32:0] operand_b_neg = _operand_b_neg_T ^ 33'h1ffffffff; // @[src/main/scala/coreGen/core/exu/Alu.scala 288:43]
  wire [32:0] _adder_in_b_T_1 = adder_op_b_negate_res ? operand_b_neg : _operand_b_neg_T; // @[src/main/scala/coreGen/core/exu/Alu.scala 289:66]
  wire [32:0] adder_in_b = io_multdiv_sel_i ? io_multdiv_operand_b_i : _adder_in_b_T_1; // @[src/main/scala/coreGen/core/exu/Alu.scala 289:20]
  wire [33:0] _io_adder_result_ext_o_T = {1'h0,adder_in_a}; // @[src/main/scala/coreGen/core/exu/Alu.scala 297:33]
  wire [33:0] _io_adder_result_ext_o_T_1 = {1'h0,adder_in_b}; // @[src/main/scala/coreGen/core/exu/Alu.scala 297:61]
  wire [31:0] adder_result = io_adder_result_ext_o[32:1]; // @[src/main/scala/coreGen/core/exu/Alu.scala 300:40]
  wire  cmp_signed_res = _adder_op_b_negate_T_3 | _adder_op_b_negate_T_5 | _adder_op_b_negate_T_7 |
    _adder_op_b_negate_T_9 | _adder_op_b_negate_T_11; // @[src/main/scala/coreGen/core/exu/Alu.scala 78:15]
  wire  is_equal = adder_result == 32'h0; // @[src/main/scala/coreGen/core/exu/Alu.scala 308:29]
  wire  is_greater_equal = ~(operand_a_rev_0 ^ io_operand_b_t_i[31]) ? ~adder_result[31] : operand_a_rev_0 ^
    cmp_signed_res; // @[src/main/scala/coreGen/core/exu/Alu.scala 311:38 312:22 314:22]
  wire  _GEN_3 = (_adder_op_b_negate_T_5 | _adder_op_b_negate_T_6 | _adder_op_b_negate_T_7 | _adder_op_b_negate_T_8) & ~
    is_greater_equal; // @[src/main/scala/coreGen/core/exu/Alu.scala 100:13 89:15 88:23]
  wire  _GEN_4 = _adder_op_b_negate_T_3 | _adder_op_b_negate_T_4 ? is_greater_equal : _GEN_3; // @[src/main/scala/coreGen/core/exu/Alu.scala 89:15 97:13]
  wire  _GEN_5 = _adder_op_b_negate_T_2 ? ~is_equal : _GEN_4; // @[src/main/scala/coreGen/core/exu/Alu.scala 89:15 94:13]
  wire  cmp_result_res = _adder_op_b_negate_T_1 ? is_equal : _GEN_5; // @[src/main/scala/coreGen/core/exu/Alu.scala 89:15 91:13]
  wire [5:0] _GEN_43 = {{1'd0}, io_operand_b_t_i[4:0]}; // @[src/main/scala/coreGen/core/exu/Alu.scala 345:27]
  wire [5:0] shift_amt_compl = 6'h20 - _GEN_43; // @[src/main/scala/coreGen/core/exu/Alu.scala 345:27]
  wire [4:0] shift_amt_4 = io_instr_first_cycle_i ? io_operand_b_t_i[4:0] : shift_amt_compl[4:0]; // @[src/main/scala/coreGen/core/exu/Alu.scala 347:22]
  wire [5:0] shift_amt = {1'h0,shift_amt_4}; // @[src/main/scala/coreGen/core/exu/Alu.scala 349:19]
  wire  shift_left = io_operator_i == 6'h7; // @[src/main/scala/coreGen/core/exu/Alu.scala 110:35]
  wire  shift_arith = io_operator_i == 6'h5; // @[src/main/scala/coreGen/core/exu/Alu.scala 107:29]
  wire [7:0] shift_operand_lo_lo = {operand_a_rev_7,operand_a_rev_6,operand_a_rev_5,operand_a_rev_4,operand_a_rev_3,
    operand_a_rev_2,operand_a_rev_1,operand_a_rev_0}; // @[src/main/scala/coreGen/core/exu/Alu.scala 356:50]
  wire [15:0] shift_operand_lo = {operand_a_rev_15,operand_a_rev_14,operand_a_rev_13,operand_a_rev_12,operand_a_rev_11,
    operand_a_rev_10,operand_a_rev_9,operand_a_rev_8,shift_operand_lo_lo}; // @[src/main/scala/coreGen/core/exu/Alu.scala 356:50]
  wire [7:0] shift_operand_hi_lo = {operand_a_rev_23,operand_a_rev_22,operand_a_rev_21,operand_a_rev_20,operand_a_rev_19
    ,operand_a_rev_18,operand_a_rev_17,operand_a_rev_16}; // @[src/main/scala/coreGen/core/exu/Alu.scala 356:50]
  wire [31:0] _shift_operand_T = {operand_a_rev_31,operand_a_rev_30,operand_a_rev_29,operand_a_rev_28,operand_a_rev_27,
    operand_a_rev_26,operand_a_rev_25,operand_a_rev_24,shift_operand_hi_lo,shift_operand_lo}; // @[src/main/scala/coreGen/core/exu/Alu.scala 356:50]
  wire [31:0] shift_operand = shift_left ? _shift_operand_T : io_operand_a_t_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 356:23]
  wire  _shift_result_ext_T_1 = shift_arith & shift_operand[31]; // @[src/main/scala/coreGen/core/exu/Alu.scala 363:49]
  wire [32:0] _shift_result_ext_T_3 = {_shift_result_ext_T_1,shift_operand}; // @[src/main/scala/coreGen/core/exu/Alu.scala 363:87]
  wire [32:0] shift_result_ext = $signed(_shift_result_ext_T_3) >>> shift_amt[4:0]; // @[src/main/scala/coreGen/core/exu/Alu.scala 363:114]
  wire  shift_result_rev_0 = shift_result_ext[31]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_1 = shift_result_ext[30]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_2 = shift_result_ext[29]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_3 = shift_result_ext[28]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_4 = shift_result_ext[27]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_5 = shift_result_ext[26]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_6 = shift_result_ext[25]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_7 = shift_result_ext[24]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_8 = shift_result_ext[23]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_9 = shift_result_ext[22]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_10 = shift_result_ext[21]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_11 = shift_result_ext[20]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_12 = shift_result_ext[19]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_13 = shift_result_ext[18]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_14 = shift_result_ext[17]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_15 = shift_result_ext[16]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_16 = shift_result_ext[15]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_17 = shift_result_ext[14]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_18 = shift_result_ext[13]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_19 = shift_result_ext[12]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_20 = shift_result_ext[11]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_21 = shift_result_ext[10]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_22 = shift_result_ext[9]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_23 = shift_result_ext[8]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_24 = shift_result_ext[7]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_25 = shift_result_ext[6]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_26 = shift_result_ext[5]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_27 = shift_result_ext[4]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_28 = shift_result_ext[3]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_29 = shift_result_ext[2]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_30 = shift_result_ext[1]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire  shift_result_rev_31 = shift_result_ext[0]; // @[src/main/scala/coreGen/core/exu/Alu.scala 367:44]
  wire [7:0] shift_result_lo_lo = {shift_result_rev_7,shift_result_rev_6,shift_result_rev_5,shift_result_rev_4,
    shift_result_rev_3,shift_result_rev_2,shift_result_rev_1,shift_result_rev_0}; // @[src/main/scala/coreGen/core/exu/Alu.scala 370:51]
  wire [15:0] shift_result_lo = {shift_result_rev_15,shift_result_rev_14,shift_result_rev_13,shift_result_rev_12,
    shift_result_rev_11,shift_result_rev_10,shift_result_rev_9,shift_result_rev_8,shift_result_lo_lo}; // @[src/main/scala/coreGen/core/exu/Alu.scala 370:51]
  wire [7:0] shift_result_hi_lo = {shift_result_rev_23,shift_result_rev_22,shift_result_rev_21,shift_result_rev_20,
    shift_result_rev_19,shift_result_rev_18,shift_result_rev_17,shift_result_rev_16}; // @[src/main/scala/coreGen/core/exu/Alu.scala 370:51]
  wire [31:0] _shift_result_T = {shift_result_rev_31,shift_result_rev_30,shift_result_rev_29,shift_result_rev_28,
    shift_result_rev_27,shift_result_rev_26,shift_result_rev_25,shift_result_rev_24,shift_result_hi_lo,shift_result_lo}; // @[src/main/scala/coreGen/core/exu/Alu.scala 370:51]
  wire [31:0] shift_result = shift_left ? _shift_result_T : shift_result_ext[31:0]; // @[src/main/scala/coreGen/core/exu/Alu.scala 370:21]
  wire  bwlogic_or = io_operator_i == 6'h3; // @[src/main/scala/coreGen/core/exu/Alu.scala 108:29]
  wire  bwlogic_and = io_operator_i == 6'h4; // @[src/main/scala/coreGen/core/exu/Alu.scala 109:30]
  wire  _AluInPol_0_T = ~io_operand_a_pol_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 391:18]
  wire  _AluInPol_0_T_1 = ~io_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 391:28]
  wire  AluInPol_0 = ~io_operand_a_pol_i & ~io_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 391:26]
  wire  AluInPol_1 = io_operand_a_pol_i & _AluInPol_0_T_1; // @[src/main/scala/coreGen/core/exu/Alu.scala 392:25]
  wire  AluInPol_2 = _AluInPol_0_T & io_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 393:26]
  wire  AluInPol_3 = io_operand_a_pol_i & io_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 394:25]
  wire [31:0] invAluIn2 = ~io_operand_b_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 396:19]
  wire [31:0] _bwlogic_result_T_3 = io_operand_a_i & io_operand_b_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 398:83]
  wire [31:0] _bwlogic_result_T_7 = io_operand_a_i & invAluIn2; // @[src/main/scala/coreGen/core/exu/Alu.scala 399:87]
  wire [31:0] _bwlogic_result_T_11 = io_operand_a_i | invAluIn2; // @[src/main/scala/coreGen/core/exu/Alu.scala 400:91]
  wire [31:0] _bwlogic_result_T_15 = io_operand_a_i | io_operand_b_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 401:95]
  wire [31:0] _bwlogic_result_T_16 = io_operand_a_i ^ io_operand_b_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 401:103]
  wire [31:0] _bwlogic_result_T_17 = bwlogic_and & AluInPol_3 | bwlogic_or & AluInPol_0 ? _bwlogic_result_T_15 :
    _bwlogic_result_T_16; // @[src/main/scala/coreGen/core/exu/Alu.scala 401:36]
  wire [31:0] _bwlogic_result_T_18 = bwlogic_and & AluInPol_1 | bwlogic_or & AluInPol_2 ? _bwlogic_result_T_11 :
    _bwlogic_result_T_17; // @[src/main/scala/coreGen/core/exu/Alu.scala 400:32]
  wire [31:0] _bwlogic_result_T_19 = bwlogic_and & AluInPol_2 | bwlogic_or & AluInPol_1 ? _bwlogic_result_T_7 :
    _bwlogic_result_T_18; // @[src/main/scala/coreGen/core/exu/Alu.scala 399:28]
  wire [31:0] bwlogic_result = bwlogic_and & AluInPol_0 | bwlogic_or & AluInPol_3 ? _bwlogic_result_T_3 :
    _bwlogic_result_T_19; // @[src/main/scala/coreGen/core/exu/Alu.scala 398:24]
  wire  _bwlogic_result_pol_T_1 = bwlogic_and ? io_operand_a_pol_i : io_operand_a_pol_i ^ io_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/Alu.scala 406:52]
  wire  bwlogic_result_pol = bwlogic_or ? io_operand_a_pol_i : _bwlogic_result_pol_T_1; // @[src/main/scala/coreGen/core/exu/Alu.scala 406:28]
  wire [31:0] _io_result_o_res_T_1 = {31'h0,cmp_result_res}; // @[src/main/scala/coreGen/core/exu/Alu.scala 155:19]
  wire [31:0] _GEN_21 = _adder_op_b_negate_T_1 | _adder_op_b_negate_T_2 | _adder_op_b_negate_T_3 |
    _adder_op_b_negate_T_4 | _adder_op_b_negate_T_5 | _adder_op_b_negate_T_6 | _adder_op_b_negate_T_7 |
    _adder_op_b_negate_T_8 ? _io_result_o_res_T_1 : 32'h0; // @[src/main/scala/coreGen/core/exu/Alu.scala 144:15 155:13]
  wire [31:0] _GEN_22 = 6'h7 == io_operator_i | 6'h6 == io_operator_i | 6'h5 == io_operator_i ? shift_result : _GEN_21; // @[src/main/scala/coreGen/core/exu/Alu.scala 144:15 152:13]
  wire [31:0] _GEN_23 = 6'h0 == io_operator_i | _adder_op_b_negate_T ? adder_result : _GEN_22; // @[src/main/scala/coreGen/core/exu/Alu.scala 144:15 149:13]
  wire [31:0] io_result_pol_o_res = 6'h2 == io_operator_i | 6'h3 == io_operator_i | 6'h4 == io_operator_i ? {{31'd0},
    bwlogic_result_pol} : 32'h0; // @[src/main/scala/coreGen/core/exu/Alu.scala 144:15 146:13]
  assign io_adder_result_o = io_adder_result_ext_o[32:1]; // @[src/main/scala/coreGen/core/exu/Alu.scala 300:40]
  assign io_adder_result_ext_o = _io_adder_result_ext_o_T + _io_adder_result_ext_o_T_1; // @[src/main/scala/coreGen/core/exu/Alu.scala 297:56]
  assign io_result_o = 6'h2 == io_operator_i | 6'h3 == io_operator_i | 6'h4 == io_operator_i ? bwlogic_result : _GEN_23; // @[src/main/scala/coreGen/core/exu/Alu.scala 144:15 146:13]
  assign io_result_pol_o = io_result_pol_o_res[0]; // @[src/main/scala/coreGen/core/exu/Alu.scala 487:21]
  assign io_comparison_result_o = _adder_op_b_negate_T_1 ? is_equal : _GEN_5; // @[src/main/scala/coreGen/core/exu/Alu.scala 89:15 91:13]
endmodule
module exu(
  input         clock,
  input         reset,
  input  [5:0]  io_alu_operator_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_alu_operand_a_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_alu_operand_b_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_alu_operand_a_t_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_alu_operand_b_t_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_alu_operand_a_pol_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_alu_operand_b_pol_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_alu_instr_first_cycle_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_bt_a_operand_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_bt_b_operand_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_branch_in_dec_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_instr_is_compressed_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [1:0]  io_multdiv_operator_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_mult_en_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_div_en_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_mult_sel_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input         io_div_sel_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [1:0]  io_multdiv_signed_mode_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_multdiv_operand_a_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [31:0] io_multdiv_operand_b_i, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  input  [33:0] io_imd_val_q_i_0, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output [33:0] io_imd_val_d_o_0, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output        io_imd_val_we_o_0, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output [31:0] io_alu_adder_result_ex_o, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output [31:0] io_result_ex_o, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output        io_result_ex_pol_o, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output [31:0] io_branch_target_o, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output        io_branch_decision_o, // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
  output        io_ex_valid_o // @[src/main/scala/coreGen/core/exu/exu.scala 52:14]
);
  wire  multdiv_i_1_clock; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire  multdiv_i_1_reset; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire  multdiv_i_1_io_mult_en_i; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [1:0] multdiv_i_1_io_operator_i; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [1:0] multdiv_i_1_io_signed_mode_i; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [31:0] multdiv_i_1_io_op_a_i; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [31:0] multdiv_i_1_io_op_b_i; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [32:0] multdiv_i_1_io_alu_operand_b_o; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [33:0] multdiv_i_1_io_imd_val_q_i_0; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [33:0] multdiv_i_1_io_imd_val_d_o_0; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire  multdiv_i_1_io_imd_val_we_o_0; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [31:0] multdiv_i_1_io_multdiv_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire  multdiv_i_1_io_valid_o; // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
  wire [5:0] alu_i_io_operator_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [31:0] alu_i_io_operand_a_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [31:0] alu_i_io_operand_b_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [31:0] alu_i_io_operand_a_t_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [31:0] alu_i_io_operand_b_t_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  alu_i_io_operand_a_pol_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  alu_i_io_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  alu_i_io_instr_first_cycle_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [32:0] alu_i_io_multdiv_operand_b_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  alu_i_io_multdiv_sel_i; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [31:0] alu_i_io_adder_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [33:0] alu_i_io_adder_result_ext_o; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire [31:0] alu_i_io_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  alu_i_io_result_pol_o; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  alu_i_io_comparison_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
  wire  multdiv_sel = io_mult_sel_i | io_div_sel_i; // @[src/main/scala/coreGen/core/exu/exu.scala 82:34]
  wire [33:0] multdiv_imd_val_d_0 = multdiv_i_1_io_imd_val_d_o_0; // @[src/main/scala/coreGen/core/exu/exu.scala 265:77 283:40 68:35]
  wire  multdiv_imd_val_we_0 = multdiv_i_1_io_imd_val_we_o_0; // @[src/main/scala/coreGen/core/exu/exu.scala 265:77 284:40 69:36]
  wire [31:0] multdiv_result = multdiv_i_1_io_multdiv_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 265:77 286:40 56:32]
  wire [31:0] alu_result = alu_i_io_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 54:24 337:32]
  wire  alu_result_pol = alu_i_io_result_pol_o; // @[src/main/scala/coreGen/core/exu/exu.scala 55:28 338:32]
  wire  alu_cmp_result = alu_i_io_comparison_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 61:28 339:32]
  wire [31:0] _bt_alu_result_T_1 = io_bt_a_operand_i + io_bt_b_operand_i; // @[src/main/scala/coreGen/core/exu/exu.scala 111:40]
  wire  _br_alu_result_notaken_T = ~io_instr_is_compressed_i; // @[src/main/scala/coreGen/core/exu/exu.scala 112:64]
  wire [31:0] _br_alu_result_notaken_T_1 = {29'h0,_br_alu_result_notaken_T,io_instr_is_compressed_i,1'h0}; // @[src/main/scala/coreGen/core/exu/exu.scala 112:53]
  wire [31:0] _br_alu_result_notaken_T_3 = io_bt_a_operand_i + _br_alu_result_notaken_T_1; // @[src/main/scala/coreGen/core/exu/exu.scala 112:48]
  wire [32:0] bt_alu_result = {{1'd0}, _bt_alu_result_T_1}; // @[src/main/scala/coreGen/core/exu/exu.scala 105:29 111:19]
  wire [31:0] _io_branch_target_o_T_4 = alu_cmp_result | ~io_branch_in_dec_i ? 32'hffffffff : 32'h0; // @[src/main/scala/coreGen/core/exu/exu.scala 118:31]
  wire [31:0] _io_branch_target_o_T_6 = _io_branch_target_o_T_4 & bt_alu_result[31:0]; // @[src/main/scala/coreGen/core/exu/exu.scala 118:73]
  wire [31:0] _io_branch_target_o_T_10 = ~alu_cmp_result & io_branch_in_dec_i ? 32'hffffffff : 32'h0; // @[src/main/scala/coreGen/core/exu/exu.scala 118:101]
  wire [32:0] br_alu_result_notaken = {{1'd0}, _br_alu_result_notaken_T_3}; // @[src/main/scala/coreGen/core/exu/exu.scala 107:37 112:27]
  wire [31:0] _io_branch_target_o_T_12 = _io_branch_target_o_T_10 & br_alu_result_notaken[31:0]; // @[src/main/scala/coreGen/core/exu/exu.scala 118:143]
  wire  multdiv_valid = multdiv_i_1_io_valid_o; // @[src/main/scala/coreGen/core/exu/exu.scala 265:77 279:40 63:31]
  chiselmultdiv_fast multdiv_i_1 ( // @[src/main/scala/coreGen/core/exu/exu.scala 266:27]
    .clock(multdiv_i_1_clock),
    .reset(multdiv_i_1_reset),
    .io_mult_en_i(multdiv_i_1_io_mult_en_i),
    .io_operator_i(multdiv_i_1_io_operator_i),
    .io_signed_mode_i(multdiv_i_1_io_signed_mode_i),
    .io_op_a_i(multdiv_i_1_io_op_a_i),
    .io_op_b_i(multdiv_i_1_io_op_b_i),
    .io_alu_operand_b_o(multdiv_i_1_io_alu_operand_b_o),
    .io_imd_val_q_i_0(multdiv_i_1_io_imd_val_q_i_0),
    .io_imd_val_d_o_0(multdiv_i_1_io_imd_val_d_o_0),
    .io_imd_val_we_o_0(multdiv_i_1_io_imd_val_we_o_0),
    .io_multdiv_result_o(multdiv_i_1_io_multdiv_result_o),
    .io_valid_o(multdiv_i_1_io_valid_o)
  );
  Alu alu_i ( // @[src/main/scala/coreGen/core/exu/exu.scala 289:21]
    .io_operator_i(alu_i_io_operator_i),
    .io_operand_a_i(alu_i_io_operand_a_i),
    .io_operand_b_i(alu_i_io_operand_b_i),
    .io_operand_a_t_i(alu_i_io_operand_a_t_i),
    .io_operand_b_t_i(alu_i_io_operand_b_t_i),
    .io_operand_a_pol_i(alu_i_io_operand_a_pol_i),
    .io_operand_b_pol_i(alu_i_io_operand_b_pol_i),
    .io_instr_first_cycle_i(alu_i_io_instr_first_cycle_i),
    .io_multdiv_operand_b_i(alu_i_io_multdiv_operand_b_i),
    .io_multdiv_sel_i(alu_i_io_multdiv_sel_i),
    .io_adder_result_o(alu_i_io_adder_result_o),
    .io_adder_result_ext_o(alu_i_io_adder_result_ext_o),
    .io_result_o(alu_i_io_result_o),
    .io_result_pol_o(alu_i_io_result_pol_o),
    .io_comparison_result_o(alu_i_io_comparison_result_o)
  );
  assign io_imd_val_d_o_0 = multdiv_sel ? multdiv_imd_val_d_0 : 34'h0; // @[src/main/scala/coreGen/core/exu/exu.scala 87:27]
  assign io_imd_val_we_o_0 = multdiv_sel & multdiv_imd_val_we_0; // @[src/main/scala/coreGen/core/exu/exu.scala 89:25]
  assign io_alu_adder_result_ex_o = alu_i_io_adder_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 335:32]
  assign io_result_ex_o = multdiv_sel ? multdiv_result : alu_result; // @[src/main/scala/coreGen/core/exu/exu.scala 96:24]
  assign io_result_ex_pol_o = multdiv_sel ? 1'h0 : alu_result_pol; // @[src/main/scala/coreGen/core/exu/exu.scala 97:28]
  assign io_branch_target_o = _io_branch_target_o_T_6 | _io_branch_target_o_T_12; // @[src/main/scala/coreGen/core/exu/exu.scala 118:95]
  assign io_branch_decision_o = alu_i_io_comparison_result_o; // @[src/main/scala/coreGen/core/exu/exu.scala 61:28 339:32]
  assign io_ex_valid_o = multdiv_sel ? multdiv_valid : 1'h1; // @[src/main/scala/coreGen/core/exu/exu.scala 342:23]
  assign multdiv_i_1_clock = clock;
  assign multdiv_i_1_reset = reset;
  assign multdiv_i_1_io_mult_en_i = io_mult_en_i; // @[src/main/scala/coreGen/core/exu/exu.scala 267:40]
  assign multdiv_i_1_io_operator_i = io_multdiv_operator_i; // @[src/main/scala/coreGen/core/exu/exu.scala 271:40]
  assign multdiv_i_1_io_signed_mode_i = io_multdiv_signed_mode_i; // @[src/main/scala/coreGen/core/exu/exu.scala 272:40]
  assign multdiv_i_1_io_op_a_i = io_multdiv_operand_a_i; // @[src/main/scala/coreGen/core/exu/exu.scala 273:40]
  assign multdiv_i_1_io_op_b_i = io_multdiv_operand_b_i; // @[src/main/scala/coreGen/core/exu/exu.scala 79:31]
  assign multdiv_i_1_io_imd_val_q_i_0 = io_imd_val_q_i_0; // @[src/main/scala/coreGen/core/exu/exu.scala 282:40]
  assign alu_i_io_operator_i = io_alu_operator_i; // @[src/main/scala/coreGen/core/exu/exu.scala 318:32]
  assign alu_i_io_operand_a_i = io_alu_operand_a_i; // @[src/main/scala/coreGen/core/exu/exu.scala 319:32]
  assign alu_i_io_operand_b_i = io_alu_operand_b_i; // @[src/main/scala/coreGen/core/exu/exu.scala 320:32]
  assign alu_i_io_operand_a_t_i = io_alu_operand_a_t_i; // @[src/main/scala/coreGen/core/exu/exu.scala 328:32]
  assign alu_i_io_operand_b_t_i = io_alu_operand_b_t_i; // @[src/main/scala/coreGen/core/exu/exu.scala 329:32]
  assign alu_i_io_operand_a_pol_i = io_alu_operand_a_pol_i; // @[src/main/scala/coreGen/core/exu/exu.scala 322:32]
  assign alu_i_io_operand_b_pol_i = io_alu_operand_b_pol_i; // @[src/main/scala/coreGen/core/exu/exu.scala 323:32]
  assign alu_i_io_instr_first_cycle_i = io_div_en_i | io_alu_instr_first_cycle_i; // @[src/main/scala/coreGen/core/exu/exu.scala 331:39]
  assign alu_i_io_multdiv_operand_b_i = multdiv_i_1_io_alu_operand_b_o; // @[src/main/scala/coreGen/core/exu/exu.scala 265:77 281:40 58:39]
  assign alu_i_io_multdiv_sel_i = io_div_en_i ? 1'h0 : multdiv_sel; // @[src/main/scala/coreGen/core/exu/exu.scala 334:38]
endmodule

module Latch #(
  parameter dataW = 35
)(
   input reset,
   input en,
   input [dataW-1:0] din,
   output [dataW-1:0] dout
);

reg [dataW-1:0] latch;

always @* begin
    if(~reset)begin
      if(dataW==35)
        latch = {2'b10,33'b0};
      else
        latch = 'b0;
    end
    if (en) begin
      latch = din;
    end
end

assign dout = latch;

endmodule
module lsu(
  input         clk_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 13:31]
  input         rst_ni, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 14:31]
  output        data_req_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 16:31]
  input         data_gnt_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 17:31]
  input         data_rvalid_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 18:31]
  input         data_err_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 19:31]
  output [31:0] data_addr_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 22:31]
  output        data_we_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 23:31]
  output [3:0]  data_be_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 24:31]
  output [31:0] data_wdata_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 25:31]
  input  [31:0] data_rdata_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 27:31]
  input         lsu_we_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 31:31]
  input  [1:0]  lsu_type_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 32:31]
  input  [31:0] lsu_wdata_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 33:31]
  input         lsu_sign_ext_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 35:31]
  output [31:0] lsu_rdata_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 37:31]
  output        lsu_rdata_pol_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 38:31]
  output        lsu_rdata_valid_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 39:31]
  output [2:0]  misresp_q_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 40:31]
  input         lsu_req_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 41:31]
  input  [31:0] adder_result_ex_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 43:31]
  output        addr_incr_req_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 44:31]
  output [31:0] addr_last_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 46:31]
  output        lsu_req_done_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 47:31]
  input         lsu_err_clean_data_flag_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 50:39]
  output        lsu_resp_valid_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 51:31]
  output        lsu_err_no_finish_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 53:33]
  input         ready_wb_i, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 56:31]
  output        load_err_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 60:31]
  output        store_err_o, // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 61:31]
  output        busy_o // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 63:31]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire  _T_1 = ~rst_ni; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 68:39]
  wire [1:0] data_offset = adder_result_ex_i[1:0]; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 72:32]
  reg  handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 75:38]
  reg  lsu_err_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 81:38]
  reg [2:0] misresp_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 87:38]
  wire [2:0] misresp_d = {1'h0,misresp_q[2:1]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 89:36]
  reg [3:0] ls_fsm_cs; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 239:38]
  wire  _T_36 = ~ready_wb_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 259:26]
  wire  _split_misaligned_access_T_5 = lsu_type_i == 2'h1 & data_offset == 2'h3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 219:62]
  wire  split_misaligned_access = lsu_type_i == 2'h0 & data_offset != 2'h0 | _split_misaligned_access_T_5; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 218:93]
  wire [1:0] _misresp_en_T = split_misaligned_access ? 2'h2 : 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 262:43]
  wire [1:0] _misresp_en_T_1 = split_misaligned_access ? 2'h1 : 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 266:43]
  wire [1:0] _GEN_41 = ~ready_wb_i ? _misresp_en_T : _misresp_en_T_1; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 259:38 262:37 266:37]
  wire [1:0] _GEN_49 = data_gnt_i ? _GEN_41 : _GEN_41; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 256:17]
  wire [1:0] _GEN_59 = lsu_req_i ? _GEN_49 : 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 234:25]
  wire [1:0] _GEN_69 = data_gnt_i ? 2'h2 : 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 234:25 315:35 318:33]
  wire [1:0] _GEN_75 = data_rvalid_i ? 2'h0 : _GEN_69; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 234:25 306:32]
  wire [1:0] _GEN_155 = 4'h6 == ls_fsm_cs ? _GEN_75 : 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 234:25 242:5]
  wire [1:0] _GEN_163 = 4'h5 == ls_fsm_cs ? 2'h0 : _GEN_155; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire [1:0] misresp_en = 4'h0 == ls_fsm_cs ? _GEN_59 : _GEN_163; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _T_7 = ~handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 104:18]
  wire  _T_8 = 2'h0 == data_offset; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17]
  wire  _T_9 = 2'h1 == data_offset; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17]
  wire  _T_10 = 2'h2 == data_offset; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17]
  wire  _T_11 = 2'h3 == data_offset; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17]
  wire [3:0] _GEN_3 = 2'h3 == data_offset ? 4'h8 : 4'hf; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17 111:44 99:27]
  wire [3:0] _GEN_4 = 2'h2 == data_offset ? 4'hc : _GEN_3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17 110:44]
  wire [3:0] _GEN_5 = 2'h1 == data_offset ? 4'he : _GEN_4; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17 109:44]
  wire [3:0] _GEN_6 = 2'h0 == data_offset ? 4'hf : _GEN_5; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 107:17 108:44]
  wire [3:0] _GEN_7 = _T_11 ? 4'h7 : 4'hf; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 116:17 120:44 99:27]
  wire [3:0] _GEN_8 = _T_10 ? 4'h3 : _GEN_7; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 116:17 119:44]
  wire [3:0] _GEN_9 = _T_9 ? 4'h1 : _GEN_8; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 116:17 118:44]
  wire [3:0] _GEN_10 = _T_8 ? 4'h0 : _GEN_9; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 116:17 117:44]
  wire [3:0] _GEN_11 = _T_7 ? _GEN_6 : _GEN_10; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 105:13]
  wire [3:0] _GEN_14 = _T_9 ? 4'h6 : _GEN_4; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 130:16 132:43]
  wire [3:0] _GEN_15 = _T_8 ? 4'h3 : _GEN_14; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 130:16 131:43]
  wire [3:0] _GEN_16 = _T_7 ? _GEN_15 : 4'h1; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 128:12 138:25]
  wire [3:0] _GEN_18 = _T_10 ? 4'h4 : _GEN_3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 145:13 148:39]
  wire [3:0] _GEN_19 = _T_9 ? 4'h2 : _GEN_18; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 145:13 147:39]
  wire [3:0] _GEN_20 = _T_8 ? 4'h1 : _GEN_19; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 145:13 146:39]
  wire [3:0] _GEN_21 = 2'h2 == lsu_type_i ? _GEN_20 : 4'hf; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 101:5 99:27]
  wire [3:0] _GEN_22 = 2'h1 == lsu_type_i ? _GEN_16 : _GEN_21; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 101:5]
  wire [31:0] _data_wdata_T_4 = {lsu_wdata_i[7:0],lsu_wdata_i[31:8]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 158:60]
  wire [31:0] _data_wdata_T_7 = {lsu_wdata_i[23:0],lsu_wdata_i[31:24]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 158:100]
  wire [31:0] _data_wdata_T_8 = data_offset[1] ? _data_wdata_T_4 : _data_wdata_T_7; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 158:41]
  wire [31:0] _data_wdata_T_12 = {lsu_wdata_i[15:0],lsu_wdata_i[31:16]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 159:47]
  wire [31:0] _data_wdata_T_13 = data_offset[1] ? _data_wdata_T_12 : lsu_wdata_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 159:28]
  reg  data_we_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 172:36]
  wire  _rdata_update_T = ~data_we_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 376:33]
  wire  _GEN_86 = data_rvalid_i & ~data_we_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 370:52 376:30 163:35]
  wire  _GEN_113 = 4'h3 == ls_fsm_cs ? 1'h0 : 4'h4 == ls_fsm_cs & _GEN_86; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  wire  _GEN_119 = 4'h2 == ls_fsm_cs ? _GEN_86 : _GEN_113; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_131 = 4'h1 == ls_fsm_cs ? 1'h0 : _GEN_119; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  wire  _GEN_140 = 4'h7 == ls_fsm_cs ? 1'h0 : _GEN_131; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  wire  _GEN_149 = 4'h8 == ls_fsm_cs ? 1'h0 : _GEN_140; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  wire  _GEN_159 = 4'h6 == ls_fsm_cs ? 1'h0 : _GEN_149; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  wire  _GEN_169 = 4'h5 == ls_fsm_cs ? 1'h0 : _GEN_159; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  wire  rdata_update = 4'h0 == ls_fsm_cs ? 1'h0 : _GEN_169; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 163:35 242:5]
  reg [23:0] rdata_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 164:36]
  wire  _GEN_39 = ~ready_wb_i ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 259:38 260:37 264:37]
  wire  _GEN_47 = data_gnt_i & _GEN_39; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 256:17]
  wire  _GEN_57 = lsu_req_i & _GEN_47; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 230:25]
  wire  _GEN_64 = data_rvalid_i & data_gnt_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 287:32]
  wire  _GEN_122 = 4'h2 == ls_fsm_cs ? 1'h0 : 4'h3 == ls_fsm_cs & data_gnt_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 230:25 242:5]
  wire  _GEN_126 = 4'h1 == ls_fsm_cs ? data_gnt_i : _GEN_122; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_132 = 4'h7 == ls_fsm_cs ? data_rvalid_i : _GEN_126; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_141 = 4'h8 == ls_fsm_cs ? data_rvalid_i : _GEN_132; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_152 = 4'h6 == ls_fsm_cs ? _GEN_64 : _GEN_141; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_162 = 4'h5 == ls_fsm_cs ? _GEN_64 : _GEN_152; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  ctrl_update = 4'h0 == ls_fsm_cs ? _GEN_57 : _GEN_162; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  reg [1:0] rdata_offset_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 169:36]
  reg [1:0] data_type_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 170:36]
  reg  data_sign_ext_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 171:36]
  wire  _GEN_55 = lsu_req_i & data_gnt_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 175:35]
  wire  _addr_update_T_1 = ~data_err_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 380:45]
  wire  _GEN_88 = data_rvalid_i & (data_gnt_i & ~data_err_i); // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 370:52 380:29 175:35]
  wire  _GEN_90 = data_gnt_i & ~lsu_err_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 175:35 397:50 399:37]
  wire  _GEN_96 = data_rvalid_i & _addr_update_T_1; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 414:34 420:33 175:35]
  wire  _GEN_103 = 4'h4 == ls_fsm_cs & _GEN_96; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 175:35 242:5]
  wire  _GEN_108 = 4'h3 == ls_fsm_cs ? _GEN_90 : _GEN_103; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_120 = 4'h2 == ls_fsm_cs ? _GEN_88 : _GEN_108; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_125 = 4'h1 == ls_fsm_cs ? data_gnt_i : _GEN_120; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_135 = 4'h7 == ls_fsm_cs ? 1'h0 : _GEN_125; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 175:35 242:5]
  wire  _GEN_145 = 4'h8 == ls_fsm_cs ? 1'h0 : _GEN_135; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 175:35 242:5]
  wire  _GEN_154 = 4'h6 == ls_fsm_cs ? data_gnt_i : _GEN_145; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_165 = 4'h5 == ls_fsm_cs ? 1'h0 : _GEN_154; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 175:35 242:5]
  wire  addr_update = 4'h0 == ls_fsm_cs ? _GEN_55 : _GEN_165; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  reg [31:0] addr_last_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 176:36]
  wire [31:0] _rdata_w_ext_T_8 = {data_rdata_i[23:0],rdata_q[23:16]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 183:67]
  wire [31:0] _rdata_w_ext_T_15 = {data_rdata_i[7:0],rdata_q}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 183:146]
  wire [31:0] _rdata_w_ext_T_16 = rdata_offset_q[1] ? _rdata_w_ext_T_8 : _rdata_w_ext_T_15; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 183:45]
  wire [31:0] _rdata_w_ext_T_24 = {data_rdata_i[15:0],rdata_q[23:8]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 184:50]
  wire [31:0] _rdata_w_ext_T_25 = rdata_offset_q[1] ? _rdata_w_ext_T_24 : data_rdata_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 184:28]
  wire [31:0] rdata_w_ext = rdata_offset_q[0] ? _rdata_w_ext_T_16 : _rdata_w_ext_T_25; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 183:23]
  wire [31:0] _rdata_h_ext_T_3 = {16'h0,data_rdata_i[15:0]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 188:35]
  wire  rdata_h_ext_15 = data_sign_ext_q & data_rdata_i[15]; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 190:43]
  wire  rdata_h_ext_23 = data_sign_ext_q & data_rdata_i[23]; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 191:43]
  wire  rdata_h_ext_31 = data_sign_ext_q & data_rdata_i[31]; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 192:43]
  wire  rdata_h_ext_7 = data_sign_ext_q & data_rdata_i[7]; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 193:43]
  wire  _T_27 = 2'h0 == rdata_offset_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5]
  wire [15:0] _rdata_h_ext_T_5 = rdata_h_ext_15 ? 16'hffff : 16'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 197:50]
  wire [31:0] _rdata_h_ext_T_7 = {_rdata_h_ext_T_5,data_rdata_i[15:0]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 197:45]
  wire  _T_28 = 2'h1 == rdata_offset_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5]
  wire [15:0] _rdata_h_ext_T_9 = rdata_h_ext_23 ? 16'hffff : 16'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 198:50]
  wire [31:0] _rdata_h_ext_T_11 = {_rdata_h_ext_T_9,data_rdata_i[23:8]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 198:45]
  wire  _T_29 = 2'h2 == rdata_offset_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5]
  wire [15:0] _rdata_h_ext_T_13 = rdata_h_ext_31 ? 16'hffff : 16'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 199:50]
  wire [31:0] _rdata_h_ext_T_15 = {_rdata_h_ext_T_13,data_rdata_i[31:16]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 199:45]
  wire  _T_30 = 2'h3 == rdata_offset_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5]
  wire [15:0] _rdata_h_ext_T_17 = rdata_h_ext_7 ? 16'hffff : 16'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 200:50]
  wire [31:0] _rdata_h_ext_T_24 = {_rdata_h_ext_T_17,data_rdata_i[7:0],rdata_q[23:16]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 200:45]
  wire [31:0] _GEN_31 = 2'h3 == rdata_offset_q ? _rdata_h_ext_T_24 : _rdata_h_ext_T_3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 188:31 196:5 200:39]
  wire [31:0] _GEN_32 = 2'h2 == rdata_offset_q ? _rdata_h_ext_T_15 : _GEN_31; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5 199:39]
  wire [31:0] _GEN_33 = 2'h1 == rdata_offset_q ? _rdata_h_ext_T_11 : _GEN_32; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5 198:39]
  wire [31:0] rdata_h_ext = 2'h0 == rdata_offset_q ? _rdata_h_ext_T_7 : _GEN_33; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 196:5 197:39]
  wire [31:0] _rdata_b_ext_T_3 = {24'h0,data_rdata_i[7:0]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 204:35]
  wire [23:0] _rdata_b_ext_T_5 = rdata_h_ext_7 ? 24'hffffff : 24'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 208:50]
  wire [31:0] _rdata_b_ext_T_7 = {_rdata_b_ext_T_5,data_rdata_i[7:0]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 208:45]
  wire [23:0] _rdata_b_ext_T_9 = rdata_h_ext_15 ? 24'hffffff : 24'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 209:50]
  wire [31:0] _rdata_b_ext_T_11 = {_rdata_b_ext_T_9,data_rdata_i[15:8]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 209:45]
  wire [23:0] _rdata_b_ext_T_13 = rdata_h_ext_23 ? 24'hffffff : 24'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 210:50]
  wire [31:0] _rdata_b_ext_T_15 = {_rdata_b_ext_T_13,data_rdata_i[23:16]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 210:45]
  wire [23:0] _rdata_b_ext_T_17 = rdata_h_ext_31 ? 24'hffffff : 24'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 211:50]
  wire [31:0] _rdata_b_ext_T_19 = {_rdata_b_ext_T_17,data_rdata_i[31:24]}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 211:45]
  wire [31:0] _GEN_35 = _T_30 ? _rdata_b_ext_T_19 : _rdata_b_ext_T_3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 204:31 207:5 211:39]
  wire [31:0] _GEN_36 = _T_29 ? _rdata_b_ext_T_15 : _GEN_35; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 207:5 210:39]
  wire [31:0] _GEN_37 = _T_28 ? _rdata_b_ext_T_11 : _GEN_36; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 207:5 209:39]
  wire [31:0] rdata_b_ext = _T_27 ? _rdata_b_ext_T_7 : _GEN_37; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 207:5 208:39]
  wire [31:0] _data_rdata_ext_T_2 = data_type_q[0] ? rdata_h_ext : rdata_w_ext; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 216:32]
  wire [3:0] _ls_fsm_ns_T = split_misaligned_access ? 4'h8 : 4'h7; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 261:43]
  wire [3:0] _ls_fsm_ns_T_1 = split_misaligned_access ? 4'h2 : 4'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 265:43]
  wire [3:0] _ls_fsm_ns_T_2 = split_misaligned_access ? 4'h6 : 4'h5; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 273:43]
  wire [3:0] _ls_fsm_ns_T_3 = split_misaligned_access ? 4'h1 : 4'h3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 277:43]
  wire  _GEN_46 = data_gnt_i ? split_misaligned_access : handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 256:17 227:25 258:41]
  wire  _GEN_56 = lsu_req_i ? _GEN_46 : handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 227:25]
  wire  _GEN_67 = data_gnt_i | handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 227:25 307:33 309:41]
  wire [3:0] _GEN_68 = data_gnt_i ? 4'h2 : 4'h1; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 307:33 311:33 313:33]
  wire [3:0] _GEN_70 = data_gnt_i ? 4'h8 : 4'h6; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 305:23 315:35 319:33]
  wire [3:0] _GEN_77 = data_rvalid_i ? 4'h2 : 4'h8; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 325:32 328:27 332:27]
  wire [3:0] _GEN_78 = data_rvalid_i ? 4'h0 : 4'h7; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 338:32 340:27 343:27]
  wire [3:0] _ls_fsm_ns_T_7 = data_gnt_i ? 4'h0 : 4'h3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 378:33]
  wire [3:0] _GEN_82 = data_gnt_i ? 4'h4 : 4'h2; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 385:17 368:23 386:31]
  wire  _GEN_83 = data_gnt_i ? 1'h0 : handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 385:17 227:25 387:41]
  wire  _GEN_85 = data_rvalid_i ? data_err_i : lsu_err_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 229:15 370:52 374:27]
  wire [3:0] _GEN_87 = data_rvalid_i ? _ls_fsm_ns_T_7 : _GEN_82; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 370:52 378:27]
  wire  _GEN_89 = data_rvalid_i ? ~data_gnt_i : _GEN_83; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 370:52 382:37]
  wire [3:0] _GEN_98 = data_rvalid_i ? 4'h0 : 4'h4; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 412:23 414:34 424:29]
  wire [3:0] _GEN_100 = 4'h4 == ls_fsm_cs ? _GEN_98 : 4'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 222:35 242:5]
  wire  _GEN_102 = 4'h4 == ls_fsm_cs ? _GEN_85 : lsu_err_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 229:15 242:5]
  wire  _GEN_105 = 4'h3 == ls_fsm_cs & handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5 394:29]
  wire [3:0] _GEN_107 = 4'h3 == ls_fsm_cs ? _ls_fsm_ns_T_7 : _GEN_100; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_109 = 4'h3 == ls_fsm_cs ? _GEN_83 : handle_misaligned_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 227:25 242:5]
  wire  _GEN_112 = 4'h3 == ls_fsm_cs ? lsu_err_q : _GEN_102; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 229:15 242:5]
  wire  _GEN_114 = 4'h2 == ls_fsm_cs | 4'h3 == ls_fsm_cs; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5 366:24]
  wire  _GEN_115 = 4'h2 == ls_fsm_cs | _GEN_105; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5 367:29]
  wire [3:0] _GEN_116 = 4'h2 == ls_fsm_cs ? _GEN_87 : _GEN_107; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_118 = 4'h2 == ls_fsm_cs ? _GEN_85 : _GEN_112; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_121 = 4'h2 == ls_fsm_cs ? _GEN_89 : _GEN_109; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_123 = 4'h1 == ls_fsm_cs | _GEN_114; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5 349:24]
  wire [3:0] _GEN_124 = 4'h1 == ls_fsm_cs ? _GEN_68 : _GEN_116; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_127 = 4'h1 == ls_fsm_cs ? _GEN_67 : _GEN_121; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_128 = 4'h1 == ls_fsm_cs ? 1'h0 : _GEN_115; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 225:25 242:5]
  wire  _GEN_130 = 4'h1 == ls_fsm_cs ? lsu_err_q : _GEN_118; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 229:15 242:5]
  wire [3:0] _GEN_133 = 4'h7 == ls_fsm_cs ? _GEN_78 : _GEN_124; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_134 = 4'h7 == ls_fsm_cs ? 1'h0 : _GEN_123; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 224:25 242:5]
  wire  _GEN_136 = 4'h7 == ls_fsm_cs ? handle_misaligned_q : _GEN_127; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 227:25 242:5]
  wire  _GEN_137 = 4'h7 == ls_fsm_cs ? 1'h0 : _GEN_128; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 225:25 242:5]
  wire  _GEN_139 = 4'h7 == ls_fsm_cs ? lsu_err_q : _GEN_130; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 229:15 242:5]
  wire  _GEN_142 = 4'h8 == ls_fsm_cs ? data_rvalid_i : _GEN_136; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_144 = 4'h8 == ls_fsm_cs ? 1'h0 : _GEN_134; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 224:25 242:5]
  wire  _GEN_146 = 4'h8 == ls_fsm_cs ? 1'h0 : _GEN_137; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 225:25 242:5]
  wire  _GEN_150 = 4'h6 == ls_fsm_cs | _GEN_144; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5 304:24]
  wire  _GEN_153 = 4'h6 == ls_fsm_cs ? _GEN_67 : _GEN_142; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  wire  _GEN_156 = 4'h6 == ls_fsm_cs ? 1'h0 : _GEN_146; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 225:25 242:5]
  wire  _GEN_160 = 4'h5 == ls_fsm_cs | _GEN_150; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5 285:24]
  wire  _GEN_164 = 4'h5 == ls_fsm_cs ? handle_misaligned_q : _GEN_153; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 227:25 242:5]
  wire  _GEN_166 = 4'h5 == ls_fsm_cs ? 1'h0 : _GEN_156; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 225:25 242:5]
  wire  handle_misaligned_d = 4'h0 == ls_fsm_cs ? _GEN_56 : _GEN_164; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  reg  data_err_flag; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 429:32]
  wire  _GEN_182 = data_rvalid_i ? 1'h0 : data_err_flag; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 432:30 433:23 429:32]
  wire  _T_53 = data_req_o & data_gnt_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 438:21]
  wire  _T_54 = ~handle_misaligned_d; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 438:36]
  wire  _T_57 = misresp_q != 3'h2 & data_rvalid_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 439:39]
  wire  data_or_pmp_err = lsu_err_q | data_err_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 454:37]
  wire  _load_err_o_T_3 = ~data_err_flag; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 473:69]
  assign data_req_o = 4'h0 == ls_fsm_cs ? lsu_req_i : _GEN_160; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
  assign data_addr_o = {adder_result_ex_i[31:2],2'h0}; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 466:34]
  assign data_we_o = lsu_we_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 470:15]
  assign data_be_o = 2'h0 == lsu_type_i | 2'h3 == lsu_type_i ? _GEN_11 : _GEN_22; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 101:5]
  assign data_wdata_o = data_offset[0] ? _data_wdata_T_8 : _data_wdata_T_13; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 158:22]
  assign lsu_rdata_o = data_type_q[1] ? rdata_b_ext : _data_rdata_ext_T_2; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 215:26]
  assign lsu_rdata_pol_o = 1'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 463:21]
  assign lsu_rdata_valid_o = _T_57 & ~data_or_pmp_err & _rdata_update_T & ~lsu_err_clean_data_flag_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 461:99]
  assign misresp_q_o = misresp_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 488:17]
  assign addr_incr_req_o = 4'h0 == ls_fsm_cs ? 1'h0 : _GEN_166; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 225:25 242:5]
  assign addr_last_o = addr_last_q; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 177:17]
  assign lsu_req_done_o = _T_53 & _T_54; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 485:47]
  assign lsu_resp_valid_o = data_rvalid_i; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 456:40]
  assign lsu_err_no_finish_o = data_err_flag; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 478:25]
  assign load_err_o = data_or_pmp_err & _rdata_update_T & lsu_resp_valid_o & ~data_err_flag; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 473:67]
  assign store_err_o = data_or_pmp_err & data_we_q & lsu_resp_valid_o & _load_err_o_T_3; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 474:67]
  assign busy_o = ls_fsm_cs != 4'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 475:25]
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      handle_misaligned_q <= 1'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 256:17 227:{25,25} 258:41]
    end else if (4'h0 == ls_fsm_cs) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (lsu_req_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 227:25]
        if (data_gnt_i) begin
          handle_misaligned_q <= split_misaligned_access;
        end
      end
    end else if (!(4'h5 == ls_fsm_cs)) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (4'h6 == ls_fsm_cs) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
        handle_misaligned_q <= _GEN_67;
      end else if (4'h8 == ls_fsm_cs) begin
        handle_misaligned_q <= data_rvalid_i;
      end else begin
        handle_misaligned_q <= _GEN_136;
      end
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      lsu_err_q <= 1'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 229:15 252:27]
    end else if (4'h0 == ls_fsm_cs) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (lsu_req_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 229:15]
        lsu_err_q <= 1'h0;
      end
    end else if (!(4'h5 == ls_fsm_cs)) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (!(4'h6 == ls_fsm_cs)) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
        if (!(4'h8 == ls_fsm_cs)) begin
          lsu_err_q <= _GEN_139;
        end
      end
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 90:34]
      misresp_q <= 3'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 91:19]
    end else if (misresp_en == 2'h1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 92:40]
      misresp_q <= 3'h2; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 93:19]
    end else if (misresp_en == 2'h2) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 94:30]
      misresp_q <= 3'h4; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 95:19]
    end else if (data_rvalid_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 87:38]
      misresp_q <= misresp_d;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      ls_fsm_cs <= 4'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 249:13 256:17 247:23 259:38 261:37 265:37 270:38 273:37 277:37]
    end else if (4'h0 == ls_fsm_cs) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (lsu_req_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 287:32]
        if (data_gnt_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 288:33]
          if (~ready_wb_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 291:33]
            ls_fsm_cs <= _ls_fsm_ns_T;
          end else begin
            ls_fsm_cs <= _ls_fsm_ns_T_1;
          end
        end else if (_T_36) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 293:33]
          ls_fsm_cs <= _ls_fsm_ns_T_2;
        end else begin
          ls_fsm_cs <= _ls_fsm_ns_T_3;
        end
      end else begin
        ls_fsm_cs <= 4'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 286:24 295:35 298:33]
      end
    end else if (4'h5 == ls_fsm_cs) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (data_rvalid_i) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 306:32]
        if (data_gnt_i) begin
          ls_fsm_cs <= _ls_fsm_ns_T_1;
        end else begin
          ls_fsm_cs <= _ls_fsm_ns_T_3;
        end
      end else if (data_gnt_i) begin
        ls_fsm_cs <= _ls_fsm_ns_T;
      end else begin
        ls_fsm_cs <= 4'h5;
      end
    end else if (4'h6 == ls_fsm_cs) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 242:5]
      if (data_rvalid_i) begin
        ls_fsm_cs <= _GEN_68;
      end else begin
        ls_fsm_cs <= _GEN_70;
      end
    end else if (4'h8 == ls_fsm_cs) begin
      ls_fsm_cs <= _GEN_77;
    end else begin
      ls_fsm_cs <= _GEN_133;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 172:36]
      data_we_q <= 1'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 172:36]
    end else if (ctrl_update) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 172:36]
      data_we_q <= lsu_we_i;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 164:36]
      rdata_q <= 24'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 164:36]
    end else if (rdata_update) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 164:36]
      rdata_q <= data_rdata_i[31:8];
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 169:36]
      rdata_offset_q <= 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 169:36]
    end else if (ctrl_update) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 169:36]
      rdata_offset_q <= data_offset;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 170:36]
      data_type_q <= 2'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 170:36]
    end else if (ctrl_update) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 170:36]
      data_type_q <= lsu_type_i;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 171:36]
      data_sign_ext_q <= 1'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 171:36]
    end else if (ctrl_update) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 171:36]
      data_sign_ext_q <= lsu_sign_ext_i;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 176:36]
      addr_last_q <= 32'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 176:36]
    end else if (addr_update) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 176:36]
      addr_last_q <= adder_result_ex_i;
    end
  end
  always @(posedge clk_i or posedge _T_1) begin
    if (_T_1) begin // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 430:46]
      data_err_flag <= 1'h0; // @[src/main/scala/coreGen/core/lsu/LoadStoreUnit.scala 431:23]
    end else begin
      data_err_flag <= misresp_q == 3'h2 & data_err_i | _GEN_182;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  handle_misaligned_q = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  lsu_err_q = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  misresp_q = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  ls_fsm_cs = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  data_we_q = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rdata_q = _RAND_5[23:0];
  _RAND_6 = {1{`RANDOM}};
  rdata_offset_q = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  data_type_q = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  data_sign_ext_q = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  addr_last_q = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  data_err_flag = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  if (_T_1) begin
    handle_misaligned_q = 1'h0;
  end
  if (_T_1) begin
    lsu_err_q = 1'h0;
  end
  if (_T_1) begin
    misresp_q = 3'h0;
  end
  if (_T_1) begin
    ls_fsm_cs = 4'h0;
  end
  if (_T_1) begin
    data_we_q = 1'h0;
  end
  if (_T_1) begin
    rdata_q = 24'h0;
  end
  if (_T_1) begin
    rdata_offset_q = 2'h0;
  end
  if (_T_1) begin
    data_type_q = 2'h0;
  end
  if (_T_1) begin
    data_sign_ext_q = 1'h0;
  end
  if (_T_1) begin
    addr_last_q = 32'h0;
  end
  if (_T_1) begin
    data_err_flag = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module wb(
  input         io_en_wb_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_instr_perf_count_id_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  output        io_perf_instr_ret_wb_o, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input  [4:0]  io_rf_waddr_id_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input  [31:0] io_rf_wdata_id_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_rf_wdata_id_pol_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_rf_we_id_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input  [31:0] io_rf_wdata_lsu_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_rf_wdata_lsu_pol_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_rf_we_lsu_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  output [4:0]  io_rf_waddr_wb_o, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  output [31:0] io_rf_wdata_wb_o, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  output        io_rf_wdata_wb_pol_o, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  output        io_rf_we_wb_o, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_lsu_resp_valid_i, // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
  input         io_lsu_resp_err_i // @[src/main/scala/coreGen/core/wb/WriteBack.scala 25:16]
);
  wire  _rf_we_wb_T = io_rf_we_id_i | io_rf_we_lsu_i; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 246:66]
  wire [31:0] _io_rf_wdata_wb_o_T = io_rf_we_id_i ? io_rf_wdata_id_i : io_rf_wdata_lsu_i; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 315:68]
  wire  _io_rf_wdata_wb_pol_o_T = io_rf_we_id_i ? io_rf_wdata_id_pol_i : io_rf_wdata_lsu_pol_i; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 317:68]
  assign io_perf_instr_ret_wb_o = io_instr_perf_count_id_i & io_en_wb_i & ~(io_lsu_resp_valid_i & io_lsu_resp_err_i); // @[src/main/scala/coreGen/core/wb/WriteBack.scala 249:82]
  assign io_rf_waddr_wb_o = io_rf_waddr_id_i; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 238:40]
  assign io_rf_wdata_wb_o = _rf_we_wb_T ? _io_rf_wdata_wb_o_T : 32'h0; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 315:55]
  assign io_rf_wdata_wb_pol_o = _rf_we_wb_T & _io_rf_wdata_wb_pol_o_T; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 317:55]
  assign io_rf_we_wb_o = io_rf_we_id_i | io_rf_we_lsu_i; // @[src/main/scala/coreGen/core/wb/WriteBack.scala 307:70]
endmodule
module csrr(
  input        clock,
  input        reset,
  input  [6:0] wr_data_i, // @[src/main/scala/coreGen/core/csr.scala 37:27]
  input        wr_en_i, // @[src/main/scala/coreGen/core/csr.scala 38:27]
  output [6:0] rd_data_o // @[src/main/scala/coreGen/core/csr.scala 40:27]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [6:0] rdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  assign rd_data_o = rdata_q; // @[src/main/scala/coreGen/core/csr.scala 55:15]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= 7'h20; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (wr_en_i) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= wr_data_i;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdata_q = _RAND_0[6:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rdata_q = 7'h20;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module csrr_1(
  input         clock,
  input         reset,
  input  [31:0] wr_data_i, // @[src/main/scala/coreGen/core/csr.scala 37:27]
  input         wr_en_i, // @[src/main/scala/coreGen/core/csr.scala 38:27]
  output [31:0] rd_data_o // @[src/main/scala/coreGen/core/csr.scala 40:27]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] rdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  assign rd_data_o = rdata_q; // @[src/main/scala/coreGen/core/csr.scala 55:15]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (wr_en_i) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= wr_data_i;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdata_q = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rdata_q = 32'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module csrr_2(
  input         clock,
  input         reset,
  input  [19:0] wr_data_i, // @[src/main/scala/coreGen/core/csr.scala 37:27]
  input         wr_en_i, // @[src/main/scala/coreGen/core/csr.scala 38:27]
  output [19:0] rd_data_o // @[src/main/scala/coreGen/core/csr.scala 40:27]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [19:0] rdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  assign rd_data_o = rdata_q; // @[src/main/scala/coreGen/core/csr.scala 55:15]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= 20'h10000; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (wr_en_i) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= wr_data_i;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdata_q = _RAND_0[19:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rdata_q = 20'h10000;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module csrr_5(
  input        clock,
  input        reset,
  input  [5:0] wr_data_i, // @[src/main/scala/coreGen/core/csr.scala 37:27]
  input        wr_en_i, // @[src/main/scala/coreGen/core/csr.scala 38:27]
  output [5:0] rd_data_o // @[src/main/scala/coreGen/core/csr.scala 40:27]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] rdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  assign rd_data_o = rdata_q; // @[src/main/scala/coreGen/core/csr.scala 55:15]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= 6'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (wr_en_i) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= wr_data_i;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdata_q = _RAND_0[5:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rdata_q = 6'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module csrr_7(
  input         clock,
  input         reset,
  input  [31:0] wr_data_i, // @[src/main/scala/coreGen/core/csr.scala 37:27]
  input         wr_en_i, // @[src/main/scala/coreGen/core/csr.scala 38:27]
  output [31:0] rd_data_o // @[src/main/scala/coreGen/core/csr.scala 40:27]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] rdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  assign rd_data_o = rdata_q; // @[src/main/scala/coreGen/core/csr.scala 55:15]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= 32'h1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (wr_en_i) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      rdata_q <= wr_data_i;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdata_q = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rdata_q = 32'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module csrc(
  input         clock,
  input         reset,
  input         counter_inc_i, // @[src/main/scala/coreGen/core/csr.scala 68:31]
  input         counterh_we_i, // @[src/main/scala/coreGen/core/csr.scala 69:31]
  input         counter_we_i, // @[src/main/scala/coreGen/core/csr.scala 70:31]
  input  [31:0] counter_val_i, // @[src/main/scala/coreGen/core/csr.scala 71:31]
  output [63:0] counter_val_o // @[src/main/scala/coreGen/core/csr.scala 73:31]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  we = counter_we_i | counterh_we_i; // @[src/main/scala/coreGen/core/csr.scala 82:26]
  reg [63:0] counter_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  wire [63:0] _counter_load_T_1 = {counter_val_i,counter_q[31:0]}; // @[src/main/scala/coreGen/core/csr.scala 83:50]
  wire [63:0] _counter_load_T_3 = {counter_q[63:32],counter_val_i}; // @[src/main/scala/coreGen/core/csr.scala 83:83]
  wire [63:0] counter_upd = counter_q + 64'h1; // @[src/main/scala/coreGen/core/csr.scala 85:55]
  assign counter_val_o = counter_q; // @[src/main/scala/coreGen/core/csr.scala 76:33 97:33]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/csr.scala 87:32]
      counter_q <= 64'h0; // @[src/main/scala/coreGen/core/csr.scala 83:32]
    end else if (we) begin // @[src/main/scala/coreGen/core/csr.scala 88:40]
      if (counterh_we_i) begin
        counter_q <= _counter_load_T_1;
      end else begin
        counter_q <= _counter_load_T_3;
      end
    end else if (counter_inc_i) begin
      counter_q <= counter_upd;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  counter_q = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    counter_q = 64'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module csr(
  input         clock,
  input         reset,
  output [1:0]  priv_mode_id_o, // @[src/main/scala/coreGen/core/csr.scala 182:35]
  output [1:0]  priv_mode_if_o, // @[src/main/scala/coreGen/core/csr.scala 183:35]
  output [1:0]  priv_mode_lsu_o, // @[src/main/scala/coreGen/core/csr.scala 184:35]
  output        csr_mstatus_tw_o, // @[src/main/scala/coreGen/core/csr.scala 185:35]
  output [31:0] csr_mtvec_o, // @[src/main/scala/coreGen/core/csr.scala 188:35]
  input         csr_access_i, // @[src/main/scala/coreGen/core/csr.scala 192:35]
  input  [11:0] csr_addr_i, // @[src/main/scala/coreGen/core/csr.scala 193:35]
  input  [31:0] csr_wdata_i, // @[src/main/scala/coreGen/core/csr.scala 194:35]
  input  [1:0]  csr_op_i, // @[src/main/scala/coreGen/core/csr.scala 195:35]
  input         csr_op_en_i, // @[src/main/scala/coreGen/core/csr.scala 196:35]
  output [31:0] csr_rdata_o, // @[src/main/scala/coreGen/core/csr.scala 197:35]
  input         irqs_i_timer, // @[src/main/scala/coreGen/core/csr.scala 200:35]
  input         irqs_i_software, // @[src/main/scala/coreGen/core/csr.scala 200:35]
  input         irqs_i_external, // @[src/main/scala/coreGen/core/csr.scala 200:35]
  input         irqs_i_nmi, // @[src/main/scala/coreGen/core/csr.scala 200:35]
  input         nmi_mode_i, // @[src/main/scala/coreGen/core/csr.scala 201:35]
  output        irq_pending_o, // @[src/main/scala/coreGen/core/csr.scala 202:35]
  output        irqs_o_timer, // @[src/main/scala/coreGen/core/csr.scala 203:35]
  output        irqs_o_software, // @[src/main/scala/coreGen/core/csr.scala 203:35]
  output        irqs_o_external, // @[src/main/scala/coreGen/core/csr.scala 203:35]
  output        irqs_o_nmi, // @[src/main/scala/coreGen/core/csr.scala 203:35]
  output        csr_mstatus_mie_o, // @[src/main/scala/coreGen/core/csr.scala 204:35]
  output [31:0] csr_mepc_o, // @[src/main/scala/coreGen/core/csr.scala 205:35]
  input         debug_mode_i, // @[src/main/scala/coreGen/core/csr.scala 229:35]
  input  [31:0] pc_if_i, // @[src/main/scala/coreGen/core/csr.scala 244:35]
  input  [31:0] pc_id_i, // @[src/main/scala/coreGen/core/csr.scala 245:35]
  input         csr_save_if_i, // @[src/main/scala/coreGen/core/csr.scala 249:35]
  input         csr_restore_mret_i, // @[src/main/scala/coreGen/core/csr.scala 252:35]
  input         csr_restore_dret_i, // @[src/main/scala/coreGen/core/csr.scala 253:35]
  input         csr_save_cause_i, // @[src/main/scala/coreGen/core/csr.scala 254:35]
  input  [5:0]  csr_mcause_i, // @[src/main/scala/coreGen/core/csr.scala 255:35]
  input  [31:0] csr_mtval_i, // @[src/main/scala/coreGen/core/csr.scala 256:35]
  output        illegal_csr_insn_o, // @[src/main/scala/coreGen/core/csr.scala 257:35]
  input         instr_ret_i, // @[src/main/scala/coreGen/core/csr.scala 260:35]
  output [31:0] csr_mcause_o, // @[src/main/scala/coreGen/core/csr.scala 272:35]
  output [63:0] csr_mcycle_o, // @[src/main/scala/coreGen/core/csr.scala 273:35]
  output [31:0] csr_mpvec_base, // @[src/main/scala/coreGen/core/csr.scala 279:35]
  output        csr_mpvec_mode // @[src/main/scala/coreGen/core/csr.scala 279:35]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  u_mstatus_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1581:33]
  wire  u_mstatus_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1581:33]
  wire [6:0] u_mstatus_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1581:33]
  wire  u_mstatus_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1581:33]
  wire [6:0] u_mstatus_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1581:33]
  wire  u_mepc_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1596:33]
  wire  u_mepc_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1596:33]
  wire [31:0] u_mepc_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1596:33]
  wire  u_mepc_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1596:33]
  wire [31:0] u_mepc_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1596:33]
  wire  u_mie_csr_bank_clock; // @[src/main/scala/coreGen/core/csr.scala 1624:35]
  wire  u_mie_csr_bank_reset; // @[src/main/scala/coreGen/core/csr.scala 1624:35]
  wire [19:0] u_mie_csr_bank_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1624:35]
  wire  u_mie_csr_bank_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1624:35]
  wire [19:0] u_mie_csr_bank_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1624:35]
  wire  u_mie_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1653:35]
  wire  u_mie_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1653:35]
  wire [19:0] u_mie_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1653:35]
  wire  u_mie_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1653:35]
  wire [19:0] u_mie_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1653:35]
  wire  u_mscratch_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1661:33]
  wire  u_mscratch_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1661:33]
  wire [31:0] u_mscratch_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1661:33]
  wire  u_mscratch_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1661:33]
  wire [31:0] u_mscratch_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1661:33]
  wire  u_mcause_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1669:33]
  wire  u_mcause_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1669:33]
  wire [5:0] u_mcause_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1669:33]
  wire  u_mcause_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1669:33]
  wire [5:0] u_mcause_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1669:33]
  wire  u_mtval_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1680:33]
  wire  u_mtval_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1680:33]
  wire [31:0] u_mtval_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1680:33]
  wire  u_mtval_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1680:33]
  wire [31:0] u_mtval_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1680:33]
  wire  u_mtvec_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1689:33]
  wire  u_mtvec_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1689:33]
  wire [31:0] u_mtvec_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1689:33]
  wire  u_mtvec_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1689:33]
  wire [31:0] u_mtvec_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1689:33]
  wire  u_mpvec_csr_clock; // @[src/main/scala/coreGen/core/csr.scala 1697:37]
  wire  u_mpvec_csr_reset; // @[src/main/scala/coreGen/core/csr.scala 1697:37]
  wire [31:0] u_mpvec_csr_wr_data_i; // @[src/main/scala/coreGen/core/csr.scala 1697:37]
  wire  u_mpvec_csr_wr_en_i; // @[src/main/scala/coreGen/core/csr.scala 1697:37]
  wire [31:0] u_mpvec_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1697:37]
  wire  u_mcycle_counter_clock; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire  u_mcycle_counter_reset; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire  u_mcycle_counter_counter_inc_i; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire  u_mcycle_counter_counterh_we_i; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire  u_mcycle_counter_counter_we_i; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire [31:0] u_mcycle_counter_counter_val_i; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire [63:0] u_mcycle_counter_counter_val_o; // @[src/main/scala/coreGen/core/csr.scala 2038:34]
  wire  u_minstret_counter_clock; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire  u_minstret_counter_reset; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire  u_minstret_counter_counter_inc_i; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire  u_minstret_counter_counterh_we_i; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire  u_minstret_counter_counter_we_i; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire [31:0] u_minstret_counter_counter_val_i; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire [63:0] u_minstret_counter_counter_val_o; // @[src/main/scala/coreGen/core/csr.scala 2048:36]
  wire  _mstatus_vs_q_T_2 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:31]
  reg [1:0] priv_lvl_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  wire  _csr_wdata_int_T_5 = 2'h3 == csr_op_i; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  wire [31:0] _csr_wdata_int_T_1 = ~csr_wdata_i; // @[src/main/scala/coreGen/core/csr.scala 1469:30]
  wire [31:0] _csr_wdata_int_T_2 = _csr_wdata_int_T_1 & csr_rdata_o; // @[src/main/scala/coreGen/core/csr.scala 1469:42]
  wire  _csr_wdata_int_T_3 = 2'h2 == csr_op_i; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  wire [31:0] _csr_wdata_int_T = csr_wdata_i | csr_rdata_o; // @[src/main/scala/coreGen/core/csr.scala 1468:42]
  wire [31:0] _csr_wdata_int_T_4 = 2'h2 == csr_op_i ? _csr_wdata_int_T : csr_wdata_i; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  wire [31:0] _csr_wdata_int_T_6 = 2'h3 == csr_op_i ? _csr_wdata_int_T_2 : _csr_wdata_int_T_4; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  wire [31:0] csr_wdata_int = 2'h0 == csr_op_i ? csr_wdata_i : _csr_wdata_int_T_6; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  wire [31:0] _mepc_d_T_1 = {csr_wdata_int[31:1],1'h0}; // @[src/main/scala/coreGen/core/csr.scala 379:38]
  wire [5:0] _mcause_d_T_2 = {csr_wdata_int[31],csr_wdata_int[4:0]}; // @[src/main/scala/coreGen/core/csr.scala 382:38]
  wire  tcm_ecc_ie_d = csr_wdata_int[0]; // @[src/main/scala/coreGen/core/csr.scala 407:46]
  reg [31:0] mcounter_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  wire  csr_flag = _csr_wdata_int_T_5 | (_csr_wdata_int_T_3 | 2'h1 == csr_op_i); // @[src/main/scala/coreGen/core/csr.scala 1474:48]
  wire  csr_wreq = csr_flag & csr_op_en_i; // @[src/main/scala/coreGen/core/csr.scala 1482:26]
  wire  _T_1 = 12'hf12 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_5 = 12'h300 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_7 = 12'h304 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_8 = 12'h340 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_9 = 12'h305 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_10 = 12'h341 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_11 = 12'h342 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_12 = 12'h343 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_13 = 12'h306 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_36 = 12'h7b0 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _illegal_csr_T = ~debug_mode_i; // @[src/main/scala/coreGen/core/csr.scala 853:28]
  wire  _T_37 = 12'h7b1 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_38 = 12'h7b2 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_39 = 12'h7b3 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_40 = 12'h320 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_56 = 12'h332 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_84 = 12'h323 == csr_addr_i | 12'h324 == csr_addr_i | 12'h325 == csr_addr_i | 12'h326 == csr_addr_i | 12'h327
     == csr_addr_i | 12'h328 == csr_addr_i | 12'h329 == csr_addr_i | 12'h32a == csr_addr_i | 12'h32b == csr_addr_i | 12'h32c
     == csr_addr_i | 12'h32d == csr_addr_i | 12'h32e == csr_addr_i | 12'h32f == csr_addr_i | 12'h330 == csr_addr_i | 12'h331
     == csr_addr_i | _T_56; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_113 = 12'hb10 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_143 = 12'hb00 == csr_addr_i | 12'hb02 == csr_addr_i | 12'hb03 == csr_addr_i | 12'hb04 == csr_addr_i | 12'hb05
     == csr_addr_i | 12'hb06 == csr_addr_i | 12'hb07 == csr_addr_i | 12'hb08 == csr_addr_i | 12'hb09 == csr_addr_i | 12'hb0a
     == csr_addr_i | 12'hb0b == csr_addr_i | 12'hb0c == csr_addr_i | 12'hb0d == csr_addr_i | 12'hb0e == csr_addr_i | 12'hb0f
     == csr_addr_i | _T_113; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_158 = _T_143 | 12'hb11 == csr_addr_i | 12'hb12 == csr_addr_i | 12'hb13 == csr_addr_i | 12'hb14 == csr_addr_i
     | 12'hb15 == csr_addr_i | 12'hb16 == csr_addr_i | 12'hb17 == csr_addr_i | 12'hb18 == csr_addr_i | 12'hb19 ==
    csr_addr_i | 12'hb1a == csr_addr_i | 12'hb1b == csr_addr_i | 12'hb1c == csr_addr_i | 12'hb1d == csr_addr_i | 12'hb1e
     == csr_addr_i | 12'hb1f == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_174 = 12'hb90 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_204 = 12'hb80 == csr_addr_i | 12'hb82 == csr_addr_i | 12'hb83 == csr_addr_i | 12'hb84 == csr_addr_i | 12'hb85
     == csr_addr_i | 12'hb86 == csr_addr_i | 12'hb87 == csr_addr_i | 12'hb88 == csr_addr_i | 12'hb89 == csr_addr_i | 12'hb8a
     == csr_addr_i | 12'hb8b == csr_addr_i | 12'hb8c == csr_addr_i | 12'hb8d == csr_addr_i | 12'hb8e == csr_addr_i | 12'hb8f
     == csr_addr_i | _T_174; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_219 = _T_204 | 12'hb91 == csr_addr_i | 12'hb92 == csr_addr_i | 12'hb93 == csr_addr_i | 12'hb94 == csr_addr_i
     | 12'hb95 == csr_addr_i | 12'hb96 == csr_addr_i | 12'hb97 == csr_addr_i | 12'hb98 == csr_addr_i | 12'hb99 ==
    csr_addr_i | 12'hb9a == csr_addr_i | 12'hb9b == csr_addr_i | 12'hb9c == csr_addr_i | 12'hb9d == csr_addr_i | 12'hb9e
     == csr_addr_i | 12'hb9f == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_220 = 12'h7d4 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_246 = 12'h7c0 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_247 = 12'h7c4 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_248 = 12'h7c8 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_249 = 12'h7cc == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_250 = 12'h7d0 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_251 = 12'h7d5 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_252 = 12'h7d6 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _T_253 = 12'h7d7 == csr_addr_i; // @[src/main/scala/coreGen/core/csr.scala 587:5]
  wire  _GEN_104 = 12'hc82 == csr_addr_i ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/csr.scala 587:5 954:25]
  wire  _GEN_106 = 12'hc80 == csr_addr_i ? 1'h0 : _GEN_104; // @[src/main/scala/coreGen/core/csr.scala 587:5 950:25]
  wire  _GEN_108 = 12'hc02 == csr_addr_i ? 1'h0 : _GEN_106; // @[src/main/scala/coreGen/core/csr.scala 587:5 946:25]
  wire  _GEN_110 = 12'hc00 == csr_addr_i ? 1'h0 : _GEN_108; // @[src/main/scala/coreGen/core/csr.scala 587:5 942:25]
  wire  _GEN_112 = 12'h7d9 == csr_addr_i | _GEN_110; // @[src/main/scala/coreGen/core/csr.scala 587:5 935:31]
  wire  _GEN_114 = 12'h7d8 == csr_addr_i ? 1'h0 : _GEN_112; // @[src/main/scala/coreGen/core/csr.scala 587:5 925:25]
  wire  _GEN_116 = 12'h7d4 == csr_addr_i ? 1'h0 : _GEN_114; // @[src/main/scala/coreGen/core/csr.scala 587:5 915:31]
  wire  _GEN_119 = _T_219 ? 1'h0 : _GEN_116; // @[src/main/scala/coreGen/core/csr.scala 587:5 910:90]
  wire  _GEN_122 = _T_158 ? 1'h0 : _GEN_119; // @[src/main/scala/coreGen/core/csr.scala 587:5 897:89]
  wire  _GEN_125 = _T_84 | 12'h333 == csr_addr_i | 12'h334 == csr_addr_i | 12'h335 == csr_addr_i | 12'h336 == csr_addr_i
     | 12'h337 == csr_addr_i | 12'h338 == csr_addr_i | 12'h339 == csr_addr_i | 12'h33a == csr_addr_i | 12'h33b ==
    csr_addr_i | 12'h33c == csr_addr_i | 12'h33d == csr_addr_i | 12'h33e == csr_addr_i | 12'h33f == csr_addr_i ? 1'h0 :
    _GEN_122; // @[src/main/scala/coreGen/core/csr.scala 587:5 884:81]
  wire  _GEN_128 = 12'h320 == csr_addr_i ? 1'h0 : _GEN_125; // @[src/main/scala/coreGen/core/csr.scala 587:5 874:83]
  wire  _GEN_131 = 12'h7b3 == csr_addr_i ? _illegal_csr_T : _GEN_128; // @[src/main/scala/coreGen/core/csr.scala 587:5 871:25]
  wire  _GEN_134 = 12'h7b2 == csr_addr_i ? _illegal_csr_T : _GEN_131; // @[src/main/scala/coreGen/core/csr.scala 587:5 865:25]
  wire  _GEN_137 = 12'h7b1 == csr_addr_i ? _illegal_csr_T : _GEN_134; // @[src/main/scala/coreGen/core/csr.scala 587:5 859:25]
  wire  _GEN_140 = 12'h7b0 == csr_addr_i ? ~debug_mode_i : _GEN_137; // @[src/main/scala/coreGen/core/csr.scala 587:5 853:25]
  wire  _GEN_143 = 12'h3bf == csr_addr_i ? 1'h0 : _GEN_140; // @[src/main/scala/coreGen/core/csr.scala 587:5 847:85]
  wire  _GEN_146 = 12'h3be == csr_addr_i ? 1'h0 : _GEN_143; // @[src/main/scala/coreGen/core/csr.scala 587:5 846:85]
  wire  _GEN_149 = 12'h3bd == csr_addr_i ? 1'h0 : _GEN_146; // @[src/main/scala/coreGen/core/csr.scala 587:5 845:85]
  wire  _GEN_152 = 12'h3bc == csr_addr_i ? 1'h0 : _GEN_149; // @[src/main/scala/coreGen/core/csr.scala 587:5 844:85]
  wire  _GEN_155 = 12'h3bb == csr_addr_i ? 1'h0 : _GEN_152; // @[src/main/scala/coreGen/core/csr.scala 587:5 842:85]
  wire  _GEN_158 = 12'h3ba == csr_addr_i ? 1'h0 : _GEN_155; // @[src/main/scala/coreGen/core/csr.scala 587:5 841:85]
  wire  _GEN_161 = 12'h3b9 == csr_addr_i ? 1'h0 : _GEN_158; // @[src/main/scala/coreGen/core/csr.scala 587:5 840:85]
  wire  _GEN_164 = 12'h3b8 == csr_addr_i ? 1'h0 : _GEN_161; // @[src/main/scala/coreGen/core/csr.scala 587:5 839:85]
  wire  _GEN_167 = 12'h3b7 == csr_addr_i ? 1'h0 : _GEN_164; // @[src/main/scala/coreGen/core/csr.scala 587:5 837:85]
  wire  _GEN_170 = 12'h3b6 == csr_addr_i ? 1'h0 : _GEN_167; // @[src/main/scala/coreGen/core/csr.scala 587:5 836:85]
  wire  _GEN_173 = 12'h3b5 == csr_addr_i ? 1'h0 : _GEN_170; // @[src/main/scala/coreGen/core/csr.scala 587:5 835:85]
  wire  _GEN_176 = 12'h3b4 == csr_addr_i ? 1'h0 : _GEN_173; // @[src/main/scala/coreGen/core/csr.scala 587:5 834:85]
  wire  _GEN_179 = 12'h3b3 == csr_addr_i ? 1'h0 : _GEN_176; // @[src/main/scala/coreGen/core/csr.scala 587:5 832:85]
  wire  _GEN_182 = 12'h3b2 == csr_addr_i ? 1'h0 : _GEN_179; // @[src/main/scala/coreGen/core/csr.scala 587:5 831:85]
  wire  _GEN_185 = 12'h3b1 == csr_addr_i ? 1'h0 : _GEN_182; // @[src/main/scala/coreGen/core/csr.scala 587:5 830:85]
  wire  _GEN_188 = 12'h3b0 == csr_addr_i ? 1'h0 : _GEN_185; // @[src/main/scala/coreGen/core/csr.scala 587:5 829:85]
  wire  _GEN_190 = 12'h3a3 == csr_addr_i ? 1'h0 : _GEN_188; // @[src/main/scala/coreGen/core/csr.scala 587:5 825:53]
  wire  _GEN_193 = 12'h3a2 == csr_addr_i ? 1'h0 : _GEN_190; // @[src/main/scala/coreGen/core/csr.scala 587:5 822:53]
  wire  _GEN_196 = 12'h3a1 == csr_addr_i ? 1'h0 : _GEN_193; // @[src/main/scala/coreGen/core/csr.scala 587:5 818:53]
  wire  _GEN_199 = 12'h3a0 == csr_addr_i ? 1'h0 : _GEN_196; // @[src/main/scala/coreGen/core/csr.scala 587:5 814:53]
  wire  _GEN_202 = 12'h30a == csr_addr_i | _GEN_199; // @[src/main/scala/coreGen/core/csr.scala 524:31 587:5]
  wire  _GEN_206 = 12'h344 == csr_addr_i ? 1'h0 : _GEN_202; // @[src/main/scala/coreGen/core/csr.scala 587:5 803:29]
  wire  _GEN_209 = 12'h306 == csr_addr_i ? 1'h0 : _GEN_206; // @[src/main/scala/coreGen/core/csr.scala 587:5 747:29]
  wire  _GEN_212 = 12'h343 == csr_addr_i ? 1'h0 : _GEN_209; // @[src/main/scala/coreGen/core/csr.scala 587:5 737:29]
  wire  _GEN_215 = 12'h342 == csr_addr_i ? 1'h0 : _GEN_212; // @[src/main/scala/coreGen/core/csr.scala 587:5 727:29]
  wire  _GEN_218 = 12'h341 == csr_addr_i ? 1'h0 : _GEN_215; // @[src/main/scala/coreGen/core/csr.scala 587:5 717:29]
  wire  _GEN_221 = 12'h305 == csr_addr_i ? 1'h0 : _GEN_218; // @[src/main/scala/coreGen/core/csr.scala 587:5 714:29]
  wire  _GEN_224 = 12'h340 == csr_addr_i ? 1'h0 : _GEN_221; // @[src/main/scala/coreGen/core/csr.scala 587:5 710:29]
  wire  _GEN_227 = 12'h304 == csr_addr_i ? 1'h0 : _GEN_224; // @[src/main/scala/coreGen/core/csr.scala 587:5 701:29]
  wire  _GEN_230 = 12'h301 == csr_addr_i ? 1'h0 : _GEN_227; // @[src/main/scala/coreGen/core/csr.scala 587:5 659:29]
  wire  _GEN_233 = 12'h300 == csr_addr_i ? 1'h0 : _GEN_230; // @[src/main/scala/coreGen/core/csr.scala 587:5 650:29]
  wire  _GEN_236 = 12'hf14 == csr_addr_i ? 1'h0 : _GEN_233; // @[src/main/scala/coreGen/core/csr.scala 587:5 610:29]
  wire  _GEN_239 = 12'hf15 == csr_addr_i ? 1'h0 : _GEN_236; // @[src/main/scala/coreGen/core/csr.scala 587:5 605:29]
  wire  _GEN_242 = 12'hf11 == csr_addr_i ? 1'h0 : _GEN_239; // @[src/main/scala/coreGen/core/csr.scala 587:5 600:29]
  wire  _GEN_245 = 12'hf12 == csr_addr_i ? 1'h0 : _GEN_242; // @[src/main/scala/coreGen/core/csr.scala 587:5 595:29]
  wire  illegal_csr = 12'hf13 == csr_addr_i ? 1'h0 : _GEN_245; // @[src/main/scala/coreGen/core/csr.scala 587:5 590:29]
  wire  illegal_csr_write = csr_addr_i[11:10] == 2'h3 & csr_wreq; // @[src/main/scala/coreGen/core/csr.scala 544:53]
  wire  illegal_csr_priv = csr_addr_i[9:8] > priv_lvl_q; // @[src/main/scala/coreGen/core/csr.scala 542:41]
  wire  illegal_csr_insn = csr_access_i & (illegal_csr | illegal_csr_write | illegal_csr_priv); // @[src/main/scala/coreGen/core/csr.scala 546:41]
  wire  csr_we_int = csr_wreq & ~illegal_csr_insn; // @[src/main/scala/coreGen/core/csr.scala 1485:28]
  wire  _GEN_853 = _T_253 ? 1'h0 : _T_13; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_944 = _T_252 ? 1'h0 : _GEN_853; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1037 = _T_251 ? 1'h0 : _GEN_944; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1130 = _T_1 ? 1'h0 : _GEN_1037; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1225 = _T_220 ? 1'h0 : _GEN_1130; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1321 = _T_9 ? 1'h0 : _GEN_1225; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1418 = _T_12 ? 1'h0 : _GEN_1321; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1516 = _T_11 ? 1'h0 : _GEN_1418; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1615 = _T_10 ? 1'h0 : _GEN_1516; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1715 = _T_8 ? 1'h0 : _GEN_1615; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1816 = _T_7 ? 1'h0 : _GEN_1715; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_1918 = _T_250 ? 1'h0 : _GEN_1816; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_2021 = _T_249 ? 1'h0 : _GEN_1918; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_2125 = _T_248 ? 1'h0 : _GEN_2021; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_2230 = _T_247 ? 1'h0 : _GEN_2125; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_2336 = _T_246 ? 1'h0 : _GEN_2230; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  _GEN_2448 = _T_5 ? 1'h0 : _GEN_2336; // @[src/main/scala/coreGen/core/csr.scala 1239:9 430:34]
  wire  mcounter_en = csr_we_int & _GEN_2448; // @[src/main/scala/coreGen/core/csr.scala 1237:5 430:34]
  reg [2:0] mcountinhibit_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  wire [4:0] mhpmcounter_idx = csr_addr_i[4:0]; // @[src/main/scala/coreGen/core/csr.scala 538:37]
  wire [6:0] _mstatus_q_WIRE_1 = u_mstatus_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1590:{65,65}]
  wire  mstatus_q_mie = _mstatus_q_WIRE_1[6]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  wire  mstatus_q_mpie = _mstatus_q_WIRE_1[5]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  wire [10:0] csr_rdata_int_lo = {3'h0,mstatus_q_mpie,3'h0,mstatus_q_mie,3'h0}; // @[src/main/scala/coreGen/core/csr.scala 642:37]
  wire  mstatus_q_mprv = _mstatus_q_WIRE_1[1]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  wire [1:0] mstatus_q_mpp = _mstatus_q_WIRE_1[3:2]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  wire  mstatus_q_tw = _mstatus_q_WIRE_1[0]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  wire [31:0] _csr_rdata_int_T = {10'h0,mstatus_q_tw,3'h0,mstatus_q_mprv,4'h0,mstatus_q_mpp,csr_rdata_int_lo}; // @[src/main/scala/coreGen/core/csr.scala 642:37]
  wire  mie_q_software = u_mie_csr_rd_data_o[2]; // @[src/main/scala/coreGen/core/csr.scala 1657:57]
  wire  mie_q_timer = u_mie_csr_rd_data_o[3]; // @[src/main/scala/coreGen/core/csr.scala 1657:57]
  wire  mie_q_external = u_mie_csr_rd_data_o[1]; // @[src/main/scala/coreGen/core/csr.scala 1657:57]
  wire [31:0] _csr_rdata_int_T_1 = {20'h0,mie_q_external,3'h0,mie_q_timer,3'h0,mie_q_software,3'h0}; // @[src/main/scala/coreGen/core/csr.scala 684:43]
  wire [5:0] mcause_q = u_mcause_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1673:30 381:30]
  wire [31:0] _csr_rdata_int_T_4 = {mcause_q[5],26'h0,mcause_q[4:0]}; // @[src/main/scala/coreGen/core/csr.scala 726:37]
  wire [31:0] _csr_rdata_int_T_5 = {20'h0,irqs_i_external,3'h0,irqs_i_timer,3'h0,irqs_i_software,3'h0}; // @[src/main/scala/coreGen/core/csr.scala 791:35]
  wire [31:0] _GEN_2 = 5'h1 == mhpmcounter_idx ? 32'h0 : 32'h1; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_3 = 5'h2 == mhpmcounter_idx ? 32'h4 : _GEN_2; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_4 = 5'h3 == mhpmcounter_idx ? 32'h0 : _GEN_3; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_5 = 5'h4 == mhpmcounter_idx ? 32'h0 : _GEN_4; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_6 = 5'h5 == mhpmcounter_idx ? 32'h0 : _GEN_5; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_7 = 5'h6 == mhpmcounter_idx ? 32'h0 : _GEN_6; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_8 = 5'h7 == mhpmcounter_idx ? 32'h0 : _GEN_7; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_9 = 5'h8 == mhpmcounter_idx ? 32'h0 : _GEN_8; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_10 = 5'h9 == mhpmcounter_idx ? 32'h0 : _GEN_9; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_11 = 5'ha == mhpmcounter_idx ? 32'h0 : _GEN_10; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_12 = 5'hb == mhpmcounter_idx ? 32'h0 : _GEN_11; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_13 = 5'hc == mhpmcounter_idx ? 32'h0 : _GEN_12; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_14 = 5'hd == mhpmcounter_idx ? 32'h0 : _GEN_13; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_15 = 5'he == mhpmcounter_idx ? 32'h0 : _GEN_14; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_16 = 5'hf == mhpmcounter_idx ? 32'h0 : _GEN_15; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_17 = 5'h10 == mhpmcounter_idx ? 32'h0 : _GEN_16; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_18 = 5'h11 == mhpmcounter_idx ? 32'h0 : _GEN_17; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_19 = 5'h12 == mhpmcounter_idx ? 32'h0 : _GEN_18; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_20 = 5'h13 == mhpmcounter_idx ? 32'h0 : _GEN_19; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_21 = 5'h14 == mhpmcounter_idx ? 32'h0 : _GEN_20; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_22 = 5'h15 == mhpmcounter_idx ? 32'h0 : _GEN_21; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_23 = 5'h16 == mhpmcounter_idx ? 32'h0 : _GEN_22; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_24 = 5'h17 == mhpmcounter_idx ? 32'h0 : _GEN_23; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_25 = 5'h18 == mhpmcounter_idx ? 32'h0 : _GEN_24; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_26 = 5'h19 == mhpmcounter_idx ? 32'h0 : _GEN_25; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_27 = 5'h1a == mhpmcounter_idx ? 32'h0 : _GEN_26; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_28 = 5'h1b == mhpmcounter_idx ? 32'h0 : _GEN_27; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_29 = 5'h1c == mhpmcounter_idx ? 32'h0 : _GEN_28; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_30 = 5'h1d == mhpmcounter_idx ? 32'h0 : _GEN_29; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_31 = 5'h1e == mhpmcounter_idx ? 32'h0 : _GEN_30; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [31:0] _GEN_32 = 5'h1f == mhpmcounter_idx ? 32'h0 : _GEN_31; // @[src/main/scala/coreGen/core/csr.scala 884:{30,30}]
  wire [63:0] mhpmcounter_0 = u_mcycle_counter_counter_val_o; // @[src/main/scala/coreGen/core/csr.scala 502:35 2043:41]
  wire [63:0] _GEN_34 = 5'h1 == mhpmcounter_idx ? 64'h0 : mhpmcounter_0; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] mhpmcounter_2 = u_minstret_counter_counter_val_o; // @[src/main/scala/coreGen/core/csr.scala 502:35 2053:41]
  wire [63:0] _GEN_35 = 5'h2 == mhpmcounter_idx ? mhpmcounter_2 : _GEN_34; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_36 = 5'h3 == mhpmcounter_idx ? 64'h0 : _GEN_35; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_37 = 5'h4 == mhpmcounter_idx ? 64'h0 : _GEN_36; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_38 = 5'h5 == mhpmcounter_idx ? 64'h0 : _GEN_37; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_39 = 5'h6 == mhpmcounter_idx ? 64'h0 : _GEN_38; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_40 = 5'h7 == mhpmcounter_idx ? 64'h0 : _GEN_39; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_41 = 5'h8 == mhpmcounter_idx ? 64'h0 : _GEN_40; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_42 = 5'h9 == mhpmcounter_idx ? 64'h0 : _GEN_41; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_43 = 5'ha == mhpmcounter_idx ? 64'h0 : _GEN_42; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_44 = 5'hb == mhpmcounter_idx ? 64'h0 : _GEN_43; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_45 = 5'hc == mhpmcounter_idx ? 64'h0 : _GEN_44; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_46 = 5'hd == mhpmcounter_idx ? 64'h0 : _GEN_45; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_47 = 5'he == mhpmcounter_idx ? 64'h0 : _GEN_46; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_48 = 5'hf == mhpmcounter_idx ? 64'h0 : _GEN_47; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_49 = 5'h10 == mhpmcounter_idx ? 64'h0 : _GEN_48; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_50 = 5'h11 == mhpmcounter_idx ? 64'h0 : _GEN_49; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_51 = 5'h12 == mhpmcounter_idx ? 64'h0 : _GEN_50; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_52 = 5'h13 == mhpmcounter_idx ? 64'h0 : _GEN_51; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_53 = 5'h14 == mhpmcounter_idx ? 64'h0 : _GEN_52; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_54 = 5'h15 == mhpmcounter_idx ? 64'h0 : _GEN_53; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_55 = 5'h16 == mhpmcounter_idx ? 64'h0 : _GEN_54; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_56 = 5'h17 == mhpmcounter_idx ? 64'h0 : _GEN_55; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_57 = 5'h18 == mhpmcounter_idx ? 64'h0 : _GEN_56; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_58 = 5'h19 == mhpmcounter_idx ? 64'h0 : _GEN_57; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_59 = 5'h1a == mhpmcounter_idx ? 64'h0 : _GEN_58; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_60 = 5'h1b == mhpmcounter_idx ? 64'h0 : _GEN_59; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_61 = 5'h1c == mhpmcounter_idx ? 64'h0 : _GEN_60; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_62 = 5'h1d == mhpmcounter_idx ? 64'h0 : _GEN_61; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_63 = 5'h1e == mhpmcounter_idx ? 64'h0 : _GEN_62; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [63:0] _GEN_64 = 5'h1f == mhpmcounter_idx ? 64'h0 : _GEN_63; // @[src/main/scala/coreGen/core/csr.scala 897:{62,62}]
  wire [31:0] _GEN_103 = 12'hc82 == csr_addr_i ? mhpmcounter_2[63:32] : 32'h0; // @[src/main/scala/coreGen/core/csr.scala 587:5 953:27]
  wire [31:0] _GEN_105 = 12'hc80 == csr_addr_i ? mhpmcounter_0[63:32] : _GEN_103; // @[src/main/scala/coreGen/core/csr.scala 587:5 949:27]
  wire [31:0] _GEN_107 = 12'hc02 == csr_addr_i ? mhpmcounter_2[31:0] : _GEN_105; // @[src/main/scala/coreGen/core/csr.scala 587:5 945:27]
  wire [31:0] _GEN_109 = 12'hc00 == csr_addr_i ? mhpmcounter_0[31:0] : _GEN_107; // @[src/main/scala/coreGen/core/csr.scala 587:5 941:27]
  wire [31:0] _GEN_111 = 12'h7d9 == csr_addr_i ? 32'h0 : _GEN_109; // @[src/main/scala/coreGen/core/csr.scala 587:5 934:31]
  wire [31:0] _GEN_113 = 12'h7d8 == csr_addr_i ? 32'h0 : _GEN_111; // @[src/main/scala/coreGen/core/csr.scala 587:5 924:27]
  wire [31:0] mpvec_q = u_mpvec_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1700:31 445:36]
  wire [31:0] _GEN_115 = 12'h7d4 == csr_addr_i ? mpvec_q : _GEN_113; // @[src/main/scala/coreGen/core/csr.scala 587:5 914:31]
  wire [31:0] _GEN_118 = _T_219 ? _GEN_64[63:32] : _GEN_115; // @[src/main/scala/coreGen/core/csr.scala 587:5 910:30]
  wire [31:0] _GEN_121 = _T_158 ? _GEN_64[31:0] : _GEN_118; // @[src/main/scala/coreGen/core/csr.scala 587:5 897:30]
  wire [31:0] _GEN_124 = _T_84 | 12'h333 == csr_addr_i | 12'h334 == csr_addr_i | 12'h335 == csr_addr_i | 12'h336 ==
    csr_addr_i | 12'h337 == csr_addr_i | 12'h338 == csr_addr_i | 12'h339 == csr_addr_i | 12'h33a == csr_addr_i | 12'h33b
     == csr_addr_i | 12'h33c == csr_addr_i | 12'h33d == csr_addr_i | 12'h33e == csr_addr_i | 12'h33f == csr_addr_i ?
    _GEN_32 : _GEN_121; // @[src/main/scala/coreGen/core/csr.scala 587:5 884:30]
  wire [31:0] mcountinhibit = {29'h1fffffff,mcountinhibit_q}; // @[src/main/scala/coreGen/core/csr.scala 2087:29]
  wire [31:0] _GEN_127 = 12'h320 == csr_addr_i ? mcountinhibit : _GEN_124; // @[src/main/scala/coreGen/core/csr.scala 587:5 874:46]
  wire [31:0] _GEN_130 = 12'h7b3 == csr_addr_i ? 32'h0 : _GEN_127; // @[src/main/scala/coreGen/core/csr.scala 587:5 870:27]
  wire [31:0] _GEN_133 = 12'h7b2 == csr_addr_i ? 32'h0 : _GEN_130; // @[src/main/scala/coreGen/core/csr.scala 587:5 864:27]
  wire [31:0] _GEN_136 = 12'h7b1 == csr_addr_i ? 32'h0 : _GEN_133; // @[src/main/scala/coreGen/core/csr.scala 587:5 858:27]
  wire [31:0] _GEN_139 = 12'h7b0 == csr_addr_i ? 32'h0 : _GEN_136; // @[src/main/scala/coreGen/core/csr.scala 587:5 852:27]
  wire [31:0] _GEN_142 = 12'h3bf == csr_addr_i ? 32'h0 : _GEN_139; // @[src/main/scala/coreGen/core/csr.scala 587:5 847:44]
  wire [31:0] _GEN_145 = 12'h3be == csr_addr_i ? 32'h0 : _GEN_142; // @[src/main/scala/coreGen/core/csr.scala 587:5 846:44]
  wire [31:0] _GEN_148 = 12'h3bd == csr_addr_i ? 32'h0 : _GEN_145; // @[src/main/scala/coreGen/core/csr.scala 587:5 845:44]
  wire [31:0] _GEN_151 = 12'h3bc == csr_addr_i ? 32'h0 : _GEN_148; // @[src/main/scala/coreGen/core/csr.scala 587:5 844:44]
  wire [31:0] _GEN_154 = 12'h3bb == csr_addr_i ? 32'h0 : _GEN_151; // @[src/main/scala/coreGen/core/csr.scala 587:5 842:44]
  wire [31:0] _GEN_157 = 12'h3ba == csr_addr_i ? 32'h0 : _GEN_154; // @[src/main/scala/coreGen/core/csr.scala 587:5 841:44]
  wire [31:0] _GEN_160 = 12'h3b9 == csr_addr_i ? 32'h0 : _GEN_157; // @[src/main/scala/coreGen/core/csr.scala 587:5 840:44]
  wire [31:0] _GEN_163 = 12'h3b8 == csr_addr_i ? 32'h0 : _GEN_160; // @[src/main/scala/coreGen/core/csr.scala 587:5 839:44]
  wire [31:0] _GEN_166 = 12'h3b7 == csr_addr_i ? 32'h0 : _GEN_163; // @[src/main/scala/coreGen/core/csr.scala 587:5 837:44]
  wire [31:0] _GEN_169 = 12'h3b6 == csr_addr_i ? 32'h0 : _GEN_166; // @[src/main/scala/coreGen/core/csr.scala 587:5 836:44]
  wire [31:0] _GEN_172 = 12'h3b5 == csr_addr_i ? 32'h0 : _GEN_169; // @[src/main/scala/coreGen/core/csr.scala 587:5 835:44]
  wire [31:0] _GEN_175 = 12'h3b4 == csr_addr_i ? 32'h0 : _GEN_172; // @[src/main/scala/coreGen/core/csr.scala 587:5 834:44]
  wire [31:0] _GEN_178 = 12'h3b3 == csr_addr_i ? 32'h0 : _GEN_175; // @[src/main/scala/coreGen/core/csr.scala 587:5 832:44]
  wire [31:0] _GEN_181 = 12'h3b2 == csr_addr_i ? 32'h0 : _GEN_178; // @[src/main/scala/coreGen/core/csr.scala 587:5 831:44]
  wire [31:0] _GEN_184 = 12'h3b1 == csr_addr_i ? 32'h0 : _GEN_181; // @[src/main/scala/coreGen/core/csr.scala 587:5 830:44]
  wire [31:0] _GEN_187 = 12'h3b0 == csr_addr_i ? 32'h0 : _GEN_184; // @[src/main/scala/coreGen/core/csr.scala 587:5 829:44]
  wire [31:0] _GEN_191 = 12'h3a3 == csr_addr_i ? 32'h0 : _GEN_187; // @[src/main/scala/coreGen/core/csr.scala 587:5 826:47]
  wire [31:0] _GEN_194 = 12'h3a2 == csr_addr_i ? 32'h0 : _GEN_191; // @[src/main/scala/coreGen/core/csr.scala 587:5 823:47]
  wire [31:0] _GEN_197 = 12'h3a1 == csr_addr_i ? 32'h0 : _GEN_194; // @[src/main/scala/coreGen/core/csr.scala 587:5 819:47]
  wire [31:0] _GEN_200 = 12'h3a0 == csr_addr_i ? 32'h0 : _GEN_197; // @[src/main/scala/coreGen/core/csr.scala 587:5 815:47]
  wire [31:0] _GEN_203 = 12'h30a == csr_addr_i ? 32'h0 : _GEN_200; // @[src/main/scala/coreGen/core/csr.scala 516:33 587:5]
  wire [31:0] _GEN_205 = 12'h344 == csr_addr_i ? _csr_rdata_int_T_5 : _GEN_203; // @[src/main/scala/coreGen/core/csr.scala 587:5 791:29]
  wire [31:0] _GEN_208 = 12'h306 == csr_addr_i ? mcounter_q : _GEN_205; // @[src/main/scala/coreGen/core/csr.scala 587:5 746:29]
  wire [31:0] mtval_q = u_mtval_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1684:29 384:30]
  wire [31:0] _GEN_211 = 12'h343 == csr_addr_i ? mtval_q : _GEN_208; // @[src/main/scala/coreGen/core/csr.scala 587:5 736:29]
  wire [31:0] _GEN_214 = 12'h342 == csr_addr_i ? _csr_rdata_int_T_4 : _GEN_211; // @[src/main/scala/coreGen/core/csr.scala 587:5 726:29]
  wire [31:0] mepc_q = u_mepc_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1599:26 378:30]
  wire [31:0] _GEN_217 = 12'h341 == csr_addr_i ? mepc_q : _GEN_214; // @[src/main/scala/coreGen/core/csr.scala 587:5 716:29]
  wire [31:0] mtvec_q = u_mtvec_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1693:29 388:30]
  wire [31:0] _GEN_220 = 12'h305 == csr_addr_i ? mtvec_q : _GEN_217; // @[src/main/scala/coreGen/core/csr.scala 587:5 713:29]
  wire [31:0] mscratch_q = u_mscratch_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1666:30 376:30]
  wire [31:0] _GEN_223 = 12'h340 == csr_addr_i ? mscratch_q : _GEN_220; // @[src/main/scala/coreGen/core/csr.scala 587:5 709:29]
  wire [31:0] _GEN_226 = 12'h304 == csr_addr_i ? _csr_rdata_int_T_1 : _GEN_223; // @[src/main/scala/coreGen/core/csr.scala 587:5 684:37]
  wire [31:0] _GEN_229 = 12'h301 == csr_addr_i ? 32'h40101104 : _GEN_226; // @[src/main/scala/coreGen/core/csr.scala 587:5 658:29]
  wire [31:0] _GEN_232 = 12'h300 == csr_addr_i ? _csr_rdata_int_T : _GEN_229; // @[src/main/scala/coreGen/core/csr.scala 587:5 642:31]
  wire [31:0] _GEN_235 = 12'hf14 == csr_addr_i ? 32'h0 : _GEN_232; // @[src/main/scala/coreGen/core/csr.scala 587:5 609:29]
  wire [31:0] _GEN_238 = 12'hf15 == csr_addr_i ? 32'h0 : _GEN_235; // @[src/main/scala/coreGen/core/csr.scala 587:5 604:29]
  wire [31:0] _GEN_241 = 12'hf11 == csr_addr_i ? 32'h424f5343 : _GEN_238; // @[src/main/scala/coreGen/core/csr.scala 587:5 599:29]
  wire [31:0] _GEN_244 = 12'hf12 == csr_addr_i ? 32'h1 : _GEN_241; // @[src/main/scala/coreGen/core/csr.scala 587:5 594:29]
  wire  _T_259 = csr_wdata_int[12:11] != 2'h3 & csr_wdata_int[12:11] != 2'h0; // @[src/main/scala/coreGen/core/csr.scala 1249:58]
  wire [1:0] _GEN_250 = _T_259 ? 2'h3 : csr_wdata_int[12:11]; // @[src/main/scala/coreGen/core/csr.scala 1250:17 1246:33 1251:37]
  wire  _GEN_252 = 5'h0 == mhpmcounter_idx; // @[src/main/scala/coreGen/core/csr.scala 1368:{49,49} 504:39]
  wire  _GEN_254 = 5'h2 == mhpmcounter_idx; // @[src/main/scala/coreGen/core/csr.scala 1368:{49,49} 504:39]
  wire  _GEN_380 = _T_158 ? 1'h0 : _T_219 & _GEN_252; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_382 = _T_158 ? 1'h0 : _T_219 & _GEN_254; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_413 = _T_40 ? 1'h0 : _T_158 & _GEN_252; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_415 = _T_40 ? 1'h0 : _T_158 & _GEN_254; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_445 = _T_40 ? 1'h0 : _GEN_380; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_447 = _T_40 ? 1'h0 : _GEN_382; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_478 = _T_39 ? 1'h0 : _T_40; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_479 = _T_39 ? 1'h0 : _GEN_413; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_481 = _T_39 ? 1'h0 : _GEN_415; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_511 = _T_39 ? 1'h0 : _GEN_445; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_513 = _T_39 ? 1'h0 : _GEN_447; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_545 = _T_38 ? 1'h0 : _GEN_478; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_546 = _T_38 ? 1'h0 : _GEN_479; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_548 = _T_38 ? 1'h0 : _GEN_481; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_578 = _T_38 ? 1'h0 : _GEN_511; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_580 = _T_38 ? 1'h0 : _GEN_513; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_613 = _T_37 ? 1'h0 : _GEN_545; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_614 = _T_37 ? 1'h0 : _GEN_546; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_616 = _T_37 ? 1'h0 : _GEN_548; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_646 = _T_37 ? 1'h0 : _GEN_578; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_648 = _T_37 ? 1'h0 : _GEN_580; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_699 = _T_36 ? 1'h0 : _GEN_613; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_700 = _T_36 ? 1'h0 : _GEN_614; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_702 = _T_36 ? 1'h0 : _GEN_616; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_732 = _T_36 ? 1'h0 : _GEN_646; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_734 = _T_36 ? 1'h0 : _GEN_648; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_786 = _T_13 ? 1'h0 : _GEN_699; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_787 = _T_13 ? 1'h0 : _GEN_700; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_789 = _T_13 ? 1'h0 : _GEN_702; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_819 = _T_13 ? 1'h0 : _GEN_732; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_821 = _T_13 ? 1'h0 : _GEN_734; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_875 = _T_253 ? 1'h0 : _GEN_786; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_876 = _T_253 ? 1'h0 : _GEN_787; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_878 = _T_253 ? 1'h0 : _GEN_789; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_908 = _T_253 ? 1'h0 : _GEN_819; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_910 = _T_253 ? 1'h0 : _GEN_821; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_966 = _T_252 ? 1'h0 : _GEN_875; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_967 = _T_252 ? 1'h0 : _GEN_876; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_969 = _T_252 ? 1'h0 : _GEN_878; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_999 = _T_252 ? 1'h0 : _GEN_908; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1001 = _T_252 ? 1'h0 : _GEN_910; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1059 = _T_251 ? 1'h0 : _GEN_966; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1060 = _T_251 ? 1'h0 : _GEN_967; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1062 = _T_251 ? 1'h0 : _GEN_969; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1092 = _T_251 ? 1'h0 : _GEN_999; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1094 = _T_251 ? 1'h0 : _GEN_1001; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1152 = _T_1 ? 1'h0 : _GEN_1059; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1153 = _T_1 ? 1'h0 : _GEN_1060; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1155 = _T_1 ? 1'h0 : _GEN_1062; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1185 = _T_1 ? 1'h0 : _GEN_1092; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1187 = _T_1 ? 1'h0 : _GEN_1094; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire [31:0] _GEN_1218 = _T_220 ? csr_wdata_int : 32'h0; // @[src/main/scala/coreGen/core/csr.scala 1239:9 1283:30 444:36]
  wire  _GEN_1247 = _T_220 ? 1'h0 : _GEN_1152; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1248 = _T_220 ? 1'h0 : _GEN_1153; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1250 = _T_220 ? 1'h0 : _GEN_1155; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1280 = _T_220 ? 1'h0 : _GEN_1185; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1282 = _T_220 ? 1'h0 : _GEN_1187; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1313 = _T_9 ? 1'h0 : _T_220; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1314 = _T_9 ? 32'h0 : _GEN_1218; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1343 = _T_9 ? 1'h0 : _GEN_1247; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1344 = _T_9 ? 1'h0 : _GEN_1248; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1346 = _T_9 ? 1'h0 : _GEN_1250; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1376 = _T_9 ? 1'h0 : _GEN_1280; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1378 = _T_9 ? 1'h0 : _GEN_1282; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1409 = _T_12 ? 1'h0 : _T_9; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_1410 = _T_12 ? 1'h0 : _GEN_1313; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1411 = _T_12 ? 32'h0 : _GEN_1314; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1440 = _T_12 ? 1'h0 : _GEN_1343; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1441 = _T_12 ? 1'h0 : _GEN_1344; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1443 = _T_12 ? 1'h0 : _GEN_1346; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1473 = _T_12 ? 1'h0 : _GEN_1376; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1475 = _T_12 ? 1'h0 : _GEN_1378; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1506 = _T_11 ? 1'h0 : _T_12; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_1507 = _T_11 ? 1'h0 : _GEN_1409; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_1508 = _T_11 ? 1'h0 : _GEN_1410; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1509 = _T_11 ? 32'h0 : _GEN_1411; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1538 = _T_11 ? 1'h0 : _GEN_1440; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1539 = _T_11 ? 1'h0 : _GEN_1441; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1541 = _T_11 ? 1'h0 : _GEN_1443; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1571 = _T_11 ? 1'h0 : _GEN_1473; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1573 = _T_11 ? 1'h0 : _GEN_1475; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1604 = _T_10 ? 1'h0 : _T_11; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_1605 = _T_10 ? 1'h0 : _GEN_1506; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_1606 = _T_10 ? 1'h0 : _GEN_1507; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_1607 = _T_10 ? 1'h0 : _GEN_1508; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1608 = _T_10 ? 32'h0 : _GEN_1509; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1637 = _T_10 ? 1'h0 : _GEN_1538; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1638 = _T_10 ? 1'h0 : _GEN_1539; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1640 = _T_10 ? 1'h0 : _GEN_1541; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1670 = _T_10 ? 1'h0 : _GEN_1571; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1672 = _T_10 ? 1'h0 : _GEN_1573; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1703 = _T_8 ? 1'h0 : _T_10; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_1704 = _T_8 ? 1'h0 : _GEN_1604; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_1705 = _T_8 ? 1'h0 : _GEN_1605; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_1706 = _T_8 ? 1'h0 : _GEN_1606; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_1707 = _T_8 ? 1'h0 : _GEN_1607; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1708 = _T_8 ? 32'h0 : _GEN_1608; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1737 = _T_8 ? 1'h0 : _GEN_1637; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1738 = _T_8 ? 1'h0 : _GEN_1638; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1740 = _T_8 ? 1'h0 : _GEN_1640; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1770 = _T_8 ? 1'h0 : _GEN_1670; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1772 = _T_8 ? 1'h0 : _GEN_1672; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1803 = _T_7 ? 1'h0 : _T_8; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_1804 = _T_7 ? 1'h0 : _GEN_1703; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_1805 = _T_7 ? 1'h0 : _GEN_1704; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_1806 = _T_7 ? 1'h0 : _GEN_1705; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_1807 = _T_7 ? 1'h0 : _GEN_1706; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_1808 = _T_7 ? 1'h0 : _GEN_1707; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1809 = _T_7 ? 32'h0 : _GEN_1708; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1838 = _T_7 ? 1'h0 : _GEN_1737; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1839 = _T_7 ? 1'h0 : _GEN_1738; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1841 = _T_7 ? 1'h0 : _GEN_1740; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1871 = _T_7 ? 1'h0 : _GEN_1770; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1873 = _T_7 ? 1'h0 : _GEN_1772; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1904 = _T_250 ? 1'h0 : _T_7; // @[src/main/scala/coreGen/core/csr.scala 1239:9 375:34]
  wire  _GEN_1905 = _T_250 ? 1'h0 : _GEN_1803; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_1906 = _T_250 ? 1'h0 : _GEN_1804; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_1907 = _T_250 ? 1'h0 : _GEN_1805; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_1908 = _T_250 ? 1'h0 : _GEN_1806; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_1909 = _T_250 ? 1'h0 : _GEN_1807; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_1910 = _T_250 ? 1'h0 : _GEN_1808; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_1911 = _T_250 ? 32'h0 : _GEN_1809; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_1940 = _T_250 ? 1'h0 : _GEN_1838; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_1941 = _T_250 ? 1'h0 : _GEN_1839; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1943 = _T_250 ? 1'h0 : _GEN_1841; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_1973 = _T_250 ? 1'h0 : _GEN_1871; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_1975 = _T_250 ? 1'h0 : _GEN_1873; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2007 = _T_249 ? 1'h0 : _GEN_1904; // @[src/main/scala/coreGen/core/csr.scala 1239:9 375:34]
  wire  _GEN_2008 = _T_249 ? 1'h0 : _GEN_1905; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_2009 = _T_249 ? 1'h0 : _GEN_1906; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_2010 = _T_249 ? 1'h0 : _GEN_1907; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_2011 = _T_249 ? 1'h0 : _GEN_1908; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_2012 = _T_249 ? 1'h0 : _GEN_1909; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_2013 = _T_249 ? 1'h0 : _GEN_1910; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_2014 = _T_249 ? 32'h0 : _GEN_1911; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_2043 = _T_249 ? 1'h0 : _GEN_1940; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_2044 = _T_249 ? 1'h0 : _GEN_1941; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2046 = _T_249 ? 1'h0 : _GEN_1943; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2076 = _T_249 ? 1'h0 : _GEN_1973; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2078 = _T_249 ? 1'h0 : _GEN_1975; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2111 = _T_248 ? 1'h0 : _GEN_2007; // @[src/main/scala/coreGen/core/csr.scala 1239:9 375:34]
  wire  _GEN_2112 = _T_248 ? 1'h0 : _GEN_2008; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_2113 = _T_248 ? 1'h0 : _GEN_2009; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_2114 = _T_248 ? 1'h0 : _GEN_2010; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_2115 = _T_248 ? 1'h0 : _GEN_2011; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_2116 = _T_248 ? 1'h0 : _GEN_2012; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_2117 = _T_248 ? 1'h0 : _GEN_2013; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_2118 = _T_248 ? 32'h0 : _GEN_2014; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_2147 = _T_248 ? 1'h0 : _GEN_2043; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_2148 = _T_248 ? 1'h0 : _GEN_2044; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2150 = _T_248 ? 1'h0 : _GEN_2046; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2180 = _T_248 ? 1'h0 : _GEN_2076; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2182 = _T_248 ? 1'h0 : _GEN_2078; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2216 = _T_247 ? 1'h0 : _GEN_2111; // @[src/main/scala/coreGen/core/csr.scala 1239:9 375:34]
  wire  _GEN_2217 = _T_247 ? 1'h0 : _GEN_2112; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_2218 = _T_247 ? 1'h0 : _GEN_2113; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_2219 = _T_247 ? 1'h0 : _GEN_2114; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_2220 = _T_247 ? 1'h0 : _GEN_2115; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_2221 = _T_247 ? 1'h0 : _GEN_2116; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_2222 = _T_247 ? 1'h0 : _GEN_2117; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_2223 = _T_247 ? 32'h0 : _GEN_2118; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_2252 = _T_247 ? 1'h0 : _GEN_2147; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_2253 = _T_247 ? 1'h0 : _GEN_2148; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2255 = _T_247 ? 1'h0 : _GEN_2150; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2285 = _T_247 ? 1'h0 : _GEN_2180; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2287 = _T_247 ? 1'h0 : _GEN_2182; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2322 = _T_246 ? 1'h0 : _GEN_2216; // @[src/main/scala/coreGen/core/csr.scala 1239:9 375:34]
  wire  _GEN_2323 = _T_246 ? 1'h0 : _GEN_2217; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_2324 = _T_246 ? 1'h0 : _GEN_2218; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_2325 = _T_246 ? 1'h0 : _GEN_2219; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_2326 = _T_246 ? 1'h0 : _GEN_2220; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_2327 = _T_246 ? 1'h0 : _GEN_2221; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_2328 = _T_246 ? 1'h0 : _GEN_2222; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_2329 = _T_246 ? 32'h0 : _GEN_2223; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_2358 = _T_246 ? 1'h0 : _GEN_2252; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_2359 = _T_246 ? 1'h0 : _GEN_2253; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2361 = _T_246 ? 1'h0 : _GEN_2255; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2391 = _T_246 ? 1'h0 : _GEN_2285; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2393 = _T_246 ? 1'h0 : _GEN_2287; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2424 = _T_5 ? csr_wdata_int[3] : mstatus_q_mie; // @[src/main/scala/coreGen/core/csr.scala 1239:9 1244:33 369:34]
  wire  _GEN_2425 = _T_5 ? csr_wdata_int[7] : mstatus_q_mpie; // @[src/main/scala/coreGen/core/csr.scala 1239:9 1245:33 369:34]
  wire [1:0] _GEN_2426 = _T_5 ? _GEN_250 : mstatus_q_mpp; // @[src/main/scala/coreGen/core/csr.scala 1239:9 369:34]
  wire  _GEN_2427 = _T_5 ? csr_wdata_int[17] : mstatus_q_mprv; // @[src/main/scala/coreGen/core/csr.scala 1239:9 1247:33 369:34]
  wire  _GEN_2428 = _T_5 ? csr_wdata_int[21] : mstatus_q_tw; // @[src/main/scala/coreGen/core/csr.scala 1239:9 1248:33 369:34]
  wire  _GEN_2434 = _T_5 ? 1'h0 : _GEN_2322; // @[src/main/scala/coreGen/core/csr.scala 1239:9 375:34]
  wire  _GEN_2435 = _T_5 ? 1'h0 : _GEN_2323; // @[src/main/scala/coreGen/core/csr.scala 1239:9 377:34]
  wire  _GEN_2436 = _T_5 ? 1'h0 : _GEN_2324; // @[src/main/scala/coreGen/core/csr.scala 1239:9 380:34]
  wire  _GEN_2437 = _T_5 ? 1'h0 : _GEN_2325; // @[src/main/scala/coreGen/core/csr.scala 1239:9 383:34]
  wire  _GEN_2438 = _T_5 ? 1'h0 : _GEN_2326; // @[src/main/scala/coreGen/core/csr.scala 1239:9 386:34]
  wire  _GEN_2439 = _T_5 ? 1'h0 : _GEN_2327; // @[src/main/scala/coreGen/core/csr.scala 1239:9 391:34]
  wire  _GEN_2440 = _T_5 ? 1'h0 : _GEN_2328; // @[src/main/scala/coreGen/core/csr.scala 1239:9 446:36]
  wire [31:0] _GEN_2441 = _T_5 ? 32'h0 : _GEN_2329; // @[src/main/scala/coreGen/core/csr.scala 1239:9 444:36]
  wire  _GEN_2470 = _T_5 ? 1'h0 : _GEN_2358; // @[src/main/scala/coreGen/core/csr.scala 1239:9 497:36]
  wire  _GEN_2471 = _T_5 ? 1'h0 : _GEN_2359; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2473 = _T_5 ? 1'h0 : _GEN_2361; // @[src/main/scala/coreGen/core/csr.scala 1239:9 504:39]
  wire  _GEN_2503 = _T_5 ? 1'h0 : _GEN_2391; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2505 = _T_5 ? 1'h0 : _GEN_2393; // @[src/main/scala/coreGen/core/csr.scala 1239:9 505:39]
  wire  _GEN_2535 = csr_we_int & _T_5; // @[src/main/scala/coreGen/core/csr.scala 1237:5 372:34]
  wire  _GEN_2536 = csr_we_int ? _GEN_2424 : mstatus_q_mie; // @[src/main/scala/coreGen/core/csr.scala 1237:5 369:34]
  wire  _GEN_2537 = csr_we_int ? _GEN_2425 : mstatus_q_mpie; // @[src/main/scala/coreGen/core/csr.scala 1237:5 369:34]
  wire [1:0] _GEN_2538 = csr_we_int ? _GEN_2426 : mstatus_q_mpp; // @[src/main/scala/coreGen/core/csr.scala 1237:5 369:34]
  wire  mstatus_d_mprv = csr_we_int ? _GEN_2427 : mstatus_q_mprv; // @[src/main/scala/coreGen/core/csr.scala 1237:5 369:34]
  wire  mstatus_d_tw = csr_we_int ? _GEN_2428 : mstatus_q_tw; // @[src/main/scala/coreGen/core/csr.scala 1237:5 369:34]
  wire  _GEN_2548 = csr_we_int & _GEN_2436; // @[src/main/scala/coreGen/core/csr.scala 1237:5 380:34]
  wire  _GEN_2549 = csr_we_int & _GEN_2437; // @[src/main/scala/coreGen/core/csr.scala 1237:5 383:34]
  wire  _GEN_2550 = csr_we_int & _GEN_2438; // @[src/main/scala/coreGen/core/csr.scala 1237:5 386:34]
  wire  mcountinhibit_we = csr_we_int & _GEN_2470; // @[src/main/scala/coreGen/core/csr.scala 1237:5 497:36]
  wire [31:0] _exception_pc_T_2 = csr_save_if_i ? pc_if_i : pc_id_i; // @[src/main/scala/coreGen/core/csr.scala 1390:32]
  wire [5:0] _GEN_2657 = _illegal_csr_T ? csr_mcause_i : _mcause_d_T_2; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1413:32 382:34]
  wire [5:0] _GEN_2680 = nmi_mode_i ? 6'h0 : _mcause_d_T_2; // @[src/main/scala/coreGen/core/csr.scala 1429:31 1435:32 382:34]
  wire [5:0] _GEN_2690 = csr_restore_mret_i ? _GEN_2680 : _mcause_d_T_2; // @[src/main/scala/coreGen/core/csr.scala 1424:39 382:34]
  wire [5:0] _GEN_2700 = csr_restore_dret_i ? _mcause_d_T_2 : _GEN_2690; // @[src/main/scala/coreGen/core/csr.scala 1421:39 382:34]
  wire  _GEN_2648 = _illegal_csr_T | _GEN_2550; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1403:32]
  wire [31:0] _GEN_2649 = _illegal_csr_T ? csr_mtval_i : csr_wdata_int; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1404:32 385:34]
  wire  _GEN_2650 = _illegal_csr_T | _GEN_2535; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1405:32]
  wire  _GEN_2651 = _illegal_csr_T ? 1'h0 : _GEN_2536; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1406:32]
  wire  _GEN_2652 = _illegal_csr_T ? mstatus_q_mie : _GEN_2537; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1408:32]
  wire [1:0] _GEN_2653 = _illegal_csr_T ? priv_lvl_q : _GEN_2538; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1409:32]
  wire  _GEN_2654 = _illegal_csr_T | _GEN_2548; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1410:32]
  wire [31:0] exception_pc = csr_save_cause_i ? _exception_pc_T_2 : pc_id_i; // @[src/main/scala/coreGen/core/csr.scala 1388:31 1390:26 361:34]
  wire [31:0] _GEN_2655 = _illegal_csr_T ? exception_pc : _mepc_d_T_1; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1411:32 379:34]
  wire  _GEN_2656 = _illegal_csr_T | _GEN_2549; // @[src/main/scala/coreGen/core/csr.scala 1400:37 1412:32]
  wire  _GEN_2675 = nmi_mode_i ? 1'h0 : 1'h1; // @[src/main/scala/coreGen/core/csr.scala 1429:31 1430:32 1438:32]
  wire  _GEN_2677 = nmi_mode_i ? 1'h0 : _GEN_2548; // @[src/main/scala/coreGen/core/csr.scala 1429:31 1432:32]
  wire [31:0] _GEN_2678 = nmi_mode_i ? 32'h0 : _mepc_d_T_1; // @[src/main/scala/coreGen/core/csr.scala 1429:31 1433:32 379:34]
  wire  _GEN_2679 = nmi_mode_i | _GEN_2549; // @[src/main/scala/coreGen/core/csr.scala 1429:31 1434:32]
  wire [1:0] _GEN_2681 = csr_restore_mret_i ? mstatus_q_mpp : priv_lvl_q; // @[src/main/scala/coreGen/core/csr.scala 1169:24 1424:39 1425:29]
  wire  _GEN_2682 = csr_restore_mret_i | _GEN_2535; // @[src/main/scala/coreGen/core/csr.scala 1424:39 1426:29]
  wire  _GEN_2683 = csr_restore_mret_i ? mstatus_q_mpie : _GEN_2536; // @[src/main/scala/coreGen/core/csr.scala 1424:39 1427:29]
  wire  _GEN_2685 = csr_restore_mret_i ? _GEN_2675 : _GEN_2537; // @[src/main/scala/coreGen/core/csr.scala 1424:39]
  wire [1:0] _GEN_2686 = csr_restore_mret_i ? 2'h0 : _GEN_2538; // @[src/main/scala/coreGen/core/csr.scala 1424:39]
  wire  _GEN_2687 = csr_restore_mret_i ? _GEN_2677 : _GEN_2548; // @[src/main/scala/coreGen/core/csr.scala 1424:39]
  wire [31:0] _GEN_2688 = csr_restore_mret_i ? _GEN_2678 : _mepc_d_T_1; // @[src/main/scala/coreGen/core/csr.scala 1424:39 379:34]
  wire  _GEN_2689 = csr_restore_mret_i ? _GEN_2679 : _GEN_2549; // @[src/main/scala/coreGen/core/csr.scala 1424:39]
  wire [1:0] _GEN_2691 = csr_restore_dret_i ? 2'h0 : _GEN_2681; // @[src/main/scala/coreGen/core/csr.scala 1421:39 1422:24]
  wire  _GEN_2692 = csr_restore_dret_i ? _GEN_2535 : _GEN_2682; // @[src/main/scala/coreGen/core/csr.scala 1421:39]
  wire  _GEN_2693 = csr_restore_dret_i ? _GEN_2536 : _GEN_2683; // @[src/main/scala/coreGen/core/csr.scala 1421:39]
  wire  _GEN_2695 = csr_restore_dret_i ? _GEN_2537 : _GEN_2685; // @[src/main/scala/coreGen/core/csr.scala 1421:39]
  wire [1:0] _GEN_2696 = csr_restore_dret_i ? _GEN_2538 : _GEN_2686; // @[src/main/scala/coreGen/core/csr.scala 1421:39]
  wire  _GEN_2697 = csr_restore_dret_i ? _GEN_2548 : _GEN_2687; // @[src/main/scala/coreGen/core/csr.scala 1421:39]
  wire [31:0] _GEN_2698 = csr_restore_dret_i ? _mepc_d_T_1 : _GEN_2688; // @[src/main/scala/coreGen/core/csr.scala 1421:39 379:34]
  wire  _GEN_2699 = csr_restore_dret_i ? _GEN_2549 : _GEN_2689; // @[src/main/scala/coreGen/core/csr.scala 1421:39]
  wire  mstatus_d_mie = csr_save_cause_i ? _GEN_2651 : _GEN_2693; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  wire  mstatus_d_mpie = csr_save_cause_i ? _GEN_2652 : _GEN_2695; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  wire [1:0] mstatus_d_mpp = csr_save_cause_i ? _GEN_2653 : _GEN_2696; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  wire [3:0] _irqs_uint_T = {irqs_i_timer,irqs_i_software,irqs_i_external,irqs_i_nmi}; // @[src/main/scala/coreGen/core/csr.scala 1503:33]
  wire  mie_q_nmi = u_mie_csr_rd_data_o[0]; // @[src/main/scala/coreGen/core/csr.scala 1657:57]
  wire [3:0] _irqs_uint_T_1 = {mie_q_timer,mie_q_software,mie_q_external,mie_q_nmi}; // @[src/main/scala/coreGen/core/csr.scala 1503:51]
  wire [3:0] irqs_uint = _irqs_uint_T & _irqs_uint_T_1; // @[src/main/scala/coreGen/core/csr.scala 1503:43]
  wire [3:0] u_mstatus_csr_wr_data_i_lo = {mstatus_d_mpp,mstatus_d_mprv,mstatus_d_tw}; // @[src/main/scala/coreGen/core/csr.scala 1587:43]
  wire [2:0] u_mstatus_csr_wr_data_i_hi = {mstatus_d_mie,mstatus_d_mpie,1'h0}; // @[src/main/scala/coreGen/core/csr.scala 1587:43]
  wire [3:0] _u_mie_csr_bank_wr_data_i_T = {csr_wdata_int[7],csr_wdata_int[3],csr_wdata_int[11],1'h1}; // @[src/main/scala/coreGen/core/csr.scala 1625:48]
  wire [33:0] _csr_mcause_o_T_2 = {u_mcause_csr_rd_data_o[5],28'h0,u_mcause_csr_rd_data_o[4:0]}; // @[src/main/scala/coreGen/core/csr.scala 1677:37]
  wire [2:0] _mcountinhibit_d_T_3 = {csr_wdata_int[2],1'h0,tcm_ecc_ie_d}; // @[src/main/scala/coreGen/core/csr.scala 2000:55]
  csrr u_mstatus_csr ( // @[src/main/scala/coreGen/core/csr.scala 1581:33]
    .clock(u_mstatus_csr_clock),
    .reset(u_mstatus_csr_reset),
    .wr_data_i(u_mstatus_csr_wr_data_i),
    .wr_en_i(u_mstatus_csr_wr_en_i),
    .rd_data_o(u_mstatus_csr_rd_data_o)
  );
  csrr_1 u_mepc_csr ( // @[src/main/scala/coreGen/core/csr.scala 1596:33]
    .clock(u_mepc_csr_clock),
    .reset(u_mepc_csr_reset),
    .wr_data_i(u_mepc_csr_wr_data_i),
    .wr_en_i(u_mepc_csr_wr_en_i),
    .rd_data_o(u_mepc_csr_rd_data_o)
  );
  csrr_2 u_mie_csr_bank ( // @[src/main/scala/coreGen/core/csr.scala 1624:35]
    .clock(u_mie_csr_bank_clock),
    .reset(u_mie_csr_bank_reset),
    .wr_data_i(u_mie_csr_bank_wr_data_i),
    .wr_en_i(u_mie_csr_bank_wr_en_i),
    .rd_data_o(u_mie_csr_bank_rd_data_o)
  );
  csrr_2 u_mie_csr ( // @[src/main/scala/coreGen/core/csr.scala 1653:35]
    .clock(u_mie_csr_clock),
    .reset(u_mie_csr_reset),
    .wr_data_i(u_mie_csr_wr_data_i),
    .wr_en_i(u_mie_csr_wr_en_i),
    .rd_data_o(u_mie_csr_rd_data_o)
  );
  csrr_1 u_mscratch_csr ( // @[src/main/scala/coreGen/core/csr.scala 1661:33]
    .clock(u_mscratch_csr_clock),
    .reset(u_mscratch_csr_reset),
    .wr_data_i(u_mscratch_csr_wr_data_i),
    .wr_en_i(u_mscratch_csr_wr_en_i),
    .rd_data_o(u_mscratch_csr_rd_data_o)
  );
  csrr_5 u_mcause_csr ( // @[src/main/scala/coreGen/core/csr.scala 1669:33]
    .clock(u_mcause_csr_clock),
    .reset(u_mcause_csr_reset),
    .wr_data_i(u_mcause_csr_wr_data_i),
    .wr_en_i(u_mcause_csr_wr_en_i),
    .rd_data_o(u_mcause_csr_rd_data_o)
  );
  csrr_1 u_mtval_csr ( // @[src/main/scala/coreGen/core/csr.scala 1680:33]
    .clock(u_mtval_csr_clock),
    .reset(u_mtval_csr_reset),
    .wr_data_i(u_mtval_csr_wr_data_i),
    .wr_en_i(u_mtval_csr_wr_en_i),
    .rd_data_o(u_mtval_csr_rd_data_o)
  );
  csrr_7 u_mtvec_csr ( // @[src/main/scala/coreGen/core/csr.scala 1689:33]
    .clock(u_mtvec_csr_clock),
    .reset(u_mtvec_csr_reset),
    .wr_data_i(u_mtvec_csr_wr_data_i),
    .wr_en_i(u_mtvec_csr_wr_en_i),
    .rd_data_o(u_mtvec_csr_rd_data_o)
  );
  csrr_1 u_mpvec_csr ( // @[src/main/scala/coreGen/core/csr.scala 1697:37]
    .clock(u_mpvec_csr_clock),
    .reset(u_mpvec_csr_reset),
    .wr_data_i(u_mpvec_csr_wr_data_i),
    .wr_en_i(u_mpvec_csr_wr_en_i),
    .rd_data_o(u_mpvec_csr_rd_data_o)
  );
  csrc u_mcycle_counter ( // @[src/main/scala/coreGen/core/csr.scala 2038:34]
    .clock(u_mcycle_counter_clock),
    .reset(u_mcycle_counter_reset),
    .counter_inc_i(u_mcycle_counter_counter_inc_i),
    .counterh_we_i(u_mcycle_counter_counterh_we_i),
    .counter_we_i(u_mcycle_counter_counter_we_i),
    .counter_val_i(u_mcycle_counter_counter_val_i),
    .counter_val_o(u_mcycle_counter_counter_val_o)
  );
  csrc u_minstret_counter ( // @[src/main/scala/coreGen/core/csr.scala 2048:36]
    .clock(u_minstret_counter_clock),
    .reset(u_minstret_counter_reset),
    .counter_inc_i(u_minstret_counter_counter_inc_i),
    .counterh_we_i(u_minstret_counter_counterh_we_i),
    .counter_we_i(u_minstret_counter_counter_we_i),
    .counter_val_i(u_minstret_counter_counter_val_i),
    .counter_val_o(u_minstret_counter_counter_val_o)
  );
  assign priv_mode_id_o = priv_lvl_q; // @[src/main/scala/coreGen/core/csr.scala 1460:21]
  assign priv_mode_if_o = csr_save_cause_i ? 2'h3 : _GEN_2691; // @[src/main/scala/coreGen/core/csr.scala 1388:31 1389:24]
  assign priv_mode_lsu_o = mstatus_q_mprv ? mstatus_q_mpp : priv_lvl_q; // @[src/main/scala/coreGen/core/csr.scala 1462:28]
  assign csr_mstatus_tw_o = _mstatus_q_WIRE_1[0]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  assign csr_mtvec_o = u_mtvec_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1693:29 388:30]
  assign csr_rdata_o = 12'hf13 == csr_addr_i ? 32'h1 : _GEN_244; // @[src/main/scala/coreGen/core/csr.scala 587:5 589:29]
  assign irq_pending_o = |irqs_uint; // @[src/main/scala/coreGen/core/csr.scala 1524:40]
  assign irqs_o_timer = irqs_i_timer & mie_q_timer; // @[src/main/scala/coreGen/core/csr.scala 1505:43]
  assign irqs_o_software = irqs_i_software & mie_q_software; // @[src/main/scala/coreGen/core/csr.scala 1504:43]
  assign irqs_o_external = irqs_i_external & mie_q_external; // @[src/main/scala/coreGen/core/csr.scala 1506:43]
  assign irqs_o_nmi = irqs_i_nmi & mie_q_nmi; // @[src/main/scala/coreGen/core/csr.scala 1511:40]
  assign csr_mstatus_mie_o = _mstatus_q_WIRE_1[6]; // @[src/main/scala/coreGen/core/csr.scala 1590:65]
  assign csr_mepc_o = u_mepc_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1599:26 378:30]
  assign illegal_csr_insn_o = csr_access_i & (illegal_csr | illegal_csr_write | illegal_csr_priv); // @[src/main/scala/coreGen/core/csr.scala 546:41]
  assign csr_mcause_o = _csr_mcause_o_T_2[31:0]; // @[src/main/scala/coreGen/core/csr.scala 1677:30]
  assign csr_mcycle_o = u_mcycle_counter_counter_val_o; // @[src/main/scala/coreGen/core/csr.scala 2045:41]
  assign csr_mpvec_base = u_mpvec_csr_rd_data_o; // @[src/main/scala/coreGen/core/csr.scala 1700:31 445:36]
  assign csr_mpvec_mode = mpvec_q[1:0] == 2'h1; // @[src/main/scala/coreGen/core/csr.scala 1703:48]
  assign u_mstatus_csr_clock = clock;
  assign u_mstatus_csr_reset = reset;
  assign u_mstatus_csr_wr_data_i = {u_mstatus_csr_wr_data_i_hi,u_mstatus_csr_wr_data_i_lo}; // @[src/main/scala/coreGen/core/csr.scala 1587:43]
  assign u_mstatus_csr_wr_en_i = csr_save_cause_i ? _GEN_2650 : _GEN_2692; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  assign u_mepc_csr_clock = clock;
  assign u_mepc_csr_reset = reset;
  assign u_mepc_csr_wr_data_i = csr_save_cause_i ? _GEN_2655 : _GEN_2698; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  assign u_mepc_csr_wr_en_i = csr_save_cause_i ? _GEN_2654 : _GEN_2697; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  assign u_mie_csr_bank_clock = clock;
  assign u_mie_csr_bank_reset = reset;
  assign u_mie_csr_bank_wr_data_i = {{16'd0}, _u_mie_csr_bank_wr_data_i_T}; // @[src/main/scala/coreGen/core/csr.scala 1625:{48,48}]
  assign u_mie_csr_bank_wr_en_i = csr_we_int & _GEN_2434; // @[src/main/scala/coreGen/core/csr.scala 1237:5 375:34]
  assign u_mie_csr_clock = clock;
  assign u_mie_csr_reset = reset;
  assign u_mie_csr_wr_data_i = {{16'd0}, _u_mie_csr_bank_wr_data_i_T}; // @[src/main/scala/coreGen/core/csr.scala 1655:{43,43}]
  assign u_mie_csr_wr_en_i = csr_we_int & _GEN_2434; // @[src/main/scala/coreGen/core/csr.scala 1237:5 375:34]
  assign u_mscratch_csr_clock = clock;
  assign u_mscratch_csr_reset = reset;
  assign u_mscratch_csr_wr_data_i = 2'h0 == csr_op_i ? csr_wdata_i : _csr_wdata_int_T_6; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  assign u_mscratch_csr_wr_en_i = csr_we_int & _GEN_2435; // @[src/main/scala/coreGen/core/csr.scala 1237:5 377:34]
  assign u_mcause_csr_clock = clock;
  assign u_mcause_csr_reset = reset;
  assign u_mcause_csr_wr_data_i = csr_save_cause_i ? _GEN_2657 : _GEN_2700; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  assign u_mcause_csr_wr_en_i = csr_save_cause_i ? _GEN_2656 : _GEN_2699; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  assign u_mtval_csr_clock = clock;
  assign u_mtval_csr_reset = reset;
  assign u_mtval_csr_wr_data_i = csr_save_cause_i ? _GEN_2649 : csr_wdata_int; // @[src/main/scala/coreGen/core/csr.scala 1388:31 385:34]
  assign u_mtval_csr_wr_en_i = csr_save_cause_i ? _GEN_2648 : _GEN_2550; // @[src/main/scala/coreGen/core/csr.scala 1388:31]
  assign u_mtvec_csr_clock = clock;
  assign u_mtvec_csr_reset = reset;
  assign u_mtvec_csr_wr_data_i = {csr_wdata_int[31:2],2'h1}; // @[src/main/scala/coreGen/core/csr.scala 389:29]
  assign u_mtvec_csr_wr_en_i = csr_we_int & _GEN_2439; // @[src/main/scala/coreGen/core/csr.scala 1237:5 391:34]
  assign u_mpvec_csr_clock = clock;
  assign u_mpvec_csr_reset = reset;
  assign u_mpvec_csr_wr_data_i = csr_we_int ? _GEN_2441 : 32'h0; // @[src/main/scala/coreGen/core/csr.scala 1237:5 444:36]
  assign u_mpvec_csr_wr_en_i = csr_we_int & _GEN_2440; // @[src/main/scala/coreGen/core/csr.scala 1237:5 446:36]
  assign u_mcycle_counter_clock = clock;
  assign u_mcycle_counter_reset = reset;
  assign u_mcycle_counter_counter_inc_i = ~mcountinhibit[0]; // @[src/main/scala/coreGen/core/csr.scala 2039:66]
  assign u_mcycle_counter_counterh_we_i = csr_we_int & _GEN_2503; // @[src/main/scala/coreGen/core/csr.scala 1237:5 505:39]
  assign u_mcycle_counter_counter_we_i = csr_we_int & _GEN_2471; // @[src/main/scala/coreGen/core/csr.scala 1237:5 504:39]
  assign u_mcycle_counter_counter_val_i = 2'h0 == csr_op_i ? csr_wdata_i : _csr_wdata_int_T_6; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  assign u_minstret_counter_clock = clock;
  assign u_minstret_counter_reset = reset;
  assign u_minstret_counter_counter_inc_i = instr_ret_i & ~mcountinhibit[2]; // @[src/main/scala/coreGen/core/csr.scala 2049:64]
  assign u_minstret_counter_counterh_we_i = csr_we_int & _GEN_2505; // @[src/main/scala/coreGen/core/csr.scala 1237:5 505:39]
  assign u_minstret_counter_counter_we_i = csr_we_int & _GEN_2473; // @[src/main/scala/coreGen/core/csr.scala 1237:5 504:39]
  assign u_minstret_counter_counter_val_i = 2'h0 == csr_op_i ? csr_wdata_i : _csr_wdata_int_T_6; // @[src/main/scala/coreGen/core/csr.scala 1465:54]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/csr.scala 1388:31]
      priv_lvl_q <= 2'h3; // @[src/main/scala/coreGen/core/csr.scala 1389:24]
    end else if (csr_save_cause_i) begin // @[src/main/scala/coreGen/core/csr.scala 1421:39]
      priv_lvl_q <= 2'h3; // @[src/main/scala/coreGen/core/csr.scala 1422:24]
    end else if (csr_restore_dret_i) begin // @[src/main/scala/coreGen/core/csr.scala 1424:39]
      priv_lvl_q <= 2'h0; // @[src/main/scala/coreGen/core/csr.scala 1425:29]
    end else if (csr_restore_mret_i) begin // @[src/main/scala/coreGen/core/csr.scala 1169:24]
      priv_lvl_q <= mstatus_q_mpp;
    end
  end
  always @(posedge clock or posedge _mstatus_vs_q_T_2) begin
    if (_mstatus_vs_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      mcounter_q <= 32'h0; // @[src/main/scala/coreGen/core/csr.scala 1465:{54,54,54}]
    end else if (mcounter_en) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      if (2'h0 == csr_op_i) begin
        mcounter_q <= csr_wdata_i;
      end else if (2'h3 == csr_op_i) begin
        mcounter_q <= _csr_wdata_int_T_2;
      end else if (2'h2 == csr_op_i) begin
        mcounter_q <= _csr_wdata_int_T;
      end else begin
        mcounter_q <= csr_wdata_i;
      end
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/csr.scala 2000:27]
      mcountinhibit_q <= 3'h0;
    end else if (mcountinhibit_we) begin
      mcountinhibit_q <= _mcountinhibit_d_T_3;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  priv_lvl_q = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  mcounter_q = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mcountinhibit_q = _RAND_2[2:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    priv_lvl_q = 2'h3;
  end
  if (_mstatus_vs_q_T_2) begin
    mcounter_q = 32'h0;
  end
  if (~reset) begin
    mcountinhibit_q = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RegisterfileLatch(
  input         clock,
  input         reset,
  input  [4:0]  io_intRegfile_raddr_0, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  input  [4:0]  io_intRegfile_raddr_1, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  output [31:0] io_intRegfile_rdata_0, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  output [31:0] io_intRegfile_rdata_1, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  output        io_intRegfile_rdata_pol_0, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  output        io_intRegfile_rdata_pol_1, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  input  [4:0]  io_intRegfile_waddr, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  input  [31:0] io_intRegfile_wdata, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  input         io_intRegfile_wdata_pol, // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
  input         io_intRegfile_we // @[src/main/scala/coreGen/core/Registerfile.scala 15:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  wire  rf_reg_q_0_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_0_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_0_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_0_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_1_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_1_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_1_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_1_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_2_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_2_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_2_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_2_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_3_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_3_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_3_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_3_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_4_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_4_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_4_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_4_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_5_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_5_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_5_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_5_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_6_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_6_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_6_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_6_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_7_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_7_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_7_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_7_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_8_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_8_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_8_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_8_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_9_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_9_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_9_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_9_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_10_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_10_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_10_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_10_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_11_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_11_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_11_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_11_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_12_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_12_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_12_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_12_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_13_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_13_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_13_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_13_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_14_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_14_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_14_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_14_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_15_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_15_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_15_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_15_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_16_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_16_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_16_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_16_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_17_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_17_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_17_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_17_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_18_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_18_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_18_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_18_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_19_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_19_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_19_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_19_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_20_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_20_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_20_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_20_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_21_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_21_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_21_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_21_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_22_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_22_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_22_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_22_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_23_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_23_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_23_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_23_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_24_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_24_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_24_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_24_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_25_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_25_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_25_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_25_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_26_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_26_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_26_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_26_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_27_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_27_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_27_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_27_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_28_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_28_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_28_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_28_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_29_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_29_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_29_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_29_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_30_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  rf_reg_q_30_en; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_30_din; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire [33:0] rf_reg_q_30_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
  wire  _wdata_par0_T_6 = io_intRegfile_wdata[0] ^ io_intRegfile_wdata[2] ^ io_intRegfile_wdata[3] ^ io_intRegfile_wdata
    [5]; // @[src/main/scala/coreGen/core/Registerfile.scala 285:61]
  wire  _wdata_par0_T_12 = _wdata_par0_T_6 ^ io_intRegfile_wdata[6] ^ io_intRegfile_wdata[8] ^ io_intRegfile_wdata[9]; // @[src/main/scala/coreGen/core/Registerfile.scala 286:64]
  wire  _wdata_par0_T_18 = _wdata_par0_T_12 ^ io_intRegfile_wdata[11] ^ io_intRegfile_wdata[12] ^ io_intRegfile_wdata[14
    ]; // @[src/main/scala/coreGen/core/Registerfile.scala 287:64]
  wire  _wdata_par0_T_24 = _wdata_par0_T_18 ^ io_intRegfile_wdata[15] ^ io_intRegfile_wdata[17] ^ io_intRegfile_wdata[18
    ]; // @[src/main/scala/coreGen/core/Registerfile.scala 288:64]
  wire  _wdata_par0_T_30 = _wdata_par0_T_24 ^ io_intRegfile_wdata[20] ^ io_intRegfile_wdata[21] ^ io_intRegfile_wdata[23
    ]; // @[src/main/scala/coreGen/core/Registerfile.scala 289:64]
  wire  _wdata_par0_T_36 = _wdata_par0_T_30 ^ io_intRegfile_wdata[24] ^ io_intRegfile_wdata[26] ^ io_intRegfile_wdata[27
    ]; // @[src/main/scala/coreGen/core/Registerfile.scala 290:64]
  wire  wdata_par0 = _wdata_par0_T_36 ^ io_intRegfile_wdata[29] ^ io_intRegfile_wdata[30] ^ io_intRegfile_wdata_pol; // @[src/main/scala/coreGen/core/Registerfile.scala 291:64]
  wire  _rf_clear_T = 1'h0; // @[src/main/scala/coreGen/core/Registerfile.scala 316:47]
  wire  rf_clear = 1'h0; // @[src/main/scala/coreGen/core/Registerfile.scala 316:76]
  wire [32:0] rf_wdata_wb_q_lo = {io_intRegfile_wdata_pol,io_intRegfile_wdata}; // @[src/main/scala/coreGen/core/Registerfile.scala 319:43]
  wire [1:0] rf_wdata_wb_q_hi = {1'h0,wdata_par0}; // @[src/main/scala/coreGen/core/Registerfile.scala 319:43]
  wire  _rf_wdata_wb_q_T_3 = ~reset; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 12:31]
  reg [34:0] rf_wdata_wb_q; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 12:52]
  reg  rf_waddr_onehot_q_0; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_1; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_2; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_3; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_4; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_5; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_6; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_7; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_8; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_9; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_10; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_11; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_12; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_13; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_14; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_15; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_16; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_17; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_18; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_19; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_20; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_21; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_22; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_23; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_24; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_25; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_26; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_27; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_28; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_29; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  rf_waddr_onehot_q_30; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire [34:0] _rf_reg_q_0_io_din_T = _rf_clear_T ? 35'h0 : rf_wdata_wb_q; // @[src/main/scala/coreGen/core/Registerfile.scala 325:34]
  wire [33:0] rf_reg_1 = rf_reg_q_0_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_1 = 5'h1 == io_intRegfile_raddr_0 ? rf_reg_1 : 34'h0; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_2 = rf_reg_q_1_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_2 = 5'h2 == io_intRegfile_raddr_0 ? rf_reg_2 : _GEN_1; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_3 = rf_reg_q_2_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_3 = 5'h3 == io_intRegfile_raddr_0 ? rf_reg_3 : _GEN_2; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_4 = rf_reg_q_3_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_4 = 5'h4 == io_intRegfile_raddr_0 ? rf_reg_4 : _GEN_3; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_5 = rf_reg_q_4_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_5 = 5'h5 == io_intRegfile_raddr_0 ? rf_reg_5 : _GEN_4; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_6 = rf_reg_q_5_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_6 = 5'h6 == io_intRegfile_raddr_0 ? rf_reg_6 : _GEN_5; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_7 = rf_reg_q_6_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_7 = 5'h7 == io_intRegfile_raddr_0 ? rf_reg_7 : _GEN_6; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_8 = rf_reg_q_7_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_8 = 5'h8 == io_intRegfile_raddr_0 ? rf_reg_8 : _GEN_7; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_9 = rf_reg_q_8_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_9 = 5'h9 == io_intRegfile_raddr_0 ? rf_reg_9 : _GEN_8; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_10 = rf_reg_q_9_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_10 = 5'ha == io_intRegfile_raddr_0 ? rf_reg_10 : _GEN_9; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_11 = rf_reg_q_10_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_11 = 5'hb == io_intRegfile_raddr_0 ? rf_reg_11 : _GEN_10; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_12 = rf_reg_q_11_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_12 = 5'hc == io_intRegfile_raddr_0 ? rf_reg_12 : _GEN_11; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_13 = rf_reg_q_12_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_13 = 5'hd == io_intRegfile_raddr_0 ? rf_reg_13 : _GEN_12; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_14 = rf_reg_q_13_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_14 = 5'he == io_intRegfile_raddr_0 ? rf_reg_14 : _GEN_13; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_15 = rf_reg_q_14_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_15 = 5'hf == io_intRegfile_raddr_0 ? rf_reg_15 : _GEN_14; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_16 = rf_reg_q_15_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_16 = 5'h10 == io_intRegfile_raddr_0 ? rf_reg_16 : _GEN_15; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_17 = rf_reg_q_16_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_17 = 5'h11 == io_intRegfile_raddr_0 ? rf_reg_17 : _GEN_16; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_18 = rf_reg_q_17_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_18 = 5'h12 == io_intRegfile_raddr_0 ? rf_reg_18 : _GEN_17; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_19 = rf_reg_q_18_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_19 = 5'h13 == io_intRegfile_raddr_0 ? rf_reg_19 : _GEN_18; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_20 = rf_reg_q_19_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_20 = 5'h14 == io_intRegfile_raddr_0 ? rf_reg_20 : _GEN_19; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_21 = rf_reg_q_20_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_21 = 5'h15 == io_intRegfile_raddr_0 ? rf_reg_21 : _GEN_20; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_22 = rf_reg_q_21_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_22 = 5'h16 == io_intRegfile_raddr_0 ? rf_reg_22 : _GEN_21; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_23 = rf_reg_q_22_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_23 = 5'h17 == io_intRegfile_raddr_0 ? rf_reg_23 : _GEN_22; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_24 = rf_reg_q_23_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_24 = 5'h18 == io_intRegfile_raddr_0 ? rf_reg_24 : _GEN_23; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_25 = rf_reg_q_24_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_25 = 5'h19 == io_intRegfile_raddr_0 ? rf_reg_25 : _GEN_24; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_26 = rf_reg_q_25_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_26 = 5'h1a == io_intRegfile_raddr_0 ? rf_reg_26 : _GEN_25; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_27 = rf_reg_q_26_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_27 = 5'h1b == io_intRegfile_raddr_0 ? rf_reg_27 : _GEN_26; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_28 = rf_reg_q_27_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_28 = 5'h1c == io_intRegfile_raddr_0 ? rf_reg_28 : _GEN_27; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_29 = rf_reg_q_28_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_29 = 5'h1d == io_intRegfile_raddr_0 ? rf_reg_29 : _GEN_28; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_30 = rf_reg_q_29_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_30 = 5'h1e == io_intRegfile_raddr_0 ? rf_reg_30 : _GEN_29; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] rf_reg_31 = rf_reg_q_30_dout; // @[src/main/scala/coreGen/core/Registerfile.scala 314:26 326:21]
  wire [33:0] _GEN_31 = 5'h1f == io_intRegfile_raddr_0 ? rf_reg_31 : _GEN_30; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_33 = 5'h1 == io_intRegfile_raddr_1 ? rf_reg_1 : 34'h0; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_34 = 5'h2 == io_intRegfile_raddr_1 ? rf_reg_2 : _GEN_33; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_35 = 5'h3 == io_intRegfile_raddr_1 ? rf_reg_3 : _GEN_34; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_36 = 5'h4 == io_intRegfile_raddr_1 ? rf_reg_4 : _GEN_35; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_37 = 5'h5 == io_intRegfile_raddr_1 ? rf_reg_5 : _GEN_36; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_38 = 5'h6 == io_intRegfile_raddr_1 ? rf_reg_6 : _GEN_37; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_39 = 5'h7 == io_intRegfile_raddr_1 ? rf_reg_7 : _GEN_38; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_40 = 5'h8 == io_intRegfile_raddr_1 ? rf_reg_8 : _GEN_39; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_41 = 5'h9 == io_intRegfile_raddr_1 ? rf_reg_9 : _GEN_40; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_42 = 5'ha == io_intRegfile_raddr_1 ? rf_reg_10 : _GEN_41; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_43 = 5'hb == io_intRegfile_raddr_1 ? rf_reg_11 : _GEN_42; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_44 = 5'hc == io_intRegfile_raddr_1 ? rf_reg_12 : _GEN_43; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_45 = 5'hd == io_intRegfile_raddr_1 ? rf_reg_13 : _GEN_44; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_46 = 5'he == io_intRegfile_raddr_1 ? rf_reg_14 : _GEN_45; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_47 = 5'hf == io_intRegfile_raddr_1 ? rf_reg_15 : _GEN_46; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_48 = 5'h10 == io_intRegfile_raddr_1 ? rf_reg_16 : _GEN_47; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_49 = 5'h11 == io_intRegfile_raddr_1 ? rf_reg_17 : _GEN_48; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_50 = 5'h12 == io_intRegfile_raddr_1 ? rf_reg_18 : _GEN_49; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_51 = 5'h13 == io_intRegfile_raddr_1 ? rf_reg_19 : _GEN_50; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_52 = 5'h14 == io_intRegfile_raddr_1 ? rf_reg_20 : _GEN_51; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_53 = 5'h15 == io_intRegfile_raddr_1 ? rf_reg_21 : _GEN_52; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_54 = 5'h16 == io_intRegfile_raddr_1 ? rf_reg_22 : _GEN_53; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_55 = 5'h17 == io_intRegfile_raddr_1 ? rf_reg_23 : _GEN_54; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_56 = 5'h18 == io_intRegfile_raddr_1 ? rf_reg_24 : _GEN_55; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_57 = 5'h19 == io_intRegfile_raddr_1 ? rf_reg_25 : _GEN_56; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_58 = 5'h1a == io_intRegfile_raddr_1 ? rf_reg_26 : _GEN_57; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_59 = 5'h1b == io_intRegfile_raddr_1 ? rf_reg_27 : _GEN_58; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_60 = 5'h1c == io_intRegfile_raddr_1 ? rf_reg_28 : _GEN_59; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_61 = 5'h1d == io_intRegfile_raddr_1 ? rf_reg_29 : _GEN_60; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_62 = 5'h1e == io_intRegfile_raddr_1 ? rf_reg_30 : _GEN_61; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  wire [33:0] _GEN_63 = 5'h1f == io_intRegfile_raddr_1 ? rf_reg_31 : _GEN_62; // @[src/main/scala/coreGen/core/Registerfile.scala 337:{65,65}]
  Latch #(.dataW(34)) rf_reg_q_0 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_0_reset),
    .en(rf_reg_q_0_en),
    .din(rf_reg_q_0_din),
    .dout(rf_reg_q_0_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_1 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_1_reset),
    .en(rf_reg_q_1_en),
    .din(rf_reg_q_1_din),
    .dout(rf_reg_q_1_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_2 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_2_reset),
    .en(rf_reg_q_2_en),
    .din(rf_reg_q_2_din),
    .dout(rf_reg_q_2_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_3 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_3_reset),
    .en(rf_reg_q_3_en),
    .din(rf_reg_q_3_din),
    .dout(rf_reg_q_3_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_4 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_4_reset),
    .en(rf_reg_q_4_en),
    .din(rf_reg_q_4_din),
    .dout(rf_reg_q_4_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_5 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_5_reset),
    .en(rf_reg_q_5_en),
    .din(rf_reg_q_5_din),
    .dout(rf_reg_q_5_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_6 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_6_reset),
    .en(rf_reg_q_6_en),
    .din(rf_reg_q_6_din),
    .dout(rf_reg_q_6_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_7 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_7_reset),
    .en(rf_reg_q_7_en),
    .din(rf_reg_q_7_din),
    .dout(rf_reg_q_7_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_8 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_8_reset),
    .en(rf_reg_q_8_en),
    .din(rf_reg_q_8_din),
    .dout(rf_reg_q_8_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_9 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_9_reset),
    .en(rf_reg_q_9_en),
    .din(rf_reg_q_9_din),
    .dout(rf_reg_q_9_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_10 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_10_reset),
    .en(rf_reg_q_10_en),
    .din(rf_reg_q_10_din),
    .dout(rf_reg_q_10_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_11 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_11_reset),
    .en(rf_reg_q_11_en),
    .din(rf_reg_q_11_din),
    .dout(rf_reg_q_11_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_12 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_12_reset),
    .en(rf_reg_q_12_en),
    .din(rf_reg_q_12_din),
    .dout(rf_reg_q_12_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_13 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_13_reset),
    .en(rf_reg_q_13_en),
    .din(rf_reg_q_13_din),
    .dout(rf_reg_q_13_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_14 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_14_reset),
    .en(rf_reg_q_14_en),
    .din(rf_reg_q_14_din),
    .dout(rf_reg_q_14_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_15 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_15_reset),
    .en(rf_reg_q_15_en),
    .din(rf_reg_q_15_din),
    .dout(rf_reg_q_15_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_16 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_16_reset),
    .en(rf_reg_q_16_en),
    .din(rf_reg_q_16_din),
    .dout(rf_reg_q_16_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_17 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_17_reset),
    .en(rf_reg_q_17_en),
    .din(rf_reg_q_17_din),
    .dout(rf_reg_q_17_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_18 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_18_reset),
    .en(rf_reg_q_18_en),
    .din(rf_reg_q_18_din),
    .dout(rf_reg_q_18_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_19 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_19_reset),
    .en(rf_reg_q_19_en),
    .din(rf_reg_q_19_din),
    .dout(rf_reg_q_19_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_20 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_20_reset),
    .en(rf_reg_q_20_en),
    .din(rf_reg_q_20_din),
    .dout(rf_reg_q_20_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_21 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_21_reset),
    .en(rf_reg_q_21_en),
    .din(rf_reg_q_21_din),
    .dout(rf_reg_q_21_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_22 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_22_reset),
    .en(rf_reg_q_22_en),
    .din(rf_reg_q_22_din),
    .dout(rf_reg_q_22_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_23 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_23_reset),
    .en(rf_reg_q_23_en),
    .din(rf_reg_q_23_din),
    .dout(rf_reg_q_23_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_24 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_24_reset),
    .en(rf_reg_q_24_en),
    .din(rf_reg_q_24_din),
    .dout(rf_reg_q_24_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_25 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_25_reset),
    .en(rf_reg_q_25_en),
    .din(rf_reg_q_25_din),
    .dout(rf_reg_q_25_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_26 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_26_reset),
    .en(rf_reg_q_26_en),
    .din(rf_reg_q_26_din),
    .dout(rf_reg_q_26_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_27 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_27_reset),
    .en(rf_reg_q_27_en),
    .din(rf_reg_q_27_din),
    .dout(rf_reg_q_27_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_28 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_28_reset),
    .en(rf_reg_q_28_en),
    .din(rf_reg_q_28_din),
    .dout(rf_reg_q_28_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_29 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_29_reset),
    .en(rf_reg_q_29_en),
    .din(rf_reg_q_29_din),
    .dout(rf_reg_q_29_dout)
  );
  Latch #(.dataW(34)) rf_reg_q_30 ( // @[src/main/scala/coreGen/core/Registerfile.scala 313:48]
    .reset(rf_reg_q_30_reset),
    .en(rf_reg_q_30_en),
    .din(rf_reg_q_30_din),
    .dout(rf_reg_q_30_dout)
  );
  assign io_intRegfile_rdata_0 = _GEN_31[31:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 337:65]
  assign io_intRegfile_rdata_1 = _GEN_63[31:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 337:65]
  assign io_intRegfile_rdata_pol_0 = _GEN_31[32]; // @[src/main/scala/coreGen/core/Registerfile.scala 338:69]
  assign io_intRegfile_rdata_pol_1 = _GEN_63[32]; // @[src/main/scala/coreGen/core/Registerfile.scala 338:69]
  assign rf_reg_q_0_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_0_en = rf_waddr_onehot_q_0 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_0_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_1_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_1_en = rf_waddr_onehot_q_1 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_1_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_2_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_2_en = rf_waddr_onehot_q_2 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_2_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_3_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_3_en = rf_waddr_onehot_q_3 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_3_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_4_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_4_en = rf_waddr_onehot_q_4 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_4_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_5_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_5_en = rf_waddr_onehot_q_5 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_5_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_6_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_6_en = rf_waddr_onehot_q_6 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_6_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_7_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_7_en = rf_waddr_onehot_q_7 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_7_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_8_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_8_en = rf_waddr_onehot_q_8 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_8_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_9_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_9_en = rf_waddr_onehot_q_9 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_9_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_10_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_10_en = rf_waddr_onehot_q_10 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_10_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_11_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_11_en = rf_waddr_onehot_q_11 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_11_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_12_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_12_en = rf_waddr_onehot_q_12 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_12_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_13_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_13_en = rf_waddr_onehot_q_13 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_13_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_14_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_14_en = rf_waddr_onehot_q_14 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_14_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_15_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_15_en = rf_waddr_onehot_q_15 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_15_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_16_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_16_en = rf_waddr_onehot_q_16 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_16_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_17_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_17_en = rf_waddr_onehot_q_17 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_17_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_18_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_18_en = rf_waddr_onehot_q_18 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_18_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_19_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_19_en = rf_waddr_onehot_q_19 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_19_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_20_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_20_en = rf_waddr_onehot_q_20 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_20_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_21_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_21_en = rf_waddr_onehot_q_21 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_21_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_22_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_22_en = rf_waddr_onehot_q_22 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_22_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_23_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_23_en = rf_waddr_onehot_q_23 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_23_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_24_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_24_en = rf_waddr_onehot_q_24 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_24_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_25_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_25_en = rf_waddr_onehot_q_25 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_25_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_26_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_26_en = rf_waddr_onehot_q_26 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_26_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_27_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_27_en = rf_waddr_onehot_q_27 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_27_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_28_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_28_en = rf_waddr_onehot_q_28 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_28_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_29_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_29_en = rf_waddr_onehot_q_29 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_29_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  assign rf_reg_q_30_reset = reset; // @[src/main/scala/coreGen/core/Registerfile.scala 322:30]
  assign rf_reg_q_30_en = rf_waddr_onehot_q_30 | _rf_clear_T; // @[src/main/scala/coreGen/core/Registerfile.scala 324:51]
  assign rf_reg_q_30_din = _rf_reg_q_0_io_din_T[33:0]; // @[src/main/scala/coreGen/core/Registerfile.scala 325:28]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/Registerfile.scala 319:43]
      rf_wdata_wb_q <= 35'h0;
    end else begin
      rf_wdata_wb_q <= {rf_wdata_wb_q_hi,rf_wdata_wb_q_lo};
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_0 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_0 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_1 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_1 <= io_intRegfile_we & io_intRegfile_waddr == 5'h2;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_2 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_2 <= io_intRegfile_we & io_intRegfile_waddr == 5'h3;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_3 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_3 <= io_intRegfile_we & io_intRegfile_waddr == 5'h4;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_4 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_4 <= io_intRegfile_we & io_intRegfile_waddr == 5'h5;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_5 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_5 <= io_intRegfile_we & io_intRegfile_waddr == 5'h6;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_6 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_6 <= io_intRegfile_we & io_intRegfile_waddr == 5'h7;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_7 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_7 <= io_intRegfile_we & io_intRegfile_waddr == 5'h8;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_8 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_8 <= io_intRegfile_we & io_intRegfile_waddr == 5'h9;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_9 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_9 <= io_intRegfile_we & io_intRegfile_waddr == 5'ha;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_10 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_10 <= io_intRegfile_we & io_intRegfile_waddr == 5'hb;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_11 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_11 <= io_intRegfile_we & io_intRegfile_waddr == 5'hc;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_12 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_12 <= io_intRegfile_we & io_intRegfile_waddr == 5'hd;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_13 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_13 <= io_intRegfile_we & io_intRegfile_waddr == 5'he;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_14 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_14 <= io_intRegfile_we & io_intRegfile_waddr == 5'hf;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_15 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_15 <= io_intRegfile_we & io_intRegfile_waddr == 5'h10;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_16 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_16 <= io_intRegfile_we & io_intRegfile_waddr == 5'h11;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_17 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_17 <= io_intRegfile_we & io_intRegfile_waddr == 5'h12;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_18 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_18 <= io_intRegfile_we & io_intRegfile_waddr == 5'h13;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_19 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_19 <= io_intRegfile_we & io_intRegfile_waddr == 5'h14;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_20 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_20 <= io_intRegfile_we & io_intRegfile_waddr == 5'h15;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_21 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_21 <= io_intRegfile_we & io_intRegfile_waddr == 5'h16;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_22 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_22 <= io_intRegfile_we & io_intRegfile_waddr == 5'h17;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_23 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_23 <= io_intRegfile_we & io_intRegfile_waddr == 5'h18;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_24 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_24 <= io_intRegfile_we & io_intRegfile_waddr == 5'h19;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_25 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_25 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1a;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_26 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_26 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1b;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_27 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_27 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1c;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_28 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_28 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1d;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_29 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_29 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1e;
    end
  end
  always @(posedge clock or posedge _rf_wdata_wb_q_T_3) begin
    if (_rf_wdata_wb_q_T_3) begin // @[src/main/scala/coreGen/core/Registerfile.scala 323:50]
      rf_waddr_onehot_q_30 <= 1'h0;
    end else begin
      rf_waddr_onehot_q_30 <= io_intRegfile_we & io_intRegfile_waddr == 5'h1f;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  rf_wdata_wb_q = _RAND_0[34:0];
  _RAND_1 = {1{`RANDOM}};
  rf_waddr_onehot_q_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  rf_waddr_onehot_q_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  rf_waddr_onehot_q_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  rf_waddr_onehot_q_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rf_waddr_onehot_q_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  rf_waddr_onehot_q_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  rf_waddr_onehot_q_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  rf_waddr_onehot_q_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  rf_waddr_onehot_q_8 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  rf_waddr_onehot_q_9 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  rf_waddr_onehot_q_10 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  rf_waddr_onehot_q_11 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  rf_waddr_onehot_q_12 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  rf_waddr_onehot_q_13 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  rf_waddr_onehot_q_14 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  rf_waddr_onehot_q_15 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  rf_waddr_onehot_q_16 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  rf_waddr_onehot_q_17 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  rf_waddr_onehot_q_18 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  rf_waddr_onehot_q_19 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  rf_waddr_onehot_q_20 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  rf_waddr_onehot_q_21 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  rf_waddr_onehot_q_22 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  rf_waddr_onehot_q_23 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  rf_waddr_onehot_q_24 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  rf_waddr_onehot_q_25 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  rf_waddr_onehot_q_26 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  rf_waddr_onehot_q_27 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  rf_waddr_onehot_q_28 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  rf_waddr_onehot_q_29 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  rf_waddr_onehot_q_30 = _RAND_31[0:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rf_wdata_wb_q = 35'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_0 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_1 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_2 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_3 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_4 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_5 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_6 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_7 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_8 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_9 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_10 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_11 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_12 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_13 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_14 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_15 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_16 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_17 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_18 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_19 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_20 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_21 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_22 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_23 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_24 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_25 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_26 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_27 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_28 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_29 = 1'h0;
  end
  if (_rf_wdata_wb_q_T_3) begin
    rf_waddr_onehot_q_30 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ChiselCore(
  input         clock,
  input         reset,
  input         io_test_en_i, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input  [31:0] io_boot_addr_i, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_instr_req_ready, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_instr_req_valid, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_instr_req_bits_addr, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_instr_resp_valid, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_instr_resp_bits_err, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input  [31:0] io_instr_resp_bits_rdata, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_data_req_ready, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_data_req_valid, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_data_req_bits_addr, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_data_req_bits_we, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [3:0]  io_data_req_bits_be, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_data_req_bits_wdata, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_data_resp_valid, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_data_resp_bits_err, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input  [31:0] io_data_resp_bits_rdata, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_irq_timer, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_irq_software, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_irq_external, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input         io_irq_nmi, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  input  [7:0]  io_plicId_id, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_plicClr_en, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_debug_ind_o, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_core_sleep_o, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_instr_priv_mode_o, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output        io_data_priv_mode_o, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_moniter_inst, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_moniter_pc, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_moniter_mcause, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [63:0] io_moniter_mcycle, // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
  output [31:0] io_moniter_mepc // @[src/main/scala/coreGen/core/Coretop.scala 156:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  core_clock_gate_i_clk_i; // @[src/main/scala/coreGen/core/Coretop.scala 166:35]
  wire  core_clock_gate_i_en_i; // @[src/main/scala/coreGen/core/Coretop.scala 166:35]
  wire  core_clock_gate_i_test_en_i; // @[src/main/scala/coreGen/core/Coretop.scala 166:35]
  wire  core_clock_gate_i_clk_o; // @[src/main/scala/coreGen/core/Coretop.scala 166:35]
  wire  u_ifu_clock; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_reset; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_boot_addr_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_req_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_instr_addr_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_gnt_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_rvalid_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_instr_rdata_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_err_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_valid_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_instr_rdata_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_instr_rdata_alu_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [15:0] u_ifu_instr_rdata_c_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_is_compressed_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_fetch_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_fetch_err_plus2_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_illegal_c_insn_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_pc_if_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_pc_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_disable_branch_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_instr_valid_clear_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_pc_set_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_pc_set_spec_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [2:0] u_ifu_pc_mux_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [2:0] u_ifu_exc_pc_mux_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [5:0] u_ifu_exc_cause; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_branch_target_ex_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_csr_mepc_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_csr_mtvec_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_id_in_ready_i; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_fetch_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_ifu_if_busy_o; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [31:0] u_ifu_csr_mpvec_base; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire [7:0] u_ifu_plic_id; // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
  wire  u_idu_clk_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_rst_ni; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_ctrl_busy_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_illegal_insn_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_valid_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_instr_rdata_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_instr_rdata_alu_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [15:0] u_idu_instr_rdata_c_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_is_compressed_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_first_cycle_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_valid_clear_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_id_in_ready_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_branch_decision_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_branch_in_dec_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_pc_set_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_pc_set_spec_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [2:0] u_idu_pc_mux_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [2:0] u_idu_exc_pc_mux_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [5:0] u_idu_exc_cause_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_illegal_c_insn_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_fetch_err_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_fetch_err_plus2_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_pc_id_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_ex_valid_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_resp_valid_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [2:0] u_idu_misresp_q_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [5:0] u_idu_alu_operator_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_alu_operand_a_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_alu_operand_a_ex_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_alu_operand_a_ex_t_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_alu_operand_b_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_alu_operand_b_ex_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_alu_operand_b_ex_t_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [1:0] u_idu_imd_val_we_ex_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [33:0] u_idu_imd_val_d_ex_i_0; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [33:0] u_idu_imd_val_q_ex_o_0; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_bt_a_operand_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_bt_b_operand_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_mult_en_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_div_en_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_mult_sel_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_div_sel_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [1:0] u_idu_multdiv_operator_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [1:0] u_idu_multdiv_signed_mode_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_multdiv_operand_a_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_multdiv_operand_b_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_access_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [1:0] u_idu_csr_op_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_op_en_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_save_if_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_restore_mret_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_restore_dret_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_save_cause_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_csr_mtval_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [1:0] u_idu_priv_mode_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_mstatus_tw_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_illegal_csr_insn_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_we_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [1:0] u_idu_lsu_type_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_sign_ext_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_lsu_wdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_err_clean_data_flag_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_err_no_finish_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_req_done_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_addr_incr_req_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_lsu_addr_last_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_mstatus_mie_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_irq_pending_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_irqs_i_timer; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_irqs_i_software; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_irqs_i_external; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_irqs_i_nmi; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_nmi_mode_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_load_err_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_lsu_store_err_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_debug_mode_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_result_ex_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_result_ex_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_csr_rdata_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [4:0] u_idu_rf_raddr_a_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_rf_rdata_a_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_rf_rdata_a_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [4:0] u_idu_rf_raddr_b_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_rf_rdata_b_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_rf_rdata_b_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [4:0] u_idu_rf_waddr_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire [31:0] u_idu_rf_wdata_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_rf_wdata_id_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_rf_we_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_en_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_instr_perf_count_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_disable_branch_o; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_csr_mpvec_mode; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_idu_fetch_valid_if_i; // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
  wire  u_exu_clock; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_reset; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [5:0] u_exu_io_alu_operator_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_alu_operand_a_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_alu_operand_b_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_alu_operand_a_t_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_alu_operand_b_t_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_alu_operand_a_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_alu_operand_b_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_alu_instr_first_cycle_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_bt_a_operand_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_bt_b_operand_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_branch_in_dec_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_instr_is_compressed_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [1:0] u_exu_io_multdiv_operator_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_mult_en_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_div_en_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_mult_sel_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_div_sel_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [1:0] u_exu_io_multdiv_signed_mode_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_multdiv_operand_a_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_multdiv_operand_b_i; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [33:0] u_exu_io_imd_val_q_i_0; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [33:0] u_exu_io_imd_val_d_o_0; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_imd_val_we_o_0; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_alu_adder_result_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_result_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_result_ex_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire [31:0] u_exu_io_branch_target_o; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_branch_decision_o; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_exu_io_ex_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
  wire  u_lsu_clk_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_rst_ni; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_data_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_data_gnt_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_data_rvalid_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_data_err_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_data_addr_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_data_we_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [3:0] u_lsu_data_be_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_data_wdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_data_rdata_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_we_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [1:0] u_lsu_lsu_type_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_lsu_wdata_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_sign_ext_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_lsu_rdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_rdata_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_rdata_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [2:0] u_lsu_misresp_q_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_req_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_adder_result_ex_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_addr_incr_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire [31:0] u_lsu_addr_last_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_req_done_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_err_clean_data_flag_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_resp_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_lsu_err_no_finish_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_ready_wb_i; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_load_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_store_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_lsu_busy_o; // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
  wire  u_wb_io_en_wb_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_instr_perf_count_id_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_perf_instr_ret_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire [4:0] u_wb_io_rf_waddr_id_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire [31:0] u_wb_io_rf_wdata_id_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_rf_wdata_id_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_rf_we_id_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire [31:0] u_wb_io_rf_wdata_lsu_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_rf_wdata_lsu_pol_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_rf_we_lsu_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire [4:0] u_wb_io_rf_waddr_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire [31:0] u_wb_io_rf_wdata_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_rf_wdata_wb_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_rf_we_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_lsu_resp_valid_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_wb_io_lsu_resp_err_i; // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
  wire  u_csr_clock; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_reset; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [1:0] u_csr_priv_mode_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [1:0] u_csr_priv_mode_if_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [1:0] u_csr_priv_mode_lsu_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_mstatus_tw_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_mtvec_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_access_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [11:0] u_csr_csr_addr_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_wdata_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [1:0] u_csr_csr_op_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_op_en_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_rdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_i_timer; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_i_software; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_i_external; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_i_nmi; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_nmi_mode_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irq_pending_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_o_timer; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_o_software; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_o_external; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_irqs_o_nmi; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_mstatus_mie_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_mepc_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_debug_mode_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_pc_if_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_pc_id_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_save_if_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_restore_mret_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_restore_dret_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_save_cause_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [5:0] u_csr_csr_mcause_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_mtval_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_illegal_csr_insn_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_instr_ret_i; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_mcause_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [63:0] u_csr_csr_mcycle_o; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire [31:0] u_csr_csr_mpvec_base; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  u_csr_csr_mpvec_mode; // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
  wire  register_file_i_clock; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire  register_file_i_reset; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [4:0] register_file_i_io_intRegfile_raddr_0; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [4:0] register_file_i_io_intRegfile_raddr_1; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [31:0] register_file_i_io_intRegfile_rdata_0; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [31:0] register_file_i_io_intRegfile_rdata_1; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire  register_file_i_io_intRegfile_rdata_pol_0; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire  register_file_i_io_intRegfile_rdata_pol_1; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [4:0] register_file_i_io_intRegfile_waddr; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [31:0] register_file_i_io_intRegfile_wdata; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire  register_file_i_io_intRegfile_wdata_pol; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire  register_file_i_io_intRegfile_we; // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
  wire [1:0] priv_mode_if = u_csr_priv_mode_if_o; // @[src/main/scala/coreGen/core/Coretop.scala 377:28 1676:34]
  wire [1:0] priv_mode_lsu = u_csr_priv_mode_lsu_o; // @[src/main/scala/coreGen/core/Coretop.scala 378:29 1677:34]
  wire  lsu_load_err = u_lsu_load_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 244:33 1250:37]
  wire  lsu_store_err = u_lsu_store_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 245:33 1251:37]
  wire  ctrl_busy = u_idu_ctrl_busy_o; // @[src/main/scala/coreGen/core/Coretop.scala 256:33 835:41]
  wire  if_busy = u_ifu_if_busy_o; // @[src/main/scala/coreGen/core/Coretop.scala 257:33 744:35]
  wire  lsu_busy = u_lsu_busy_o; // @[src/main/scala/coreGen/core/Coretop.scala 258:33 1253:36]
  wire  _core_busy_q_T_2 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:31]
  reg  core_busy_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg  fetch_enable_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  reg  irq_nmi_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  wire  irq_pending = u_csr_irq_pending_o; // @[src/main/scala/coreGen/core/Coretop.scala 349:27 1709:34]
  wire  clock_en = fetch_enable_q & (core_busy_q | irq_pending); // @[src/main/scala/coreGen/core/Coretop.scala 666:32]
  reg  core_sleep_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  wire  ex_imd_val_we_ex_0 = u_exu_io_imd_val_we_o_0; // @[src/main/scala/coreGen/core/Coretop.scala 1016:38 1062:44]
  wire [31:0] alu_operand_b_ex_t = u_idu_alu_operand_b_ex_t_o; // @[src/main/scala/coreGen/core/Coretop.scala 290:33 879:41]
  wire  csr_access = u_idu_csr_access_o; // @[src/main/scala/coreGen/core/Coretop.scala 311:26 902:41]
  libcell_clock_gating core_clock_gate_i ( // @[src/main/scala/coreGen/core/Coretop.scala 166:35]
    .clk_i(core_clock_gate_i_clk_i),
    .en_i(core_clock_gate_i_en_i),
    .test_en_i(core_clock_gate_i_test_en_i),
    .clk_o(core_clock_gate_i_clk_o)
  );
  ifu u_ifu ( // @[src/main/scala/coreGen/core/Coretop.scala 167:35]
    .clock(u_ifu_clock),
    .reset(u_ifu_reset),
    .boot_addr_i(u_ifu_boot_addr_i),
    .req_i(u_ifu_req_i),
    .instr_req_o(u_ifu_instr_req_o),
    .instr_addr_o(u_ifu_instr_addr_o),
    .instr_gnt_i(u_ifu_instr_gnt_i),
    .instr_rvalid_i(u_ifu_instr_rvalid_i),
    .instr_rdata_i(u_ifu_instr_rdata_i),
    .instr_err_i(u_ifu_instr_err_i),
    .instr_valid_id_o(u_ifu_instr_valid_id_o),
    .instr_rdata_id_o(u_ifu_instr_rdata_id_o),
    .instr_rdata_alu_id_o(u_ifu_instr_rdata_alu_id_o),
    .instr_rdata_c_id_o(u_ifu_instr_rdata_c_id_o),
    .instr_is_compressed_id_o(u_ifu_instr_is_compressed_id_o),
    .instr_fetch_err_o(u_ifu_instr_fetch_err_o),
    .instr_fetch_err_plus2_o(u_ifu_instr_fetch_err_plus2_o),
    .illegal_c_insn_id_o(u_ifu_illegal_c_insn_id_o),
    .pc_if_o(u_ifu_pc_if_o),
    .pc_id_o(u_ifu_pc_id_o),
    .disable_branch_i(u_ifu_disable_branch_i),
    .instr_valid_clear_i(u_ifu_instr_valid_clear_i),
    .pc_set_i(u_ifu_pc_set_i),
    .pc_set_spec_i(u_ifu_pc_set_spec_i),
    .pc_mux_i(u_ifu_pc_mux_i),
    .exc_pc_mux_i(u_ifu_exc_pc_mux_i),
    .exc_cause(u_ifu_exc_cause),
    .branch_target_ex_i(u_ifu_branch_target_ex_i),
    .csr_mepc_i(u_ifu_csr_mepc_i),
    .csr_mtvec_i(u_ifu_csr_mtvec_i),
    .id_in_ready_i(u_ifu_id_in_ready_i),
    .fetch_valid_o(u_ifu_fetch_valid_o),
    .if_busy_o(u_ifu_if_busy_o),
    .csr_mpvec_base(u_ifu_csr_mpvec_base),
    .plic_id(u_ifu_plic_id)
  );
  idu u_idu ( // @[src/main/scala/coreGen/core/Coretop.scala 168:23]
    .clk_i(u_idu_clk_i),
    .rst_ni(u_idu_rst_ni),
    .ctrl_busy_o(u_idu_ctrl_busy_o),
    .illegal_insn_o(u_idu_illegal_insn_o),
    .instr_valid_i(u_idu_instr_valid_i),
    .instr_rdata_i(u_idu_instr_rdata_i),
    .instr_rdata_alu_i(u_idu_instr_rdata_alu_i),
    .instr_rdata_c_i(u_idu_instr_rdata_c_i),
    .instr_is_compressed_i(u_idu_instr_is_compressed_i),
    .instr_req_o(u_idu_instr_req_o),
    .instr_first_cycle_id_o(u_idu_instr_first_cycle_id_o),
    .instr_valid_clear_o(u_idu_instr_valid_clear_o),
    .id_in_ready_o(u_idu_id_in_ready_o),
    .branch_decision_i(u_idu_branch_decision_i),
    .branch_in_dec_o(u_idu_branch_in_dec_o),
    .pc_set_o(u_idu_pc_set_o),
    .pc_set_spec_o(u_idu_pc_set_spec_o),
    .pc_mux_o(u_idu_pc_mux_o),
    .exc_pc_mux_o(u_idu_exc_pc_mux_o),
    .exc_cause_o(u_idu_exc_cause_o),
    .illegal_c_insn_i(u_idu_illegal_c_insn_i),
    .instr_fetch_err_i(u_idu_instr_fetch_err_i),
    .instr_fetch_err_plus2_i(u_idu_instr_fetch_err_plus2_i),
    .pc_id_i(u_idu_pc_id_i),
    .ex_valid_i(u_idu_ex_valid_i),
    .lsu_resp_valid_i(u_idu_lsu_resp_valid_i),
    .misresp_q_i(u_idu_misresp_q_i),
    .alu_operator_ex_o(u_idu_alu_operator_ex_o),
    .alu_operand_a_ex_o(u_idu_alu_operand_a_ex_o),
    .alu_operand_a_ex_pol_o(u_idu_alu_operand_a_ex_pol_o),
    .alu_operand_a_ex_t_o(u_idu_alu_operand_a_ex_t_o),
    .alu_operand_b_ex_o(u_idu_alu_operand_b_ex_o),
    .alu_operand_b_ex_pol_o(u_idu_alu_operand_b_ex_pol_o),
    .alu_operand_b_ex_t_o(u_idu_alu_operand_b_ex_t_o),
    .imd_val_we_ex_i(u_idu_imd_val_we_ex_i),
    .imd_val_d_ex_i_0(u_idu_imd_val_d_ex_i_0),
    .imd_val_q_ex_o_0(u_idu_imd_val_q_ex_o_0),
    .bt_a_operand_o(u_idu_bt_a_operand_o),
    .bt_b_operand_o(u_idu_bt_b_operand_o),
    .mult_en_ex_o(u_idu_mult_en_ex_o),
    .div_en_ex_o(u_idu_div_en_ex_o),
    .mult_sel_ex_o(u_idu_mult_sel_ex_o),
    .div_sel_ex_o(u_idu_div_sel_ex_o),
    .multdiv_operator_ex_o(u_idu_multdiv_operator_ex_o),
    .multdiv_signed_mode_ex_o(u_idu_multdiv_signed_mode_ex_o),
    .multdiv_operand_a_ex_o(u_idu_multdiv_operand_a_ex_o),
    .multdiv_operand_b_ex_o(u_idu_multdiv_operand_b_ex_o),
    .csr_access_o(u_idu_csr_access_o),
    .csr_op_o(u_idu_csr_op_o),
    .csr_op_en_o(u_idu_csr_op_en_o),
    .csr_save_if_o(u_idu_csr_save_if_o),
    .csr_restore_mret_id_o(u_idu_csr_restore_mret_id_o),
    .csr_restore_dret_id_o(u_idu_csr_restore_dret_id_o),
    .csr_save_cause_o(u_idu_csr_save_cause_o),
    .csr_mtval_o(u_idu_csr_mtval_o),
    .priv_mode_i(u_idu_priv_mode_i),
    .csr_mstatus_tw_i(u_idu_csr_mstatus_tw_i),
    .illegal_csr_insn_i(u_idu_illegal_csr_insn_i),
    .lsu_req_o(u_idu_lsu_req_o),
    .lsu_we_o(u_idu_lsu_we_o),
    .lsu_type_o(u_idu_lsu_type_o),
    .lsu_sign_ext_o(u_idu_lsu_sign_ext_o),
    .lsu_wdata_o(u_idu_lsu_wdata_o),
    .lsu_err_clean_data_flag_o(u_idu_lsu_err_clean_data_flag_o),
    .lsu_err_no_finish_i(u_idu_lsu_err_no_finish_i),
    .lsu_req_done_i(u_idu_lsu_req_done_i),
    .lsu_addr_incr_req_i(u_idu_lsu_addr_incr_req_i),
    .lsu_addr_last_i(u_idu_lsu_addr_last_i),
    .csr_mstatus_mie_i(u_idu_csr_mstatus_mie_i),
    .irq_pending_i(u_idu_irq_pending_i),
    .irqs_i_timer(u_idu_irqs_i_timer),
    .irqs_i_software(u_idu_irqs_i_software),
    .irqs_i_external(u_idu_irqs_i_external),
    .irqs_i_nmi(u_idu_irqs_i_nmi),
    .nmi_mode_o(u_idu_nmi_mode_o),
    .lsu_load_err_i(u_idu_lsu_load_err_i),
    .lsu_store_err_i(u_idu_lsu_store_err_i),
    .debug_mode_o(u_idu_debug_mode_o),
    .result_ex_i(u_idu_result_ex_i),
    .result_ex_pol_i(u_idu_result_ex_pol_i),
    .csr_rdata_i(u_idu_csr_rdata_i),
    .rf_raddr_a_o(u_idu_rf_raddr_a_o),
    .rf_rdata_a_i(u_idu_rf_rdata_a_i),
    .rf_rdata_a_pol_i(u_idu_rf_rdata_a_pol_i),
    .rf_raddr_b_o(u_idu_rf_raddr_b_o),
    .rf_rdata_b_i(u_idu_rf_rdata_b_i),
    .rf_rdata_b_pol_i(u_idu_rf_rdata_b_pol_i),
    .rf_waddr_id_o(u_idu_rf_waddr_id_o),
    .rf_wdata_id_o(u_idu_rf_wdata_id_o),
    .rf_wdata_id_pol_o(u_idu_rf_wdata_id_pol_o),
    .rf_we_id_o(u_idu_rf_we_id_o),
    .en_wb_o(u_idu_en_wb_o),
    .instr_perf_count_id_o(u_idu_instr_perf_count_id_o),
    .disable_branch_o(u_idu_disable_branch_o),
    .csr_mpvec_mode(u_idu_csr_mpvec_mode),
    .fetch_valid_if_i(u_idu_fetch_valid_if_i)
  );
  exu u_exu ( // @[src/main/scala/coreGen/core/Coretop.scala 200:23]
    .clock(u_exu_clock),
    .reset(u_exu_reset),
    .io_alu_operator_i(u_exu_io_alu_operator_i),
    .io_alu_operand_a_i(u_exu_io_alu_operand_a_i),
    .io_alu_operand_b_i(u_exu_io_alu_operand_b_i),
    .io_alu_operand_a_t_i(u_exu_io_alu_operand_a_t_i),
    .io_alu_operand_b_t_i(u_exu_io_alu_operand_b_t_i),
    .io_alu_operand_a_pol_i(u_exu_io_alu_operand_a_pol_i),
    .io_alu_operand_b_pol_i(u_exu_io_alu_operand_b_pol_i),
    .io_alu_instr_first_cycle_i(u_exu_io_alu_instr_first_cycle_i),
    .io_bt_a_operand_i(u_exu_io_bt_a_operand_i),
    .io_bt_b_operand_i(u_exu_io_bt_b_operand_i),
    .io_branch_in_dec_i(u_exu_io_branch_in_dec_i),
    .io_instr_is_compressed_i(u_exu_io_instr_is_compressed_i),
    .io_multdiv_operator_i(u_exu_io_multdiv_operator_i),
    .io_mult_en_i(u_exu_io_mult_en_i),
    .io_div_en_i(u_exu_io_div_en_i),
    .io_mult_sel_i(u_exu_io_mult_sel_i),
    .io_div_sel_i(u_exu_io_div_sel_i),
    .io_multdiv_signed_mode_i(u_exu_io_multdiv_signed_mode_i),
    .io_multdiv_operand_a_i(u_exu_io_multdiv_operand_a_i),
    .io_multdiv_operand_b_i(u_exu_io_multdiv_operand_b_i),
    .io_imd_val_q_i_0(u_exu_io_imd_val_q_i_0),
    .io_imd_val_d_o_0(u_exu_io_imd_val_d_o_0),
    .io_imd_val_we_o_0(u_exu_io_imd_val_we_o_0),
    .io_alu_adder_result_ex_o(u_exu_io_alu_adder_result_ex_o),
    .io_result_ex_o(u_exu_io_result_ex_o),
    .io_result_ex_pol_o(u_exu_io_result_ex_pol_o),
    .io_branch_target_o(u_exu_io_branch_target_o),
    .io_branch_decision_o(u_exu_io_branch_decision_o),
    .io_ex_valid_o(u_exu_io_ex_valid_o)
  );
  lsu u_lsu ( // @[src/main/scala/coreGen/core/Coretop.scala 201:23]
    .clk_i(u_lsu_clk_i),
    .rst_ni(u_lsu_rst_ni),
    .data_req_o(u_lsu_data_req_o),
    .data_gnt_i(u_lsu_data_gnt_i),
    .data_rvalid_i(u_lsu_data_rvalid_i),
    .data_err_i(u_lsu_data_err_i),
    .data_addr_o(u_lsu_data_addr_o),
    .data_we_o(u_lsu_data_we_o),
    .data_be_o(u_lsu_data_be_o),
    .data_wdata_o(u_lsu_data_wdata_o),
    .data_rdata_i(u_lsu_data_rdata_i),
    .lsu_we_i(u_lsu_lsu_we_i),
    .lsu_type_i(u_lsu_lsu_type_i),
    .lsu_wdata_i(u_lsu_lsu_wdata_i),
    .lsu_sign_ext_i(u_lsu_lsu_sign_ext_i),
    .lsu_rdata_o(u_lsu_lsu_rdata_o),
    .lsu_rdata_pol_o(u_lsu_lsu_rdata_pol_o),
    .lsu_rdata_valid_o(u_lsu_lsu_rdata_valid_o),
    .misresp_q_o(u_lsu_misresp_q_o),
    .lsu_req_i(u_lsu_lsu_req_i),
    .adder_result_ex_i(u_lsu_adder_result_ex_i),
    .addr_incr_req_o(u_lsu_addr_incr_req_o),
    .addr_last_o(u_lsu_addr_last_o),
    .lsu_req_done_o(u_lsu_lsu_req_done_o),
    .lsu_err_clean_data_flag_i(u_lsu_lsu_err_clean_data_flag_i),
    .lsu_resp_valid_o(u_lsu_lsu_resp_valid_o),
    .lsu_err_no_finish_o(u_lsu_lsu_err_no_finish_o),
    .ready_wb_i(u_lsu_ready_wb_i),
    .load_err_o(u_lsu_load_err_o),
    .store_err_o(u_lsu_store_err_o),
    .busy_o(u_lsu_busy_o)
  );
  wb u_wb ( // @[src/main/scala/coreGen/core/Coretop.scala 202:22]
    .io_en_wb_i(u_wb_io_en_wb_i),
    .io_instr_perf_count_id_i(u_wb_io_instr_perf_count_id_i),
    .io_perf_instr_ret_wb_o(u_wb_io_perf_instr_ret_wb_o),
    .io_rf_waddr_id_i(u_wb_io_rf_waddr_id_i),
    .io_rf_wdata_id_i(u_wb_io_rf_wdata_id_i),
    .io_rf_wdata_id_pol_i(u_wb_io_rf_wdata_id_pol_i),
    .io_rf_we_id_i(u_wb_io_rf_we_id_i),
    .io_rf_wdata_lsu_i(u_wb_io_rf_wdata_lsu_i),
    .io_rf_wdata_lsu_pol_i(u_wb_io_rf_wdata_lsu_pol_i),
    .io_rf_we_lsu_i(u_wb_io_rf_we_lsu_i),
    .io_rf_waddr_wb_o(u_wb_io_rf_waddr_wb_o),
    .io_rf_wdata_wb_o(u_wb_io_rf_wdata_wb_o),
    .io_rf_wdata_wb_pol_o(u_wb_io_rf_wdata_wb_pol_o),
    .io_rf_we_wb_o(u_wb_io_rf_we_wb_o),
    .io_lsu_resp_valid_i(u_wb_io_lsu_resp_valid_i),
    .io_lsu_resp_err_i(u_wb_io_lsu_resp_err_i)
  );
  csr u_csr ( // @[src/main/scala/coreGen/core/Coretop.scala 203:23]
    .clock(u_csr_clock),
    .reset(u_csr_reset),
    .priv_mode_id_o(u_csr_priv_mode_id_o),
    .priv_mode_if_o(u_csr_priv_mode_if_o),
    .priv_mode_lsu_o(u_csr_priv_mode_lsu_o),
    .csr_mstatus_tw_o(u_csr_csr_mstatus_tw_o),
    .csr_mtvec_o(u_csr_csr_mtvec_o),
    .csr_access_i(u_csr_csr_access_i),
    .csr_addr_i(u_csr_csr_addr_i),
    .csr_wdata_i(u_csr_csr_wdata_i),
    .csr_op_i(u_csr_csr_op_i),
    .csr_op_en_i(u_csr_csr_op_en_i),
    .csr_rdata_o(u_csr_csr_rdata_o),
    .irqs_i_timer(u_csr_irqs_i_timer),
    .irqs_i_software(u_csr_irqs_i_software),
    .irqs_i_external(u_csr_irqs_i_external),
    .irqs_i_nmi(u_csr_irqs_i_nmi),
    .nmi_mode_i(u_csr_nmi_mode_i),
    .irq_pending_o(u_csr_irq_pending_o),
    .irqs_o_timer(u_csr_irqs_o_timer),
    .irqs_o_software(u_csr_irqs_o_software),
    .irqs_o_external(u_csr_irqs_o_external),
    .irqs_o_nmi(u_csr_irqs_o_nmi),
    .csr_mstatus_mie_o(u_csr_csr_mstatus_mie_o),
    .csr_mepc_o(u_csr_csr_mepc_o),
    .debug_mode_i(u_csr_debug_mode_i),
    .pc_if_i(u_csr_pc_if_i),
    .pc_id_i(u_csr_pc_id_i),
    .csr_save_if_i(u_csr_csr_save_if_i),
    .csr_restore_mret_i(u_csr_csr_restore_mret_i),
    .csr_restore_dret_i(u_csr_csr_restore_dret_i),
    .csr_save_cause_i(u_csr_csr_save_cause_i),
    .csr_mcause_i(u_csr_csr_mcause_i),
    .csr_mtval_i(u_csr_csr_mtval_i),
    .illegal_csr_insn_o(u_csr_illegal_csr_insn_o),
    .instr_ret_i(u_csr_instr_ret_i),
    .csr_mcause_o(u_csr_csr_mcause_o),
    .csr_mcycle_o(u_csr_csr_mcycle_o),
    .csr_mpvec_base(u_csr_csr_mpvec_base),
    .csr_mpvec_mode(u_csr_csr_mpvec_mode)
  );
  RegisterfileLatch register_file_i ( // @[src/main/scala/coreGen/core/Registerfile.scala 463:15]
    .clock(register_file_i_clock),
    .reset(register_file_i_reset),
    .io_intRegfile_raddr_0(register_file_i_io_intRegfile_raddr_0),
    .io_intRegfile_raddr_1(register_file_i_io_intRegfile_raddr_1),
    .io_intRegfile_rdata_0(register_file_i_io_intRegfile_rdata_0),
    .io_intRegfile_rdata_1(register_file_i_io_intRegfile_rdata_1),
    .io_intRegfile_rdata_pol_0(register_file_i_io_intRegfile_rdata_pol_0),
    .io_intRegfile_rdata_pol_1(register_file_i_io_intRegfile_rdata_pol_1),
    .io_intRegfile_waddr(register_file_i_io_intRegfile_waddr),
    .io_intRegfile_wdata(register_file_i_io_intRegfile_wdata),
    .io_intRegfile_wdata_pol(register_file_i_io_intRegfile_wdata_pol),
    .io_intRegfile_we(register_file_i_io_intRegfile_we)
  );
  assign io_instr_req_valid = u_ifu_instr_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 362:29 695:35]
  assign io_instr_req_bits_addr = u_ifu_instr_addr_o; // @[src/main/scala/coreGen/core/Coretop.scala 696:35]
  assign io_data_req_valid = u_lsu_data_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 363:28 1154:33]
  assign io_data_req_bits_addr = u_lsu_data_addr_o; // @[src/main/scala/coreGen/core/Coretop.scala 1208:37]
  assign io_data_req_bits_we = u_lsu_data_we_o; // @[src/main/scala/coreGen/core/Coretop.scala 1209:37]
  assign io_data_req_bits_be = u_lsu_data_be_o; // @[src/main/scala/coreGen/core/Coretop.scala 1210:37]
  assign io_data_req_bits_wdata = u_lsu_data_wdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 1211:37]
  assign io_plicClr_en = u_csr_csr_mpvec_mode; // @[src/main/scala/coreGen/core/Coretop.scala 1697:34 384:34]
  assign io_debug_ind_o = u_idu_debug_mode_o; // @[src/main/scala/coreGen/core/Coretop.scala 387:26 952:33]
  assign io_core_sleep_o = core_sleep_q; // @[src/main/scala/coreGen/core/Coretop.scala 669:21]
  assign io_instr_priv_mode_o = priv_mode_if == 2'h3; // @[src/main/scala/coreGen/core/Coretop.scala 380:42]
  assign io_data_priv_mode_o = priv_mode_lsu == 2'h3; // @[src/main/scala/coreGen/core/Coretop.scala 381:42]
  assign io_moniter_inst = u_ifu_instr_rdata_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 731:35]
  assign io_moniter_pc = u_ifu_pc_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 732:35]
  assign io_moniter_mcause = u_csr_csr_mcause_o; // @[src/main/scala/coreGen/core/Coretop.scala 733:35]
  assign io_moniter_mcycle = u_csr_csr_mcycle_o; // @[src/main/scala/coreGen/core/Coretop.scala 734:35]
  assign io_moniter_mepc = u_csr_csr_mepc_o; // @[src/main/scala/coreGen/core/Coretop.scala 735:35]
  assign core_clock_gate_i_clk_i = clock; // @[src/main/scala/coreGen/core/Coretop.scala 672:32]
  assign core_clock_gate_i_en_i = fetch_enable_q & (core_busy_q | irq_pending); // @[src/main/scala/coreGen/core/Coretop.scala 666:32]
  assign core_clock_gate_i_test_en_i = io_test_en_i; // @[src/main/scala/coreGen/core/Coretop.scala 674:36]
  assign u_ifu_clock = core_clock_gate_i_clk_o; // @[src/main/scala/coreGen/core/Coretop.scala 619:19 675:9]
  assign u_ifu_reset = reset;
  assign u_ifu_boot_addr_i = io_boot_addr_i; // @[src/main/scala/coreGen/core/Coretop.scala 681:35]
  assign u_ifu_req_i = u_idu_instr_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 336:29 853:41]
  assign u_ifu_instr_gnt_i = io_instr_req_ready; // @[src/main/scala/coreGen/core/Coretop.scala 697:35]
  assign u_ifu_instr_rvalid_i = io_instr_resp_valid; // @[src/main/scala/coreGen/core/Coretop.scala 698:35]
  assign u_ifu_instr_rdata_i = io_instr_resp_bits_rdata; // @[src/main/scala/coreGen/core/Coretop.scala 699:35]
  assign u_ifu_instr_err_i = io_instr_resp_bits_err; // @[src/main/scala/coreGen/core/Coretop.scala 701:35]
  assign u_ifu_disable_branch_i = u_idu_disable_branch_o; // @[src/main/scala/coreGen/core/Coretop.scala 1001:33 613:33]
  assign u_ifu_instr_valid_clear_i = u_idu_instr_valid_clear_o; // @[src/main/scala/coreGen/core/Coretop.scala 236:33 851:41]
  assign u_ifu_pc_set_i = u_idu_pc_set_o; // @[src/main/scala/coreGen/core/Coretop.scala 237:33 854:41]
  assign u_ifu_pc_set_spec_i = u_idu_pc_set_spec_o; // @[src/main/scala/coreGen/core/Coretop.scala 238:33 855:41]
  assign u_ifu_pc_mux_i = u_idu_pc_mux_o; // @[src/main/scala/coreGen/core/Coretop.scala 240:33 856:41]
  assign u_ifu_exc_pc_mux_i = u_idu_exc_pc_mux_o; // @[src/main/scala/coreGen/core/Coretop.scala 241:33 858:41]
  assign u_ifu_exc_cause = u_idu_exc_cause_o; // @[src/main/scala/coreGen/core/Coretop.scala 242:{37,37}]
  assign u_ifu_branch_target_ex_i = u_exu_io_branch_target_o; // @[src/main/scala/coreGen/core/Coretop.scala 250:33 1069:44]
  assign u_ifu_csr_mepc_i = u_csr_csr_mepc_o; // @[src/main/scala/coreGen/core/Coretop.scala 354:24 1714:34]
  assign u_ifu_csr_mtvec_i = u_csr_csr_mtvec_o; // @[src/main/scala/coreGen/core/Coretop.scala 372:25 1679:34]
  assign u_ifu_id_in_ready_i = u_idu_id_in_ready_o; // @[src/main/scala/coreGen/core/Coretop.scala 329:27 852:41]
  assign u_ifu_csr_mpvec_base = u_csr_csr_mpvec_base; // @[src/main/scala/coreGen/core/Coretop.scala 383:29 1696:34]
  assign u_ifu_plic_id = io_plicId_id; // @[src/main/scala/coreGen/core/Coretop.scala 739:35]
  assign u_idu_clk_i = core_clock_gate_i_clk_o; // @[src/main/scala/coreGen/core/Coretop.scala 619:19 675:9]
  assign u_idu_rst_ni = reset; // @[src/main/scala/coreGen/core/Coretop.scala 773:36]
  assign u_idu_instr_valid_i = u_ifu_instr_valid_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 209:33 704:35]
  assign u_idu_instr_rdata_i = u_ifu_instr_rdata_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 212:33 706:35]
  assign u_idu_instr_rdata_alu_i = u_ifu_instr_rdata_alu_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 213:33 707:35]
  assign u_idu_instr_rdata_c_i = u_ifu_instr_rdata_c_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 217:33 708:35]
  assign u_idu_instr_is_compressed_i = u_ifu_instr_is_compressed_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 218:38 709:35]
  assign u_idu_branch_decision_i = u_exu_io_branch_decision_o; // @[src/main/scala/coreGen/core/Coretop.scala 251:33 1070:44]
  assign u_idu_illegal_c_insn_i = u_ifu_illegal_c_insn_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 223:33 713:35]
  assign u_idu_instr_fetch_err_i = u_ifu_instr_fetch_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 221:33 711:35]
  assign u_idu_instr_fetch_err_plus2_i = u_ifu_instr_fetch_err_plus2_o; // @[src/main/scala/coreGen/core/Coretop.scala 222:37 712:35]
  assign u_idu_pc_id_i = u_ifu_pc_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 225:33 715:35]
  assign u_idu_ex_valid_i = u_exu_io_ex_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 330:24 1072:44]
  assign u_idu_lsu_resp_valid_i = u_lsu_lsu_resp_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 332:30 1239:37]
  assign u_idu_misresp_q_i = u_lsu_misresp_q_o; // @[src/main/scala/coreGen/core/Coretop.scala 871:41]
  assign u_idu_imd_val_we_ex_i = {1'h0,ex_imd_val_we_ex_0}; // @[src/main/scala/coreGen/core/Coretop.scala 1021:25]
  assign u_idu_imd_val_d_ex_i_0 = u_exu_io_imd_val_d_o_0; // @[src/main/scala/coreGen/core/Coretop.scala 1015:38 1061:44]
  assign u_idu_priv_mode_i = u_csr_priv_mode_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 376:28 1675:34]
  assign u_idu_csr_mstatus_tw_i = u_csr_csr_mstatus_tw_o; // @[src/main/scala/coreGen/core/Coretop.scala 375:30 1713:34]
  assign u_idu_illegal_csr_insn_i = u_csr_illegal_csr_insn_o; // @[src/main/scala/coreGen/core/Coretop.scala 1754:34 317:35]
  assign u_idu_lsu_err_no_finish_i = u_lsu_lsu_err_no_finish_o; // @[src/main/scala/coreGen/core/Coretop.scala 940:36]
  assign u_idu_lsu_req_done_i = u_lsu_lsu_req_done_o; // @[src/main/scala/coreGen/core/Coretop.scala 326:28 1238:37]
  assign u_idu_lsu_addr_incr_req_i = u_lsu_addr_incr_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 247:33 1243:37]
  assign u_idu_lsu_addr_last_i = u_lsu_addr_last_o; // @[src/main/scala/coreGen/core/Coretop.scala 248:33 1244:36]
  assign u_idu_csr_mstatus_mie_i = u_csr_csr_mstatus_mie_o; // @[src/main/scala/coreGen/core/Coretop.scala 353:31 1712:34]
  assign u_idu_irq_pending_i = u_csr_irq_pending_o; // @[src/main/scala/coreGen/core/Coretop.scala 349:27 1709:34]
  assign u_idu_irqs_i_timer = u_csr_irqs_o_timer; // @[src/main/scala/coreGen/core/Coretop.scala 351:20 1710:34]
  assign u_idu_irqs_i_software = u_csr_irqs_o_software; // @[src/main/scala/coreGen/core/Coretop.scala 351:20 1710:34]
  assign u_idu_irqs_i_external = u_csr_irqs_o_external; // @[src/main/scala/coreGen/core/Coretop.scala 351:20 1710:34]
  assign u_idu_irqs_i_nmi = u_csr_irqs_o_nmi; // @[src/main/scala/coreGen/core/Coretop.scala 351:20 1710:34]
  assign u_idu_lsu_load_err_i = u_lsu_load_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 244:33 1250:37]
  assign u_idu_lsu_store_err_i = u_lsu_store_err_o; // @[src/main/scala/coreGen/core/Coretop.scala 245:33 1251:37]
  assign u_idu_result_ex_i = u_exu_io_result_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 297:33 1066:44]
  assign u_idu_result_ex_pol_i = u_exu_io_result_ex_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 298:33 1067:44]
  assign u_idu_csr_rdata_i = u_csr_csr_rdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 315:25 1688:34]
  assign u_idu_rf_rdata_a_i = register_file_i_io_intRegfile_rdata_0; // @[src/main/scala/coreGen/core/Coretop.scala 1415:28 1616:45]
  assign u_idu_rf_rdata_a_pol_i = register_file_i_io_intRegfile_rdata_pol_0; // @[src/main/scala/coreGen/core/Coretop.scala 1416:32 1617:49]
  assign u_idu_rf_rdata_b_i = register_file_i_io_intRegfile_rdata_1; // @[src/main/scala/coreGen/core/Coretop.scala 1415:28 1616:45]
  assign u_idu_rf_rdata_b_pol_i = register_file_i_io_intRegfile_rdata_pol_1; // @[src/main/scala/coreGen/core/Coretop.scala 1416:32 1617:49]
  assign u_idu_csr_mpvec_mode = u_csr_csr_mpvec_mode; // @[src/main/scala/coreGen/core/Coretop.scala 1697:34 384:34]
  assign u_idu_fetch_valid_if_i = u_ifu_fetch_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 215:33 752:35]
  assign u_exu_clock = core_clock_gate_i_clk_o; // @[src/main/scala/coreGen/core/Coretop.scala 619:19 675:9]
  assign u_exu_reset = reset;
  assign u_exu_io_alu_operator_i = u_idu_alu_operator_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 285:33 873:41]
  assign u_exu_io_alu_operand_a_i = u_idu_alu_operand_a_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 286:33 874:41]
  assign u_exu_io_alu_operand_b_i = u_idu_alu_operand_b_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 287:33 875:41]
  assign u_exu_io_alu_operand_a_t_i = u_idu_alu_operand_a_ex_t_o; // @[src/main/scala/coreGen/core/Coretop.scala 289:33 878:41]
  assign u_exu_io_alu_operand_b_t_i = u_idu_alu_operand_b_ex_t_o; // @[src/main/scala/coreGen/core/Coretop.scala 290:33 879:41]
  assign u_exu_io_alu_operand_a_pol_i = u_idu_alu_operand_a_ex_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 291:37 876:41]
  assign u_exu_io_alu_operand_b_pol_i = u_idu_alu_operand_b_ex_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 292:37 877:41]
  assign u_exu_io_alu_instr_first_cycle_i = u_idu_instr_first_cycle_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 235:35 850:41]
  assign u_exu_io_bt_a_operand_i = u_idu_bt_a_operand_o; // @[src/main/scala/coreGen/core/Coretop.scala 294:33 888:41]
  assign u_exu_io_bt_b_operand_i = u_idu_bt_b_operand_o; // @[src/main/scala/coreGen/core/Coretop.scala 295:33 889:41]
  assign u_exu_io_branch_in_dec_i = u_idu_branch_in_dec_o; // @[src/main/scala/coreGen/core/Coretop.scala 1007:19 254:33]
  assign u_exu_io_instr_is_compressed_i = u_ifu_instr_is_compressed_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 218:38 709:35]
  assign u_exu_io_multdiv_operator_i = u_idu_multdiv_operator_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 304:35 895:41]
  assign u_exu_io_mult_en_i = u_idu_mult_en_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 300:33 891:41]
  assign u_exu_io_div_en_i = u_idu_div_en_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 301:25 892:41]
  assign u_exu_io_mult_sel_i = u_idu_mult_sel_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 302:27 893:41]
  assign u_exu_io_div_sel_i = u_idu_div_sel_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 303:26 894:41]
  assign u_exu_io_multdiv_signed_mode_i = u_idu_multdiv_signed_mode_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 305:38 896:41]
  assign u_exu_io_multdiv_operand_a_i = u_idu_multdiv_operand_a_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 306:36 897:41]
  assign u_exu_io_multdiv_operand_b_i = u_idu_multdiv_operand_b_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 307:36 898:41]
  assign u_exu_io_imd_val_q_i_0 = u_idu_imd_val_q_ex_o_0; // @[src/main/scala/coreGen/core/Coretop.scala 229:33 883:41]
  assign u_lsu_clk_i = core_clock_gate_i_clk_o; // @[src/main/scala/coreGen/core/Coretop.scala 619:19 675:9]
  assign u_lsu_rst_ni = reset; // @[src/main/scala/coreGen/core/Coretop.scala 1146:33]
  assign u_lsu_data_gnt_i = io_data_req_ready; // @[src/main/scala/coreGen/core/Coretop.scala 1155:33]
  assign u_lsu_data_rvalid_i = io_data_resp_valid; // @[src/main/scala/coreGen/core/Coretop.scala 1156:33]
  assign u_lsu_data_err_i = io_data_resp_bits_err; // @[src/main/scala/coreGen/core/Coretop.scala 1214:37]
  assign u_lsu_data_rdata_i = io_data_resp_bits_rdata; // @[src/main/scala/coreGen/core/Coretop.scala 1215:37]
  assign u_lsu_lsu_we_i = u_idu_lsu_we_o; // @[src/main/scala/coreGen/core/Coretop.scala 320:22 926:36]
  assign u_lsu_lsu_type_i = u_idu_lsu_type_o; // @[src/main/scala/coreGen/core/Coretop.scala 321:24 927:36]
  assign u_lsu_lsu_wdata_i = u_idu_lsu_wdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 324:25 929:36]
  assign u_lsu_lsu_sign_ext_i = u_idu_lsu_sign_ext_o; // @[src/main/scala/coreGen/core/Coretop.scala 322:28 928:36]
  assign u_lsu_lsu_req_i = u_idu_lsu_req_o; // @[src/main/scala/coreGen/core/Coretop.scala 323:23 925:36]
  assign u_lsu_adder_result_ex_i = u_exu_io_alu_adder_result_ex_o; // @[src/main/scala/coreGen/core/Coretop.scala 296:34 1065:44]
  assign u_lsu_lsu_err_clean_data_flag_i = u_idu_lsu_err_clean_data_flag_o; // @[src/main/scala/coreGen/core/Coretop.scala 1221:41]
  assign u_lsu_ready_wb_i = 1'h1; // @[src/main/scala/coreGen/core/Coretop.scala 341:24 1387:43]
  assign u_wb_io_en_wb_i = u_idu_en_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 339:21 985:33]
  assign u_wb_io_instr_perf_count_id_i = u_idu_instr_perf_count_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 219:34 987:33]
  assign u_wb_io_rf_waddr_id_i = u_idu_rf_waddr_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 278:33 975:33]
  assign u_wb_io_rf_wdata_id_i = u_idu_rf_wdata_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 279:33 976:33]
  assign u_wb_io_rf_wdata_id_pol_i = u_idu_rf_wdata_id_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 280:33 977:33]
  assign u_wb_io_rf_we_id_i = u_idu_rf_we_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 281:33 978:33]
  assign u_wb_io_rf_wdata_lsu_i = u_lsu_lsu_rdata_o; // @[src/main/scala/coreGen/core/Coretop.scala 274:33 1234:36]
  assign u_wb_io_rf_wdata_lsu_pol_i = u_lsu_lsu_rdata_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 275:33 1235:36]
  assign u_wb_io_rf_we_lsu_i = u_lsu_lsu_rdata_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 277:33 1236:41]
  assign u_wb_io_lsu_resp_valid_i = u_lsu_lsu_resp_valid_o; // @[src/main/scala/coreGen/core/Coretop.scala 332:30 1239:37]
  assign u_wb_io_lsu_resp_err_i = lsu_load_err | lsu_store_err; // @[src/main/scala/coreGen/core/Coretop.scala 1093:34]
  assign u_csr_clock = core_clock_gate_i_clk_o; // @[src/main/scala/coreGen/core/Coretop.scala 619:19 675:9]
  assign u_csr_reset = reset;
  assign u_csr_csr_access_i = u_idu_csr_access_o; // @[src/main/scala/coreGen/core/Coretop.scala 311:26 902:41]
  assign u_csr_csr_addr_i = csr_access ? alu_operand_b_ex_t[11:0] : 12'h0; // @[src/main/scala/coreGen/core/Coretop.scala 1636:20]
  assign u_csr_csr_wdata_i = u_idu_alu_operand_a_ex_t_o; // @[src/main/scala/coreGen/core/Coretop.scala 289:33 878:41]
  assign u_csr_csr_op_i = u_idu_csr_op_o; // @[src/main/scala/coreGen/core/Coretop.scala 312:22 903:41]
  assign u_csr_csr_op_en_i = u_idu_csr_op_en_o; // @[src/main/scala/coreGen/core/Coretop.scala 313:25 904:41]
  assign u_csr_irqs_i_timer = io_irq_timer; // @[src/main/scala/coreGen/core/Coretop.scala 1691:34]
  assign u_csr_irqs_i_software = io_irq_software; // @[src/main/scala/coreGen/core/Coretop.scala 1690:34]
  assign u_csr_irqs_i_external = io_irq_external; // @[src/main/scala/coreGen/core/Coretop.scala 1692:34]
  assign u_csr_irqs_i_nmi = irq_nmi_q; // @[src/main/scala/coreGen/core/Coretop.scala 1705:34]
  assign u_csr_nmi_mode_i = u_idu_nmi_mode_o; // @[src/main/scala/coreGen/core/Coretop.scala 350:24 949:33]
  assign u_csr_debug_mode_i = u_idu_debug_mode_o; // @[src/main/scala/coreGen/core/Coretop.scala 387:26 952:33]
  assign u_csr_pc_if_i = u_ifu_pc_if_o; // @[src/main/scala/coreGen/core/Coretop.scala 224:33 714:35]
  assign u_csr_pc_id_i = u_ifu_pc_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 225:33 715:35]
  assign u_csr_csr_save_if_i = u_idu_csr_save_if_o; // @[src/main/scala/coreGen/core/Coretop.scala 365:27 905:41]
  assign u_csr_csr_restore_mret_i = u_idu_csr_restore_mret_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 368:35 908:41]
  assign u_csr_csr_restore_dret_i = u_idu_csr_restore_dret_id_o; // @[src/main/scala/coreGen/core/Coretop.scala 369:35 909:41]
  assign u_csr_csr_save_cause_i = u_idu_csr_save_cause_o; // @[src/main/scala/coreGen/core/Coretop.scala 370:30 911:36]
  assign u_csr_csr_mcause_i = u_idu_exc_cause_o; // @[src/main/scala/coreGen/core/Coretop.scala 242:{37,37}]
  assign u_csr_csr_mtval_i = u_idu_csr_mtval_o; // @[src/main/scala/coreGen/core/Coretop.scala 374:25 912:36]
  assign u_csr_instr_ret_i = u_wb_io_perf_instr_ret_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 418:33 1393:43]
  assign register_file_i_clock = clock;
  assign register_file_i_reset = reset;
  assign register_file_i_io_intRegfile_raddr_0 = u_idu_rf_raddr_a_o; // @[src/main/scala/coreGen/core/Coretop.scala 261:33 967:33]
  assign register_file_i_io_intRegfile_raddr_1 = u_idu_rf_raddr_b_o; // @[src/main/scala/coreGen/core/Coretop.scala 264:33 970:33]
  assign register_file_i_io_intRegfile_waddr = u_wb_io_rf_waddr_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 269:33 1403:43]
  assign register_file_i_io_intRegfile_wdata = u_wb_io_rf_wdata_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 270:33 1404:43]
  assign register_file_i_io_intRegfile_wdata_pol = u_wb_io_rf_wdata_wb_pol_o; // @[src/main/scala/coreGen/core/Coretop.scala 271:33 1405:43]
  assign register_file_i_io_intRegfile_we = u_wb_io_rf_we_wb_o; // @[src/main/scala/coreGen/core/Coretop.scala 276:33 1406:43]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/Coretop.scala 621:41]
      core_busy_q <= 1'h0;
    end else begin
      core_busy_q <= ctrl_busy | if_busy | lsu_busy;
    end
  end
  always @(posedge clock or posedge _core_busy_q_T_2) begin
    if (_core_busy_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      fetch_enable_q <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else begin
      fetch_enable_q <= 1'h1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      irq_nmi_q <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      irq_nmi_q <= io_irq_nmi; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/core/Coretop.scala 668:43]
      core_sleep_q <= 1'h0;
    end else begin
      core_sleep_q <= ~clock_en;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  core_busy_q = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  fetch_enable_q = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  irq_nmi_q = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  core_sleep_q = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    core_busy_q = 1'h0;
  end
  if (_core_busy_q_T_2) begin
    fetch_enable_q = 1'h0;
  end
  if (~reset) begin
    irq_nmi_q = 1'h0;
  end
  if (~reset) begin
    core_sleep_q = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CoreWarp(
  input         clock,
  input         reset,
  input         io_test_en_i, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input  [31:0] io_boot_addr_i, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_instr_req_ready, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_instr_req_valid, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_instr_req_bits_addr, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_instr_resp_valid, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_instr_resp_bits_err, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input  [31:0] io_instr_resp_bits_rdata, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_data_req_ready, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_data_req_valid, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_data_req_bits_addr, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_data_req_bits_we, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [3:0]  io_data_req_bits_be, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_data_req_bits_wdata, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_data_resp_valid, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_data_resp_bits_err, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input  [31:0] io_data_resp_bits_rdata, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_irq_timer, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_irq_software, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_irq_external, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input         io_irq_nmi, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  input  [7:0]  io_plicId_id, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_plicClr_en, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_debug_ind_o, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_core_sleep_o, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_instr_priv_mode_o, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output        io_data_priv_mode_o, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_moniter_inst, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_moniter_pc, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_moniter_mcause, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [63:0] io_moniter_mcycle, // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
  output [31:0] io_moniter_mepc // @[src/main/scala/coreGen/core/CoreWarp.scala 116:16]
);
  wire  u_chiselcore_clock; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_reset; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_test_en_i; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_boot_addr_i; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_instr_req_ready; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_instr_req_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_instr_req_bits_addr; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_instr_resp_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_instr_resp_bits_err; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_instr_resp_bits_rdata; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_data_req_ready; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_data_req_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_data_req_bits_addr; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_data_req_bits_we; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [3:0] u_chiselcore_io_data_req_bits_be; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_data_req_bits_wdata; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_data_resp_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_data_resp_bits_err; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_data_resp_bits_rdata; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_irq_timer; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_irq_software; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_irq_external; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_irq_nmi; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [7:0] u_chiselcore_io_plicId_id; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_plicClr_en; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_debug_ind_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_core_sleep_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_instr_priv_mode_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire  u_chiselcore_io_data_priv_mode_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_moniter_inst; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_moniter_pc; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_moniter_mcause; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [63:0] u_chiselcore_io_moniter_mcycle; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  wire [31:0] u_chiselcore_io_moniter_mepc; // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
  ChiselCore u_chiselcore ( // @[src/main/scala/coreGen/core/CoreWarp.scala 118:30]
    .clock(u_chiselcore_clock),
    .reset(u_chiselcore_reset),
    .io_test_en_i(u_chiselcore_io_test_en_i),
    .io_boot_addr_i(u_chiselcore_io_boot_addr_i),
    .io_instr_req_ready(u_chiselcore_io_instr_req_ready),
    .io_instr_req_valid(u_chiselcore_io_instr_req_valid),
    .io_instr_req_bits_addr(u_chiselcore_io_instr_req_bits_addr),
    .io_instr_resp_valid(u_chiselcore_io_instr_resp_valid),
    .io_instr_resp_bits_err(u_chiselcore_io_instr_resp_bits_err),
    .io_instr_resp_bits_rdata(u_chiselcore_io_instr_resp_bits_rdata),
    .io_data_req_ready(u_chiselcore_io_data_req_ready),
    .io_data_req_valid(u_chiselcore_io_data_req_valid),
    .io_data_req_bits_addr(u_chiselcore_io_data_req_bits_addr),
    .io_data_req_bits_we(u_chiselcore_io_data_req_bits_we),
    .io_data_req_bits_be(u_chiselcore_io_data_req_bits_be),
    .io_data_req_bits_wdata(u_chiselcore_io_data_req_bits_wdata),
    .io_data_resp_valid(u_chiselcore_io_data_resp_valid),
    .io_data_resp_bits_err(u_chiselcore_io_data_resp_bits_err),
    .io_data_resp_bits_rdata(u_chiselcore_io_data_resp_bits_rdata),
    .io_irq_timer(u_chiselcore_io_irq_timer),
    .io_irq_software(u_chiselcore_io_irq_software),
    .io_irq_external(u_chiselcore_io_irq_external),
    .io_irq_nmi(u_chiselcore_io_irq_nmi),
    .io_plicId_id(u_chiselcore_io_plicId_id),
    .io_plicClr_en(u_chiselcore_io_plicClr_en),
    .io_debug_ind_o(u_chiselcore_io_debug_ind_o),
    .io_core_sleep_o(u_chiselcore_io_core_sleep_o),
    .io_instr_priv_mode_o(u_chiselcore_io_instr_priv_mode_o),
    .io_data_priv_mode_o(u_chiselcore_io_data_priv_mode_o),
    .io_moniter_inst(u_chiselcore_io_moniter_inst),
    .io_moniter_pc(u_chiselcore_io_moniter_pc),
    .io_moniter_mcause(u_chiselcore_io_moniter_mcause),
    .io_moniter_mcycle(u_chiselcore_io_moniter_mcycle),
    .io_moniter_mepc(u_chiselcore_io_moniter_mepc)
  );
  assign io_instr_req_valid = u_chiselcore_io_instr_req_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_instr_req_bits_addr = u_chiselcore_io_instr_req_bits_addr; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_data_req_valid = u_chiselcore_io_data_req_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_data_req_bits_addr = u_chiselcore_io_data_req_bits_addr; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_data_req_bits_we = u_chiselcore_io_data_req_bits_we; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_data_req_bits_be = u_chiselcore_io_data_req_bits_be; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_data_req_bits_wdata = u_chiselcore_io_data_req_bits_wdata; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_plicClr_en = u_chiselcore_io_plicClr_en; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_debug_ind_o = u_chiselcore_io_debug_ind_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_core_sleep_o = u_chiselcore_io_core_sleep_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_instr_priv_mode_o = u_chiselcore_io_instr_priv_mode_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_data_priv_mode_o = u_chiselcore_io_data_priv_mode_o; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_moniter_inst = u_chiselcore_io_moniter_inst; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_moniter_pc = u_chiselcore_io_moniter_pc; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_moniter_mcause = u_chiselcore_io_moniter_mcause; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_moniter_mcycle = u_chiselcore_io_moniter_mcycle; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign io_moniter_mepc = u_chiselcore_io_moniter_mepc; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_clock = clock;
  assign u_chiselcore_reset = reset;
  assign u_chiselcore_io_test_en_i = io_test_en_i; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_boot_addr_i = io_boot_addr_i; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_instr_req_ready = io_instr_req_ready; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_instr_resp_valid = io_instr_resp_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_instr_resp_bits_err = io_instr_resp_bits_err; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_instr_resp_bits_rdata = io_instr_resp_bits_rdata; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_data_req_ready = io_data_req_ready; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_data_resp_valid = io_data_resp_valid; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_data_resp_bits_err = io_data_resp_bits_err; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_data_resp_bits_rdata = io_data_resp_bits_rdata; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_irq_timer = io_irq_timer; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_irq_software = io_irq_software; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_irq_external = io_irq_external; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_irq_nmi = io_irq_nmi; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
  assign u_chiselcore_io_plicId_id = io_plicId_id; // @[src/main/scala/coreGen/core/CoreWarp.scala 120:8]
endmodule
module Sbus(
  input         clock,
  input         reset,
  output        io_in_1_req_ready, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_in_1_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_in_1_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_in_1_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [3:0]  io_in_1_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_in_1_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_in_1_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_in_1_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_in_1_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_in_2_req_ready, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_in_2_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_in_2_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [3:0]  io_in_2_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_in_2_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_in_2_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_in_2_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_0_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_0_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_0_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [3:0]  io_out_0_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_0_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_0_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_out_0_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_1_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_1_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_1_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [3:0]  io_out_1_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_1_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_1_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_out_1_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_2_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_2_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_3_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_3_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_3_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_3_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_3_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_out_3_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_4_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_4_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_4_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [31:0] io_out_4_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_4_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_out_4_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output        io_out_5_req_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_5_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input         io_out_5_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  input  [31:0] io_out_5_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
  output [1:0]  io_stop // @[src/main/scala/coreGen/bmu/Sbus.scala 57:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [1:0] _inSelIdxT_T = io_in_2_req_valid ? 2'h2 : 2'h3; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  wire [1:0] inSelIdxT = io_in_1_req_valid ? 2'h1 : _inSelIdxT_T; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  wire [1:0] inSelIdx = inSelIdxT == 2'h3 ? 2'h0 : inSelIdxT; // @[src/main/scala/coreGen/bmu/Sbus.scala 70:23]
  wire [31:0] _outSelOH_T_1 = 32'h20000 - 32'h1; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:46]
  wire [31:0] _outSelOH_T_2 = ~_outSelOH_T_1; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:29]
  wire [31:0] _GEN_1 = 2'h1 == inSelIdx ? io_in_1_req_bits_addr : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:{27,27}]
  wire [31:0] _GEN_2 = 2'h2 == inSelIdx ? io_in_2_req_bits_addr : _GEN_1; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:{27,27}]
  wire [31:0] _outSelOH_T_3 = _GEN_2 & _outSelOH_T_2; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:27]
  wire  outSelOH_0 = _outSelOH_T_3 == 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:60]
  wire  outSelOH_1 = _outSelOH_T_3 == 32'h20000; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:60]
  wire  outSelOH_2 = _outSelOH_T_3 == 32'h40000; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:60]
  wire [31:0] _outSelOH_T_16 = 32'h1000 - 32'h1; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:46]
  wire [31:0] _outSelOH_T_17 = ~_outSelOH_T_16; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:29]
  wire [31:0] _outSelOH_T_18 = _GEN_2 & _outSelOH_T_17; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:27]
  wire  outSelOH_3 = _outSelOH_T_18 == 32'h60000; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:60]
  wire [31:0] _outSelOH_T_21 = 32'h1000000 - 32'h1; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:46]
  wire [31:0] _outSelOH_T_22 = ~_outSelOH_T_21; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:29]
  wire [31:0] _outSelOH_T_23 = _GEN_2 & _outSelOH_T_22; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:27]
  wire  outSelOH_4 = _outSelOH_T_23 == 32'h1000000; // @[src/main/scala/coreGen/bmu/Sbus.scala 73:60]
  reg [1:0] s1_inSelIdx; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  s1_outSelOH_0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  s1_outSelOH_1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  s1_outSelOH_2; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  s1_outSelOH_3; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  s1_outSelOH_4; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  s1_outSelOH_5; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  wire [5:0] _s1_outSelIdx_T = {s1_outSelOH_5,s1_outSelOH_4,s1_outSelOH_3,s1_outSelOH_2,s1_outSelOH_1,s1_outSelOH_0}; // @[src/main/scala/coreGen/bmu/Sbus.scala 82:52]
  wire [2:0] _s1_outSelIdx_T_7 = _s1_outSelIdx_T[4] ? 3'h4 : 3'h5; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  wire [2:0] _s1_outSelIdx_T_8 = _s1_outSelIdx_T[3] ? 3'h3 : _s1_outSelIdx_T_7; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  wire [2:0] _s1_outSelIdx_T_9 = _s1_outSelIdx_T[2] ? 3'h2 : _s1_outSelIdx_T_8; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  wire [2:0] _s1_outSelIdx_T_10 = _s1_outSelIdx_T[1] ? 3'h1 : _s1_outSelIdx_T_9; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  wire [2:0] s1_outSelIdx = _s1_outSelIdx_T[0] ? 3'h0 : _s1_outSelIdx_T_10; // @[src/main/scala/chisel3/util/Mux.scala 50:70]
  reg [1:0] stop_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  wire  _T_1 = io_out_2_req_valid | io_out_3_req_valid | io_out_4_req_valid; // @[src/main/scala/coreGen/bmu/Sbus.scala 87:47]
  wire [5:0] _T_9 = {1'h1,outSelOH_4,outSelOH_3,outSelOH_2,outSelOH_1,outSelOH_0}; // @[src/main/scala/coreGen/bmu/Sbus.scala 105:22]
  wire  _io_out_0_req_bits_T = stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:42]
  wire  _io_out_0_req_bits_T_1 = _T_9[0] & stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:40]
  wire  _GEN_51 = 2'h1 == inSelIdx; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:{30,30}]
  wire [3:0] _GEN_17 = 2'h1 == inSelIdx ? io_in_1_req_bits_be : 4'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:{30,30}]
  wire [31:0] _GEN_18 = 2'h1 == inSelIdx ? io_in_1_req_bits_wdata : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:{30,30}]
  wire  _GEN_20 = 2'h2 == inSelIdx ? 1'h0 : 2'h1 == inSelIdx & io_in_1_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:{30,30}]
  wire [3:0] _GEN_21 = 2'h2 == inSelIdx ? io_in_2_req_bits_be : _GEN_17; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:{30,30}]
  wire [31:0] _GEN_22 = 2'h2 == inSelIdx ? 32'h0 : _GEN_18; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:{30,30}]
  wire  _GEN_26 = 2'h2 == inSelIdx ? io_in_2_req_valid : _GEN_51 & io_in_1_req_valid; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:{31,31}]
  wire  _io_out_1_req_bits_T_1 = _T_9[1] & stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:40]
  wire  _io_out_2_req_bits_T_1 = _T_9[2] & stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:40]
  wire  _io_out_3_req_bits_T_1 = _T_9[3] & stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:40]
  wire  _io_out_4_req_bits_T_1 = _T_9[4] & stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:40]
  wire  _io_out_5_req_bits_T_1 = _T_9[5] & stop_q == 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:40]
  wire  _GEN_31 = 3'h1 == s1_outSelIdx ? io_out_1_resp_valid : io_out_0_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire [31:0] _GEN_34 = 3'h1 == s1_outSelIdx ? io_out_1_resp_bits_rdata : io_out_0_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_35 = 3'h2 == s1_outSelIdx ? 1'h0 : _GEN_31; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire [31:0] _GEN_38 = 3'h2 == s1_outSelIdx ? 32'h0 : _GEN_34; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_39 = 3'h3 == s1_outSelIdx ? io_out_3_resp_valid : _GEN_35; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_41 = 3'h3 == s1_outSelIdx ? 1'h0 : 3'h2 == s1_outSelIdx & io_out_2_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire [31:0] _GEN_42 = 3'h3 == s1_outSelIdx ? io_out_3_resp_bits_rdata : _GEN_38; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_43 = 3'h4 == s1_outSelIdx ? io_out_4_resp_valid : _GEN_39; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_45 = 3'h4 == s1_outSelIdx ? 1'h0 : _GEN_41; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire [31:0] _GEN_46 = 3'h4 == s1_outSelIdx ? io_out_4_resp_bits_rdata : _GEN_42; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_47 = 3'h5 == s1_outSelIdx ? io_out_5_resp_valid : _GEN_43; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire  _GEN_49 = 3'h5 == s1_outSelIdx ? io_out_5_resp_bits_err : _GEN_45; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  wire [31:0] _GEN_50 = 3'h5 == s1_outSelIdx ? io_out_5_resp_bits_rdata : _GEN_46; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:{24,24}]
  assign io_in_1_req_ready = _GEN_51 & (_GEN_26 & _io_out_0_req_bits_T); // @[src/main/scala/coreGen/bmu/Sbus.scala 124:29]
  assign io_in_1_resp_valid = 2'h1 == s1_inSelIdx & _io_out_0_req_bits_T & _GEN_47; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:24]
  assign io_in_1_resp_bits_err = 2'h1 == s1_inSelIdx & _io_out_0_req_bits_T & _GEN_49; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:24]
  assign io_in_1_resp_bits_rdata = 2'h1 == s1_inSelIdx & _io_out_0_req_bits_T ? _GEN_50 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:24]
  assign io_in_2_req_ready = 2'h2 == inSelIdx & (_GEN_26 & _io_out_0_req_bits_T); // @[src/main/scala/coreGen/bmu/Sbus.scala 124:29]
  assign io_in_2_resp_valid = 2'h2 == s1_inSelIdx & _io_out_0_req_bits_T & _GEN_47; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:24]
  assign io_in_2_resp_bits_err = 2'h2 == s1_inSelIdx & _io_out_0_req_bits_T & _GEN_49; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:24]
  assign io_in_2_resp_bits_rdata = 2'h2 == s1_inSelIdx & _io_out_0_req_bits_T ? _GEN_50 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 111:24]
  assign io_out_0_req_valid = _io_out_0_req_bits_T_1 & _GEN_26; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:31]
  assign io_out_0_req_bits_addr = _T_9[0] & stop_q == 2'h0 ? _GEN_2 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_0_req_bits_we = _T_9[0] & stop_q == 2'h0 & _GEN_20; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_0_req_bits_be = _T_9[0] & stop_q == 2'h0 ? _GEN_21 : 4'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_0_req_bits_wdata = _T_9[0] & stop_q == 2'h0 ? _GEN_22 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_1_req_valid = _io_out_1_req_bits_T_1 & _GEN_26; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:31]
  assign io_out_1_req_bits_addr = _T_9[1] & stop_q == 2'h0 ? _GEN_2 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_1_req_bits_we = _T_9[1] & stop_q == 2'h0 & _GEN_20; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_1_req_bits_be = _T_9[1] & stop_q == 2'h0 ? _GEN_21 : 4'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_1_req_bits_wdata = _T_9[1] & stop_q == 2'h0 ? _GEN_22 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_2_req_valid = _io_out_2_req_bits_T_1 & _GEN_26; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:31]
  assign io_out_3_req_valid = _io_out_3_req_bits_T_1 & _GEN_26; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:31]
  assign io_out_3_req_bits_addr = _T_9[3] & stop_q == 2'h0 ? _GEN_2 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_3_req_bits_we = _T_9[3] & stop_q == 2'h0 & _GEN_20; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_3_req_bits_wdata = _T_9[3] & stop_q == 2'h0 ? _GEN_22 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_4_req_valid = _io_out_4_req_bits_T_1 & _GEN_26; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:31]
  assign io_out_4_req_bits_addr = _T_9[4] & stop_q == 2'h0 ? _GEN_2 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_4_req_bits_we = _T_9[4] & stop_q == 2'h0 & _GEN_20; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_4_req_bits_wdata = _T_9[4] & stop_q == 2'h0 ? _GEN_22 : 32'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 106:30]
  assign io_out_5_req_valid = _io_out_5_req_bits_T_1 & _GEN_26; // @[src/main/scala/coreGen/bmu/Sbus.scala 107:31]
  assign io_stop = stop_q; // @[src/main/scala/coreGen/bmu/Sbus.scala 95:13]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_inSelIdx <= 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 99:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 70:23]
      if (inSelIdxT == 2'h3) begin // @[src/main/scala/chisel3/util/Mux.scala 50:70]
        s1_inSelIdx <= 2'h0;
      end else if (io_in_1_req_valid) begin // @[src/main/scala/chisel3/util/Mux.scala 50:70]
        s1_inSelIdx <= 2'h1;
      end else if (io_in_2_req_valid) begin
        s1_inSelIdx <= 2'h2;
      end else begin
        s1_inSelIdx <= 2'h3;
      end
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_outSelOH_0 <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 98:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 101:21]
      s1_outSelOH_0 <= outSelOH_0;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_outSelOH_1 <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 98:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 101:21]
      s1_outSelOH_1 <= outSelOH_1;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_outSelOH_2 <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 98:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 101:21]
      s1_outSelOH_2 <= outSelOH_2;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_outSelOH_3 <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 98:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 101:21]
      s1_outSelOH_3 <= outSelOH_3;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_outSelOH_4 <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 98:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 101:21]
      s1_outSelOH_4 <= outSelOH_4;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 97:52]
      s1_outSelOH_5 <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 98:21]
    end else if (!(stop_q == 2'h1 | stop_q == 2'h2)) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 101:21]
      s1_outSelOH_5 <= 1'h1;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 87:85]
      stop_q <= 2'h0; // @[src/main/scala/coreGen/bmu/Sbus.scala 88:16]
    end else if ((io_out_2_req_valid | io_out_3_req_valid | io_out_4_req_valid) & io_in_1_req_valid) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 89:91]
      stop_q <= 2'h2; // @[src/main/scala/coreGen/bmu/Sbus.scala 90:16]
    end else if (_T_1 & io_in_2_req_valid) begin // @[src/main/scala/coreGen/bmu/Sbus.scala 92:16]
      stop_q <= 2'h1;
    end else begin
      stop_q <= 2'h0;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s1_inSelIdx = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  s1_outSelOH_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_outSelOH_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s1_outSelOH_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s1_outSelOH_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_outSelOH_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s1_outSelOH_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  stop_q = _RAND_7[1:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    s1_inSelIdx = 2'h0;
  end
  if (~reset) begin
    s1_outSelOH_0 = 1'h0;
  end
  if (~reset) begin
    s1_outSelOH_1 = 1'h0;
  end
  if (~reset) begin
    s1_outSelOH_2 = 1'h0;
  end
  if (~reset) begin
    s1_outSelOH_3 = 1'h0;
  end
  if (~reset) begin
    s1_outSelOH_4 = 1'h0;
  end
  if (~reset) begin
    s1_outSelOH_5 = 1'h0;
  end
  if (~reset) begin
    stop_q = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SbusDefaultSlave(
  input         clock,
  input         reset,
  input         io_req_valid, // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 8:16]
  output        io_resp_valid, // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 8:16]
  output        io_resp_bits_rdata_pol, // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 8:16]
  output        io_resp_bits_err, // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 8:16]
  output [31:0] io_resp_bits_rdata // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 8:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  io_resp_valid_REG; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  assign io_resp_valid = io_resp_valid_REG; // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 10:19]
  assign io_resp_bits_rdata_pol = 1'h0; // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 15:28]
  assign io_resp_bits_err = 1'h1; // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 13:22]
  assign io_resp_bits_rdata = 32'h0; // @[src/main/scala/coreGen/bmu/SbusDefaultSlave.scala 14:24]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      io_resp_valid_REG <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      io_resp_valid_REG <= io_req_valid; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_resp_valid_REG = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    io_resp_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ChiselRam1pBwe(
  input         clock,
  input         reset,
  input         io_a_req_i, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  input         io_a_we_i, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  input  [3:0]  io_a_be_i, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  input  [31:0] io_a_addr_i, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  input  [31:0] io_a_wdata_i, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output        io_a_rvalid_o, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output [31:0] io_a_rdata_o, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output        io_sram_0_cen, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output        io_sram_0_wen, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output [3:0]  io_sram_0_be, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output [31:0] io_sram_0_addr, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  output [31:0] io_sram_0_wdata, // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
  input  [31:0] io_sram_0_rdata // @[src/main/scala/coreGen/bmu/ChiselRam.scala 30:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  rvalidQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  assign io_a_rvalid_o = rvalidQ; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 136:21]
  assign io_a_rdata_o = io_sram_0_rdata; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 162:25]
  assign io_sram_0_cen = io_a_req_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 129:24]
  assign io_sram_0_wen = io_a_we_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 130:24]
  assign io_sram_0_be = io_a_be_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 131:24]
  assign io_sram_0_addr = io_a_addr_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 132:24]
  assign io_sram_0_wdata = io_a_wdata_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 159:28]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      rvalidQ <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      rvalidQ <= io_a_req_i; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rvalidQ = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    rvalidQ = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ClintSimple(
  input         clock,
  input         reset,
  input         io_bus_req_valid, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  input  [31:0] io_bus_req_bits_addr, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  input         io_bus_req_bits_we, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  input  [31:0] io_bus_req_bits_wdata, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  output        io_bus_resp_valid, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  output [31:0] io_bus_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  input         io_testmode, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  input         io_rtc, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  output        io_timer, // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
  output        io_software // @[src/main/scala/coreGen/bmu/clint.scala 20:27]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  _syncQ_T = ~io_testmode; // @[src/main/scala/coreGen/bmu/clint.scala 33:61]
  wire  _syncQ_T_3 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:31]
  reg [2:0] syncQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  wire [2:0] syncD = {io_rtc,syncQ[2:1]}; // @[src/main/scala/coreGen/bmu/clint.scala 34:32]
  wire  increaseflag = syncQ[1] & ~syncQ[0]; // @[src/main/scala/coreGen/bmu/clint.scala 35:34]
  wire [7:0] defineaddress = io_bus_req_bits_addr[7:0]; // @[src/main/scala/coreGen/bmu/clint.scala 40:55]
  reg [23:0] mtimeQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [23:0] mtimecmpQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg  msipQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  wire [23:0] _mtimeD_T_1 = mtimeQ + 24'h1; // @[src/main/scala/coreGen/bmu/clint.scala 53:57]
  wire [23:0] _mtimeD_T_2 = increaseflag ? _mtimeD_T_1 : mtimeQ; // @[src/main/scala/coreGen/bmu/clint.scala 53:36]
  wire [31:0] _rdataD_T_2 = {8'h0,mtimeQ}; // @[src/main/scala/coreGen/bmu/clint.scala 74:56]
  wire [31:0] _rdataD_T_3 = {8'h0,mtimecmpQ}; // @[src/main/scala/coreGen/bmu/clint.scala 76:56]
  reg  rvalidQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [31:0] rdataQ; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  assign io_bus_resp_valid = rvalidQ; // @[src/main/scala/coreGen/bmu/clint.scala 93:29]
  assign io_bus_resp_bits_rdata = rdataQ; // @[src/main/scala/coreGen/bmu/clint.scala 94:29]
  assign io_timer = mtimeQ >= mtimecmpQ; // @[src/main/scala/coreGen/bmu/clint.scala 98:40]
  assign io_software = msipQ; // @[src/main/scala/coreGen/bmu/clint.scala 97:29]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      syncQ <= 3'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (_syncQ_T) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      syncQ <= syncD;
    end
  end
  always @(posedge clock or posedge _syncQ_T_3) begin
    if (_syncQ_T_3) begin // @[src/main/scala/coreGen/bmu/clint.scala 55:49]
      mtimeQ <= 24'h0; // @[src/main/scala/coreGen/bmu/clint.scala 56:44 57:26 53:29]
    end else if (io_bus_req_valid & io_bus_req_bits_we) begin // @[src/main/scala/coreGen/bmu/clint.scala 53:29]
      if (defineaddress == 8'h0) begin
        mtimeQ <= io_bus_req_bits_wdata[23:0];
      end else begin
        mtimeQ <= _mtimeD_T_2;
      end
    end else begin
      mtimeQ <= _mtimeD_T_2;
    end
  end
  always @(posedge clock or posedge _syncQ_T_3) begin
    if (_syncQ_T_3) begin // @[src/main/scala/coreGen/bmu/clint.scala 55:49]
      mtimecmpQ <= 24'hffffff; // @[src/main/scala/coreGen/bmu/clint.scala 52:{29,29} 56:44 60:54 61:26]
    end else if (io_bus_req_valid & io_bus_req_bits_we) begin // @[src/main/scala/coreGen/bmu/clint.scala 52:29]
      if (!(defineaddress == 8'h0)) begin
        if (defineaddress == 8'h8) begin
          mtimecmpQ <= io_bus_req_bits_wdata[23:0];
        end
      end
    end
  end
  always @(posedge clock or posedge _syncQ_T_3) begin
    if (_syncQ_T_3) begin // @[src/main/scala/coreGen/bmu/clint.scala 55:49]
      msipQ <= 1'h0; // @[src/main/scala/coreGen/bmu/clint.scala 51:{29,29,29} 56:44 60:54 64:50 65:26]
    end else if (io_bus_req_valid & io_bus_req_bits_we) begin // @[src/main/scala/coreGen/bmu/clint.scala 51:29]
      if (!(defineaddress == 8'h0)) begin
        if (!(defineaddress == 8'h8)) begin
          if (defineaddress == 8'h10) begin
            msipQ <= io_bus_req_bits_wdata[0];
          end
        end
      end
    end
  end
  always @(posedge clock or posedge _syncQ_T_3) begin
    if (_syncQ_T_3) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      rvalidQ <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      rvalidQ <= io_bus_req_valid; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
  always @(posedge clock or posedge _syncQ_T_3) begin
    if (_syncQ_T_3) begin // @[src/main/scala/coreGen/bmu/clint.scala 71:21]
      rdataQ <= 32'h0; // @[src/main/scala/coreGen/bmu/clint.scala 72:{56,56,56}]
    end else if (io_bus_req_valid & ~io_bus_req_bits_we) begin
      if (8'h10 == defineaddress) begin
        rdataQ <= 32'h1;
      end else if (8'h8 == defineaddress) begin
        rdataQ <= _rdataD_T_3;
      end else if (8'h0 == defineaddress) begin
        rdataQ <= _rdataD_T_2;
      end else begin
        rdataQ <= 32'h0;
      end
    end else begin
      rdataQ <= 32'h0;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  syncQ = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  mtimeQ = _RAND_1[23:0];
  _RAND_2 = {1{`RANDOM}};
  mtimecmpQ = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  msipQ = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  rvalidQ = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rdataQ = _RAND_5[31:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    syncQ = 3'h0;
  end
  if (_syncQ_T_3) begin
    mtimeQ = 24'h0;
  end
  if (_syncQ_T_3) begin
    mtimecmpQ = 24'hffffff;
  end
  if (_syncQ_T_3) begin
    msipQ = 1'h0;
  end
  if (_syncQ_T_3) begin
    rvalidQ = 1'h0;
  end
  if (_syncQ_T_3) begin
    rdataQ = 32'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2InnerBIbus50m32direct(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input         io_out_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output        io_out_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output [31:0] io_out_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output        io_out_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output [3:0]  io_out_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output [1:0]  io_out_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  output        io_out_req_bits_mr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input         io_out_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input         io_out_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
  input  [31:0] io_out_resp_bits_rdata // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 8:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  _fsm_cs_T_2 = ~reset; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 12:31]
  reg  valid_q; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [31:0] data_q_addr; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [3:0] data_q_be; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [1:0] data_q_hport; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  out_req_valid = valid_q; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 15:23 31:23]
  wire  out_hs = out_req_valid & io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 29:32]
  wire  _GEN_0 = out_hs ? 1'h0 : valid_q; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 45:17 46:17 src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  _T = io_in_req_ready & io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire [31:0] out_req_bits_addr = data_q_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 15:23 32:23]
  wire  out_req_bits_we = 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 15:23 33:23]
  wire [3:0] out_req_bits_be = data_q_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 15:23 34:23]
  wire [1:0] out_req_bits_hport = data_q_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 15:23 35:23]
  assign io_in_req_ready = (~valid_q | io_out_req_ready) & io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 30:52]
  assign io_in_resp_valid = io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 72:19]
  assign io_in_resp_bits_err = io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 73:22]
  assign io_in_resp_bits_rdata = io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 89:48]
  assign io_out_req_valid = out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 83:22]
  assign io_out_req_bits_addr = out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 56:28]
  assign io_out_req_bits_we = 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 54:28]
  assign io_out_req_bits_be = 4'hf; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 55:28]
  assign io_out_req_bits_hport = out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 58:28]
  assign io_out_req_bits_mr = 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 15:23 81:21]
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 48:41]
      valid_q <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 49:17]
    end else begin
      valid_q <= _T | _GEN_0;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 48:41]
      data_q_addr <= 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 50:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_addr <= io_in_req_bits_addr;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 48:41]
      data_q_be <= 4'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 50:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_be <= io_in_req_bits_be;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 48:41]
      data_q_hport <= 2'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2InnerBIbus50m32direct.scala 50:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_hport <= io_in_req_bits_hport;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  valid_q = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_q_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  data_q_be = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  data_q_hport = _RAND_3[1:0];
`endif // RANDOMIZE_REG_INIT
  if (_fsm_cs_T_2) begin
    valid_q = 1'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_addr = 32'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_be = 4'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_hport = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2InnerIbus50mFF(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input         io_out_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output        io_out_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output [31:0] io_out_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output        io_out_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output [3:0]  io_out_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  output [1:0]  io_out_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input         io_out_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input         io_out_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
  input  [31:0] io_out_resp_bits_rdata // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 45:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  mod_clock; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_reset; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [31:0] mod_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [3:0] mod_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [1:0] mod_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [31:0] mod_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [31:0] mod_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [3:0] mod_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [1:0] mod_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_out_req_bits_mr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire  mod_io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  wire [31:0] mod_io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
  reg  valid; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [31:0] data_addr; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [3:0] data_be; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [1:0] data_hport; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  _T = mod_io_in_req_ready & mod_io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire  _GEN_0 = _T ? 1'h0 : valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 59:33 60:15 src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  _T_1 = io_in_req_ready & io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  InnerB2InnerBIbus50m32direct mod ( // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 54:21]
    .clock(mod_clock),
    .reset(mod_reset),
    .io_in_req_ready(mod_io_in_req_ready),
    .io_in_req_valid(mod_io_in_req_valid),
    .io_in_req_bits_addr(mod_io_in_req_bits_addr),
    .io_in_req_bits_be(mod_io_in_req_bits_be),
    .io_in_req_bits_hport(mod_io_in_req_bits_hport),
    .io_in_resp_valid(mod_io_in_resp_valid),
    .io_in_resp_bits_err(mod_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(mod_io_in_resp_bits_rdata),
    .io_out_req_ready(mod_io_out_req_ready),
    .io_out_req_valid(mod_io_out_req_valid),
    .io_out_req_bits_addr(mod_io_out_req_bits_addr),
    .io_out_req_bits_we(mod_io_out_req_bits_we),
    .io_out_req_bits_be(mod_io_out_req_bits_be),
    .io_out_req_bits_hport(mod_io_out_req_bits_hport),
    .io_out_req_bits_mr(mod_io_out_req_bits_mr),
    .io_out_resp_valid(mod_io_out_resp_valid),
    .io_out_resp_bits_err(mod_io_out_resp_bits_err),
    .io_out_resp_bits_rdata(mod_io_out_resp_bits_rdata)
  );
  assign io_in_req_ready = ~valid | mod_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 67:31]
  assign io_in_resp_valid = mod_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 72:16]
  assign io_in_resp_bits_err = mod_io_in_resp_bits_err & mod_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 73:52]
  assign io_in_resp_bits_rdata = mod_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 72:16]
  assign io_out_req_valid = mod_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign io_out_req_bits_addr = mod_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign io_out_req_bits_we = mod_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign io_out_req_bits_be = mod_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign io_out_req_bits_hport = mod_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign mod_clock = clock;
  assign mod_reset = reset;
  assign mod_io_in_req_valid = valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 70:25]
  assign mod_io_in_req_bits_addr = data_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 69:24]
  assign mod_io_in_req_bits_be = data_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 69:24]
  assign mod_io_in_req_bits_hport = data_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 69:24]
  assign mod_io_out_req_ready = io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign mod_io_out_resp_valid = io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign mod_io_out_resp_bits_err = io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  assign mod_io_out_resp_bits_rdata = io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 78:12]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 62:27]
      valid <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 63:15]
    end else begin
      valid <= _T_1 | _GEN_0;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 62:27]
      data_addr <= 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 64:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_addr <= io_in_req_bits_addr;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 62:27]
      data_be <= 4'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 64:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_be <= io_in_req_bits_be;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 62:27]
      data_hport <= 2'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 64:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_hport <= io_in_req_bits_hport;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  data_be = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  data_hport = _RAND_3[1:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    valid = 1'h0;
  end
  if (~reset) begin
    data_addr = 32'h0;
  end
  if (~reset) begin
    data_be = 4'h0;
  end
  if (~reset) begin
    data_hport = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2ahbl50m32(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input         io_in_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input  [31:0] io_in_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input         io_out_hready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output [1:0]  io_out_htrans, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output [2:0]  io_out_hsize, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output        io_out_hwrite, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output [1:0]  io_out_hprot, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output [31:0] io_out_haddr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  output [31:0] io_out_hwdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input  [1:0]  io_out_hresp, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
  input  [31:0] io_out_hrdata // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 8:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  _fsm_cs_T_2 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:31]
  reg [2:0] fsm_cs; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  wire  herr = |io_out_hresp; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 24:26]
  wire  _fsm_ns_T_1 = ~herr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 36:51]
  wire  needSplit = io_in_req_bits_be[1] & io_in_req_bits_be[2] & ~(io_in_req_bits_be[0] & io_in_req_bits_be[3]); // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahblWithFifo.scala 17:33]
  wire [1:0] _fsm_ns_T_3 = needSplit ? 2'h2 : 2'h1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 37:28]
  wire  _fsm_ns_T_5 = ~io_out_hready & herr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 38:37]
  wire [2:0] _fsm_ns_T_6 = ~io_out_hready & herr ? 3'h4 : 3'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 38:28]
  wire [2:0] _fsm_ns_T_7 = io_in_req_valid & io_out_hready & ~herr ? {{1'd0}, _fsm_ns_T_3} : _fsm_ns_T_6; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 36:26]
  wire  _fsm_ns_T_9 = io_out_hready & _fsm_ns_T_1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 41:34]
  wire [1:0] _fsm_ns_T_11 = io_in_req_valid ? _fsm_ns_T_3 : 2'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 42:28]
  wire [2:0] _fsm_ns_T_14 = _fsm_ns_T_5 ? 3'h4 : 3'h1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 45:28]
  wire [2:0] _fsm_ns_T_15 = io_out_hready & _fsm_ns_T_1 ? {{1'd0}, _fsm_ns_T_11} : _fsm_ns_T_14; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 41:26]
  wire [2:0] _fsm_ns_T_20 = _fsm_ns_T_5 ? 3'h4 : 3'h2; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 50:28]
  wire [2:0] _fsm_ns_T_21 = _fsm_ns_T_9 ? 3'h3 : _fsm_ns_T_20; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 48:26]
  wire [2:0] _fsm_ns_T_28 = _fsm_ns_T_5 ? 3'h4 : 3'h3; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 58:28]
  wire [2:0] _fsm_ns_T_29 = _fsm_ns_T_9 ? {{1'd0}, _fsm_ns_T_11} : _fsm_ns_T_28; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 54:26]
  wire [2:0] _fsm_ns_T_31 = io_out_hready & herr ? 3'h0 : 3'h4; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 61:26]
  wire [2:0] _GEN_4 = 3'h4 == fsm_cs ? _fsm_ns_T_31 : 3'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20 61:20 18:26]
  wire [2:0] _GEN_5 = 3'h3 == fsm_cs ? _fsm_ns_T_29 : _GEN_4; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20 54:20]
  wire [2:0] _GEN_6 = 3'h2 == fsm_cs ? _fsm_ns_T_21 : _GEN_5; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20 48:20]
  wire [2:0] _GEN_7 = 3'h1 == fsm_cs ? _fsm_ns_T_15 : _GEN_6; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20 41:20]
  wire [2:0] fsm_ns = 3'h0 == fsm_cs ? _fsm_ns_T_7 : _GEN_7; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20 36:20]
  wire  _s1_needSplit_T = fsm_cs == 3'h2; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 22:53]
  reg  s1_needSplit; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  reg [31:0] s1_wdata; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  wire [1:0] _addr1Offset_T_8 = io_in_req_bits_be[3] ? 2'h3 : 2'h0; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _addr1Offset_T_9 = io_in_req_bits_be[2] ? 2'h2 : _addr1Offset_T_8; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _addr1Offset_T_10 = io_in_req_bits_be[1] ? 2'h1 : _addr1Offset_T_9; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] addr1Offset = io_in_req_bits_be[0] ? 2'h0 : _addr1Offset_T_10; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] addr1 = {io_in_req_bits_addr[31:2],addr1Offset}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 71:20]
  wire [31:0] addr2 = {io_in_req_bits_addr[31:2],2'h2}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 72:20]
  wire [2:0] size2 = io_in_req_bits_be[3] ? 3'h1 : 3'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 75:20]
  wire  _io_in_req_ready_T_2 = fsm_cs != 3'h4; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 77:70]
  wire  _io_in_req_ready_T_4 = fsm_cs == 3'h4; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 77:93]
  wire  _io_in_resp_valid_T_1 = fsm_cs == 3'h3; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 78:61]
  wire [2:0] _size1_T_1 = 4'h7 == io_in_req_bits_be ? 3'h1 : 3'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 10:49]
  wire [2:0] _size1_T_3 = 4'hf == io_in_req_bits_be ? 3'h2 : _size1_T_1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 10:49]
  wire [2:0] _size1_T_5 = 4'h3 == io_in_req_bits_be ? 3'h1 : _size1_T_3; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 10:49]
  wire [2:0] size1 = 4'hc == io_in_req_bits_be ? 3'h1 : _size1_T_5; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 10:49]
  wire [7:0] _in_resp_mask1_T_2 = io_in_req_bits_be[1] ? 8'hff : 8'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 91:66]
  wire [7:0] _in_resp_mask1_T_5 = io_in_req_bits_be[0] ? 8'hff : 8'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 91:94]
  wire [31:0] _in_resp_mask1_T_6 = {16'h0,_in_resp_mask1_T_2,_in_resp_mask1_T_5}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 91:50]
  wire  _in_resp_mask1_T_8 = io_out_hready & _s1_needSplit_T; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 91:126]
  reg [31:0] in_resp_mask1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire [7:0] _in_resp_mask2_T_2 = io_in_req_bits_be[3] ? 8'hff : 8'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 92:55]
  wire [7:0] _in_resp_mask2_T_5 = io_in_req_bits_be[2] ? 8'hff : 8'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 92:83]
  wire [31:0] _in_resp_mask2_T_6 = {_in_resp_mask2_T_2,_in_resp_mask2_T_5,16'h0}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 92:50]
  reg [31:0] in_resp_mask2; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  reg [31:0] resp_rdata1; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
  wire [31:0] _resp_rdata12_T_7 = in_resp_mask1 & resp_rdata1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 22:35]
  wire [31:0] _resp_rdata12_T_8 = in_resp_mask2 & io_out_hrdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 22:108]
  wire [31:0] resp_rdata12 = _resp_rdata12_T_7 | _resp_rdata12_T_8; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 22:92]
  assign io_in_req_ready = io_out_hready & (fsm_ns != 3'h2 & fsm_cs != 3'h4 | fsm_cs == 3'h4 & s1_needSplit); // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 77:37]
  assign io_in_resp_valid = io_out_hready & (fsm_cs == 3'h1 | fsm_cs == 3'h3 | _io_in_req_ready_T_4); // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 78:29]
  assign io_in_resp_bits_err = fsm_cs == 3'h4; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 110:32]
  assign io_in_resp_bits_rdata = _io_in_resp_valid_T_1 ? resp_rdata12 : io_out_hrdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m32.scala 23:30]
  assign io_out_htrans = io_in_req_valid & _io_in_req_ready_T_2 | _s1_needSplit_T ? 2'h2 : 2'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 81:22]
  assign io_out_hsize = _s1_needSplit_T ? size2 : size1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 83:21]
  assign io_out_hwrite = io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 82:16]
  assign io_out_hprot = io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 89:15]
  assign io_out_haddr = _s1_needSplit_T ? addr2 : addr1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 80:21]
  assign io_out_hwdata = s1_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 86:16]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20]
      fsm_cs <= 3'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 36:26 38:28]
    end else if (3'h0 == fsm_cs) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20]
      if (io_in_req_valid & io_out_hready & ~herr) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 41:26]
        fsm_cs <= {{1'd0}, _fsm_ns_T_3};
      end else if (~io_out_hready & herr) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 45:28]
        fsm_cs <= 3'h4;
      end else begin
        fsm_cs <= 3'h0;
      end
    end else if (3'h1 == fsm_cs) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20]
      if (io_out_hready & _fsm_ns_T_1) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 48:26]
        fsm_cs <= {{1'd0}, _fsm_ns_T_11};
      end else if (_fsm_ns_T_5) begin
        fsm_cs <= 3'h4;
      end else begin
        fsm_cs <= 3'h1;
      end
    end else if (3'h2 == fsm_cs) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 34:20]
      if (_fsm_ns_T_9) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 54:20]
        fsm_cs <= 3'h3;
      end else begin
        fsm_cs <= _fsm_ns_T_20;
      end
    end else if (3'h3 == fsm_cs) begin
      fsm_cs <= _fsm_ns_T_29;
    end else begin
      fsm_cs <= _GEN_4;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 22:67]
      s1_needSplit <= 1'h0;
    end else begin
      s1_needSplit <= fsm_cs == 3'h2 & fsm_ns == 3'h4;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      s1_wdata <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (io_out_hready) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      s1_wdata <= io_in_req_bits_wdata;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      in_resp_mask1 <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_in_resp_mask1_T_8) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      in_resp_mask1 <= _in_resp_mask1_T_6;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      in_resp_mask2 <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_in_resp_mask1_T_8) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      in_resp_mask2 <= _in_resp_mask2_T_6;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      resp_rdata1 <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
    end else if (_in_resp_mask1_T_8) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 131:54]
      resp_rdata1 <= io_out_hrdata;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  fsm_cs = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  s1_needSplit = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_wdata = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  in_resp_mask1 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  in_resp_mask2 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  resp_rdata1 = _RAND_5[31:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    fsm_cs = 3'h0;
  end
  if (~reset) begin
    s1_needSplit = 1'h0;
  end
  if (~reset) begin
    s1_wdata = 32'h0;
  end
  if (_fsm_cs_T_2) begin
    in_resp_mask1 = 32'h0;
  end
  if (_fsm_cs_T_2) begin
    in_resp_mask2 = 32'h0;
  end
  if (_fsm_cs_T_2) begin
    resp_rdata1 = 32'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2ahblIbus50mFF(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input         io_out_hready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output [1:0]  io_out_htrans, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output [2:0]  io_out_hsize, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output        io_out_hwrite, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output [1:0]  io_out_hprot, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output [31:0] io_out_haddr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output [31:0] io_out_hwdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input  [1:0]  io_out_hresp, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  input  [31:0] io_out_hrdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
  output        io_exclusive_o // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 8:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  sbus2sbus50m_clock; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_reset; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [3:0] sbus2sbus50m_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [1:0] sbus2sbus50m_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [3:0] sbus2sbus50m_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [1:0] sbus2sbus50m_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
  wire  sbus2ahbl50m_clock; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_reset; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [3:0] sbus2ahbl50m_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_in_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_out_hready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_out_htrans; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [2:0] sbus2ahbl50m_io_out_hsize; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_out_hprot; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_out_haddr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_out_hresp; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_out_hrdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  reg [2:0] count; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 12:52]
  wire  inc = io_in_req_ready & io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire [2:0] _GEN_0 = {{2'd0}, inc}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 38:23]
  wire [2:0] _count_ns_T_1 = count + _GEN_0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 38:23]
  wire [2:0] _GEN_1 = {{2'd0}, io_in_resp_valid}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 38:29]
  wire [2:0] count_ns = _count_ns_T_1 - _GEN_1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 38:29]
  InnerB2InnerIbus50mFF sbus2sbus50m ( // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 20:30]
    .clock(sbus2sbus50m_clock),
    .reset(sbus2sbus50m_reset),
    .io_in_req_ready(sbus2sbus50m_io_in_req_ready),
    .io_in_req_valid(sbus2sbus50m_io_in_req_valid),
    .io_in_req_bits_addr(sbus2sbus50m_io_in_req_bits_addr),
    .io_in_req_bits_be(sbus2sbus50m_io_in_req_bits_be),
    .io_in_req_bits_hport(sbus2sbus50m_io_in_req_bits_hport),
    .io_in_resp_valid(sbus2sbus50m_io_in_resp_valid),
    .io_in_resp_bits_err(sbus2sbus50m_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(sbus2sbus50m_io_in_resp_bits_rdata),
    .io_out_req_ready(sbus2sbus50m_io_out_req_ready),
    .io_out_req_valid(sbus2sbus50m_io_out_req_valid),
    .io_out_req_bits_addr(sbus2sbus50m_io_out_req_bits_addr),
    .io_out_req_bits_we(sbus2sbus50m_io_out_req_bits_we),
    .io_out_req_bits_be(sbus2sbus50m_io_out_req_bits_be),
    .io_out_req_bits_hport(sbus2sbus50m_io_out_req_bits_hport),
    .io_out_resp_valid(sbus2sbus50m_io_out_resp_valid),
    .io_out_resp_bits_err(sbus2sbus50m_io_out_resp_bits_err),
    .io_out_resp_bits_rdata(sbus2sbus50m_io_out_resp_bits_rdata)
  );
  InnerB2ahbl50m32 sbus2ahbl50m ( // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
    .clock(sbus2ahbl50m_clock),
    .reset(sbus2ahbl50m_reset),
    .io_in_req_ready(sbus2ahbl50m_io_in_req_ready),
    .io_in_req_valid(sbus2ahbl50m_io_in_req_valid),
    .io_in_req_bits_addr(sbus2ahbl50m_io_in_req_bits_addr),
    .io_in_req_bits_we(sbus2ahbl50m_io_in_req_bits_we),
    .io_in_req_bits_be(sbus2ahbl50m_io_in_req_bits_be),
    .io_in_req_bits_wdata(sbus2ahbl50m_io_in_req_bits_wdata),
    .io_in_req_bits_hport(sbus2ahbl50m_io_in_req_bits_hport),
    .io_in_resp_valid(sbus2ahbl50m_io_in_resp_valid),
    .io_in_resp_bits_err(sbus2ahbl50m_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(sbus2ahbl50m_io_in_resp_bits_rdata),
    .io_out_hready(sbus2ahbl50m_io_out_hready),
    .io_out_htrans(sbus2ahbl50m_io_out_htrans),
    .io_out_hsize(sbus2ahbl50m_io_out_hsize),
    .io_out_hwrite(sbus2ahbl50m_io_out_hwrite),
    .io_out_hprot(sbus2ahbl50m_io_out_hprot),
    .io_out_haddr(sbus2ahbl50m_io_out_haddr),
    .io_out_hwdata(sbus2ahbl50m_io_out_hwdata),
    .io_out_hresp(sbus2ahbl50m_io_out_hresp),
    .io_out_hrdata(sbus2ahbl50m_io_out_hrdata)
  );
  assign io_in_req_ready = sbus2sbus50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign io_in_resp_valid = sbus2sbus50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign io_in_resp_bits_err = sbus2sbus50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign io_in_resp_bits_rdata = sbus2sbus50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign io_out_htrans = sbus2ahbl50m_io_out_htrans; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign io_out_hsize = sbus2ahbl50m_io_out_hsize; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign io_out_hwrite = sbus2ahbl50m_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign io_out_hprot = sbus2ahbl50m_io_out_hprot; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign io_out_haddr = sbus2ahbl50m_io_out_haddr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign io_out_hwdata = sbus2ahbl50m_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign io_exclusive_o = |count_ns; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 40:32]
  assign sbus2sbus50m_clock = clock;
  assign sbus2sbus50m_reset = reset;
  assign sbus2sbus50m_io_in_req_valid = io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_addr = io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_be = io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_hport = io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_out_req_ready = sbus2ahbl50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2sbus50m_io_out_resp_valid = sbus2ahbl50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2sbus50m_io_out_resp_bits_err = sbus2ahbl50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2sbus50m_io_out_resp_bits_rdata = sbus2ahbl50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_clock = clock;
  assign sbus2ahbl50m_reset = reset;
  assign sbus2ahbl50m_io_in_req_valid = sbus2sbus50m_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_addr = sbus2sbus50m_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_we = sbus2sbus50m_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_be = sbus2sbus50m_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_wdata = 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_hport = sbus2sbus50m_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_out_hready = io_out_hready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign sbus2ahbl50m_io_out_hresp = io_out_hresp; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  assign sbus2ahbl50m_io_out_hrdata = io_out_hrdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 41:9]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/Ibus/InnerB2ahblIbus50mFF.scala 38:29]
      count <= 3'h0;
    end else begin
      count <= _count_ns_T_1 - _GEN_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  count = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    count = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2InnerBDbus50m32direct(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input         io_in_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input  [31:0] io_in_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input         io_out_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output        io_out_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output [31:0] io_out_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output        io_out_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output [3:0]  io_out_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output [31:0] io_out_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  output [1:0]  io_out_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input         io_out_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input         io_out_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
  input  [31:0] io_out_resp_bits_rdata // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 8:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  _fsm_cs_T_2 = ~reset; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 12:31]
  reg  valid_q; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [31:0] data_q_addr; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  data_q_we; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [3:0] data_q_be; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [31:0] data_q_wdata; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [1:0] data_q_hport; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  out_hs = valid_q & io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 27:32]
  wire  _GEN_0 = out_hs ? 1'h0 : valid_q; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 36:17 37:17 src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  _T = io_in_req_ready & io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  assign io_in_req_ready = (~valid_q | io_out_req_ready) & io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 28:52]
  assign io_in_resp_valid = io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 55:19]
  assign io_in_resp_bits_err = io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 56:22]
  assign io_in_resp_bits_rdata = io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 68:48]
  assign io_out_req_valid = valid_q; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 15:23 29:23]
  assign io_out_req_bits_addr = data_q_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 15:23 30:23]
  assign io_out_req_bits_we = data_q_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 15:23 31:23]
  assign io_out_req_bits_be = data_q_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 15:23 32:23]
  assign io_out_req_bits_wdata = data_q_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 15:23 59:24]
  assign io_out_req_bits_hport = data_q_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 15:23 34:23]
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 39:41]
      valid_q <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 40:17]
    end else begin
      valid_q <= _T | _GEN_0;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 39:41]
      data_q_addr <= 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 41:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_addr <= io_in_req_bits_addr;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 39:41]
      data_q_we <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 41:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_we <= io_in_req_bits_we;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 39:41]
      data_q_be <= 4'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 41:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_be <= io_in_req_bits_be;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 39:41]
      data_q_wdata <= 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 41:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_wdata <= io_in_req_bits_wdata;
    end
  end
  always @(posedge clock or posedge _fsm_cs_T_2) begin
    if (_fsm_cs_T_2) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 39:41]
      data_q_hport <= 2'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2InnerBDbus50m32direct.scala 41:16]
    end else if (_T) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_q_hport <= io_in_req_bits_hport;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  valid_q = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_q_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  data_q_we = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_q_be = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  data_q_wdata = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  data_q_hport = _RAND_5[1:0];
`endif // RANDOMIZE_REG_INIT
  if (_fsm_cs_T_2) begin
    valid_q = 1'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_addr = 32'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_we = 1'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_be = 4'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_wdata = 32'h0;
  end
  if (_fsm_cs_T_2) begin
    data_q_hport = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2InnerDbus50mFF(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input         io_in_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input  [31:0] io_in_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input         io_out_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output        io_out_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output [31:0] io_out_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output        io_out_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output [3:0]  io_out_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output [31:0] io_out_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  output [1:0]  io_out_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input         io_out_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input         io_out_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
  input  [31:0] io_out_resp_bits_rdata // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 46:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  mod_clock; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_reset; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [31:0] mod_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [3:0] mod_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [31:0] mod_io_in_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [1:0] mod_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [31:0] mod_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [31:0] mod_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [3:0] mod_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [31:0] mod_io_out_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [1:0] mod_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire  mod_io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  wire [31:0] mod_io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
  reg  valid; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [31:0] data_addr; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg  data_we; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [3:0] data_be; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [31:0] data_wdata; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  reg [1:0] data_hport; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  _T = mod_io_in_req_ready & mod_io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire  _GEN_0 = _T ? 1'h0 : valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 60:33 61:15 src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
  wire  _T_1 = io_in_req_ready & io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  InnerB2InnerBDbus50m32direct mod ( // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 55:21]
    .clock(mod_clock),
    .reset(mod_reset),
    .io_in_req_ready(mod_io_in_req_ready),
    .io_in_req_valid(mod_io_in_req_valid),
    .io_in_req_bits_addr(mod_io_in_req_bits_addr),
    .io_in_req_bits_we(mod_io_in_req_bits_we),
    .io_in_req_bits_be(mod_io_in_req_bits_be),
    .io_in_req_bits_wdata(mod_io_in_req_bits_wdata),
    .io_in_req_bits_hport(mod_io_in_req_bits_hport),
    .io_in_resp_valid(mod_io_in_resp_valid),
    .io_in_resp_bits_err(mod_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(mod_io_in_resp_bits_rdata),
    .io_out_req_ready(mod_io_out_req_ready),
    .io_out_req_valid(mod_io_out_req_valid),
    .io_out_req_bits_addr(mod_io_out_req_bits_addr),
    .io_out_req_bits_we(mod_io_out_req_bits_we),
    .io_out_req_bits_be(mod_io_out_req_bits_be),
    .io_out_req_bits_wdata(mod_io_out_req_bits_wdata),
    .io_out_req_bits_hport(mod_io_out_req_bits_hport),
    .io_out_resp_valid(mod_io_out_resp_valid),
    .io_out_resp_bits_err(mod_io_out_resp_bits_err),
    .io_out_resp_bits_rdata(mod_io_out_resp_bits_rdata)
  );
  assign io_in_req_ready = ~valid | mod_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 68:31]
  assign io_in_resp_valid = mod_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 73:16]
  assign io_in_resp_bits_err = mod_io_in_resp_bits_err & mod_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 74:52]
  assign io_in_resp_bits_rdata = mod_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 73:16]
  assign io_out_req_valid = mod_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign io_out_req_bits_addr = mod_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign io_out_req_bits_we = mod_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign io_out_req_bits_be = mod_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign io_out_req_bits_wdata = mod_io_out_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign io_out_req_bits_hport = mod_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign mod_clock = clock;
  assign mod_reset = reset;
  assign mod_io_in_req_valid = valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 71:25]
  assign mod_io_in_req_bits_addr = data_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 70:24]
  assign mod_io_in_req_bits_we = data_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 70:24]
  assign mod_io_in_req_bits_be = data_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 70:24]
  assign mod_io_in_req_bits_wdata = data_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 70:24]
  assign mod_io_in_req_bits_hport = data_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 70:24]
  assign mod_io_out_req_ready = io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign mod_io_out_resp_valid = io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign mod_io_out_resp_bits_err = io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  assign mod_io_out_resp_bits_rdata = io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 79:12]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 63:27]
      valid <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 64:15]
    end else begin
      valid <= _T_1 | _GEN_0;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 63:27]
      data_addr <= 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 65:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_addr <= io_in_req_bits_addr;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 63:27]
      data_we <= 1'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 65:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_we <= io_in_req_bits_we;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 63:27]
      data_be <= 4'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 65:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_be <= io_in_req_bits_be;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 63:27]
      data_wdata <= 32'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 65:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_wdata <= io_in_req_bits_wdata;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 63:27]
      data_hport <= 2'h0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 65:14]
    end else if (_T_1) begin // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 23:52]
      data_hport <= io_in_req_bits_hport;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  data_we = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_be = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  data_wdata = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  data_hport = _RAND_5[1:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    valid = 1'h0;
  end
  if (~reset) begin
    data_addr = 32'h0;
  end
  if (~reset) begin
    data_we = 1'h0;
  end
  if (~reset) begin
    data_be = 4'h0;
  end
  if (~reset) begin
    data_wdata = 32'h0;
  end
  if (~reset) begin
    data_hport = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerB2ahblDbus50mFF(
  input         clock,
  input         reset,
  output        io_in_req_ready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input         io_in_req_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input  [31:0] io_in_req_bits_addr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input         io_in_req_bits_we, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input  [3:0]  io_in_req_bits_be, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input  [31:0] io_in_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input  [1:0]  io_in_req_bits_hport, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output        io_in_resp_valid, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output        io_in_resp_bits_err, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output [31:0] io_in_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input         io_out_hready, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output [1:0]  io_out_htrans, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output [2:0]  io_out_hsize, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output        io_out_hwrite, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output [1:0]  io_out_hprot, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output [31:0] io_out_haddr, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output [31:0] io_out_hwdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input  [1:0]  io_out_hresp, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  input  [31:0] io_out_hrdata, // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
  output        io_exclusive_o // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 8:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  sbus2sbus50m_clock; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_reset; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [3:0] sbus2sbus50m_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_in_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [1:0] sbus2sbus50m_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [3:0] sbus2sbus50m_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_out_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [1:0] sbus2sbus50m_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2sbus50m_io_out_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire [31:0] sbus2sbus50m_io_out_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
  wire  sbus2ahbl50m_clock; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_reset; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [3:0] sbus2ahbl50m_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_in_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_out_hready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_out_htrans; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [2:0] sbus2ahbl50m_io_out_hsize; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire  sbus2ahbl50m_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_out_hprot; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_out_haddr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [1:0] sbus2ahbl50m_io_out_hresp; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  wire [31:0] sbus2ahbl50m_io_out_hrdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
  reg [2:0] count; // @[src/main/scala/coreGen/core/fpu/RegAsyncReset.scala 12:52]
  wire  inc = io_in_req_ready & io_in_req_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire [2:0] _GEN_0 = {{2'd0}, inc}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 38:23]
  wire [2:0] _count_ns_T_1 = count + _GEN_0; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 38:23]
  wire [2:0] _GEN_1 = {{2'd0}, io_in_resp_valid}; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 38:29]
  wire [2:0] count_ns = _count_ns_T_1 - _GEN_1; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 38:29]
  InnerB2InnerDbus50mFF sbus2sbus50m ( // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 20:30]
    .clock(sbus2sbus50m_clock),
    .reset(sbus2sbus50m_reset),
    .io_in_req_ready(sbus2sbus50m_io_in_req_ready),
    .io_in_req_valid(sbus2sbus50m_io_in_req_valid),
    .io_in_req_bits_addr(sbus2sbus50m_io_in_req_bits_addr),
    .io_in_req_bits_we(sbus2sbus50m_io_in_req_bits_we),
    .io_in_req_bits_be(sbus2sbus50m_io_in_req_bits_be),
    .io_in_req_bits_wdata(sbus2sbus50m_io_in_req_bits_wdata),
    .io_in_req_bits_hport(sbus2sbus50m_io_in_req_bits_hport),
    .io_in_resp_valid(sbus2sbus50m_io_in_resp_valid),
    .io_in_resp_bits_err(sbus2sbus50m_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(sbus2sbus50m_io_in_resp_bits_rdata),
    .io_out_req_ready(sbus2sbus50m_io_out_req_ready),
    .io_out_req_valid(sbus2sbus50m_io_out_req_valid),
    .io_out_req_bits_addr(sbus2sbus50m_io_out_req_bits_addr),
    .io_out_req_bits_we(sbus2sbus50m_io_out_req_bits_we),
    .io_out_req_bits_be(sbus2sbus50m_io_out_req_bits_be),
    .io_out_req_bits_wdata(sbus2sbus50m_io_out_req_bits_wdata),
    .io_out_req_bits_hport(sbus2sbus50m_io_out_req_bits_hport),
    .io_out_resp_valid(sbus2sbus50m_io_out_resp_valid),
    .io_out_resp_bits_err(sbus2sbus50m_io_out_resp_bits_err),
    .io_out_resp_bits_rdata(sbus2sbus50m_io_out_resp_bits_rdata)
  );
  InnerB2ahbl50m32 sbus2ahbl50m ( // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/Sbus2ahbl50m.scala 116:15]
    .clock(sbus2ahbl50m_clock),
    .reset(sbus2ahbl50m_reset),
    .io_in_req_ready(sbus2ahbl50m_io_in_req_ready),
    .io_in_req_valid(sbus2ahbl50m_io_in_req_valid),
    .io_in_req_bits_addr(sbus2ahbl50m_io_in_req_bits_addr),
    .io_in_req_bits_we(sbus2ahbl50m_io_in_req_bits_we),
    .io_in_req_bits_be(sbus2ahbl50m_io_in_req_bits_be),
    .io_in_req_bits_wdata(sbus2ahbl50m_io_in_req_bits_wdata),
    .io_in_req_bits_hport(sbus2ahbl50m_io_in_req_bits_hport),
    .io_in_resp_valid(sbus2ahbl50m_io_in_resp_valid),
    .io_in_resp_bits_err(sbus2ahbl50m_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(sbus2ahbl50m_io_in_resp_bits_rdata),
    .io_out_hready(sbus2ahbl50m_io_out_hready),
    .io_out_htrans(sbus2ahbl50m_io_out_htrans),
    .io_out_hsize(sbus2ahbl50m_io_out_hsize),
    .io_out_hwrite(sbus2ahbl50m_io_out_hwrite),
    .io_out_hprot(sbus2ahbl50m_io_out_hprot),
    .io_out_haddr(sbus2ahbl50m_io_out_haddr),
    .io_out_hwdata(sbus2ahbl50m_io_out_hwdata),
    .io_out_hresp(sbus2ahbl50m_io_out_hresp),
    .io_out_hrdata(sbus2ahbl50m_io_out_hrdata)
  );
  assign io_in_req_ready = sbus2sbus50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign io_in_resp_valid = sbus2sbus50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign io_in_resp_bits_err = sbus2sbus50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign io_in_resp_bits_rdata = sbus2sbus50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign io_out_htrans = sbus2ahbl50m_io_out_htrans; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign io_out_hsize = sbus2ahbl50m_io_out_hsize; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign io_out_hwrite = sbus2ahbl50m_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign io_out_hprot = sbus2ahbl50m_io_out_hprot; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign io_out_haddr = sbus2ahbl50m_io_out_haddr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign io_out_hwdata = sbus2ahbl50m_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign io_exclusive_o = |count_ns; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 40:32]
  assign sbus2sbus50m_clock = clock;
  assign sbus2sbus50m_reset = reset;
  assign sbus2sbus50m_io_in_req_valid = io_in_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_addr = io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_we = io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_be = io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_wdata = io_in_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_in_req_bits_hport = io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 25:24]
  assign sbus2sbus50m_io_out_req_ready = sbus2ahbl50m_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2sbus50m_io_out_resp_valid = sbus2ahbl50m_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2sbus50m_io_out_resp_bits_err = sbus2ahbl50m_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2sbus50m_io_out_resp_bits_rdata = sbus2ahbl50m_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_clock = clock;
  assign sbus2ahbl50m_reset = reset;
  assign sbus2ahbl50m_io_in_req_valid = sbus2sbus50m_io_out_req_valid; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_addr = sbus2sbus50m_io_out_req_bits_addr; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_we = sbus2sbus50m_io_out_req_bits_we; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_be = sbus2sbus50m_io_out_req_bits_be; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_wdata = sbus2sbus50m_io_out_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_in_req_bits_hport = sbus2sbus50m_io_out_req_bits_hport; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 31:24]
  assign sbus2ahbl50m_io_out_hready = io_out_hready; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign sbus2ahbl50m_io_out_hresp = io_out_hresp; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  assign sbus2ahbl50m_io_out_hrdata = io_out_hrdata; // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 41:9]
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Sbus2Ahbl/InnerBus2ahbl/dbus/InnerB2ahblDbus50mFF.scala 38:29]
      count <= 3'h0;
    end else begin
      count <= _count_ns_T_1 - _GEN_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  count = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  if (~reset) begin
    count = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InnerBuffer(
  output        io_core_instr_req_ready, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_core_instr_req_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input  [31:0] io_core_instr_req_bits_addr, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_core_instr_resp_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_core_instr_resp_bits_err, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output [31:0] io_core_instr_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_core_data_req_ready, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_core_data_req_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input  [31:0] io_core_data_req_bits_addr, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_core_data_req_bits_we, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input  [3:0]  io_core_data_req_bits_be, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input  [31:0] io_core_data_req_bits_wdata, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_core_data_resp_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_core_data_resp_bits_err, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output [31:0] io_core_data_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_buffer_instr_req_ready, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_buffer_instr_req_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output [31:0] io_buffer_instr_req_bits_addr, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_buffer_instr_resp_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_buffer_instr_resp_bits_err, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input  [31:0] io_buffer_instr_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_buffer_data_req_ready, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_buffer_data_req_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output [31:0] io_buffer_data_req_bits_addr, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output        io_buffer_data_req_bits_we, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output [3:0]  io_buffer_data_req_bits_be, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  output [31:0] io_buffer_data_req_bits_wdata, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_buffer_data_resp_valid, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input         io_buffer_data_resp_bits_err, // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
  input  [31:0] io_buffer_data_resp_bits_rdata // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 22:16]
);
  assign io_core_instr_req_ready = io_buffer_instr_req_ready; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 26:23]
  assign io_core_instr_resp_valid = io_buffer_instr_resp_valid; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 26:23]
  assign io_core_instr_resp_bits_err = io_buffer_instr_resp_bits_err; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 26:23]
  assign io_core_instr_resp_bits_rdata = io_buffer_instr_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 26:23]
  assign io_core_data_req_ready = io_buffer_data_req_ready; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_core_data_resp_valid = io_buffer_data_resp_valid; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_core_data_resp_bits_err = io_buffer_data_resp_bits_err; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_core_data_resp_bits_rdata = io_buffer_data_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_buffer_instr_req_valid = io_core_instr_req_valid; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 26:23]
  assign io_buffer_instr_req_bits_addr = io_core_instr_req_bits_addr; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 26:23]
  assign io_buffer_data_req_valid = io_core_data_req_valid; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_buffer_data_req_bits_addr = io_core_data_req_bits_addr; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_buffer_data_req_bits_we = io_core_data_req_bits_we; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_buffer_data_req_bits_be = io_core_data_req_bits_be; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
  assign io_buffer_data_req_bits_wdata = io_core_data_req_bits_wdata; // @[src/main/scala/coreGen/bmu/InnerBuffer.scala 27:23]
endmodule
module plic_levelgatewaychisel(
  input   clk, // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 7:25]
  input   rst_n, // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 8:25]
  input   interrupt, // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 9:25]
  output  plic_valid, // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 10:25]
  input   plic_ready, // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 11:25]
  input   plic_complete // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 12:25]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  inFlight; // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 16:71]
  wire  inFlight_en = interrupt & plic_ready; // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 18:28]
  wire  _GEN_0 = inFlight_en | inFlight; // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 24:26 25:14 27:14]
  assign plic_valid = interrupt & ~inFlight; // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 19:28]
  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 22:22]
      inFlight <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plic_levelgatewaychiselchisel.scala 23:14]
    end else if (plic_complete) begin
      inFlight <= 1'h0;
    end else begin
      inFlight <= _GEN_0;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  inFlight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (~rst_n) begin
    inFlight = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module plic_max_treechisel(
  input  [31:0] irq_pend_r, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 12:22]
  input  [31:0] irq_enab_r, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 13:22]
  input  [2:0]  irq_prio_r_1, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_2, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_3, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_4, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_5, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_6, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_7, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_8, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_9, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_10, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_11, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_12, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_13, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_14, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_prio_r_15, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 14:22]
  input  [2:0]  irq_thod_r, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 15:22]
  output        irq_o, // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 16:22]
  output [3:0]  irq_id // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 17:22]
);
  wire [2:0] _irq_prio_lvl_16_T_2 = irq_pend_r[1] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_16_T_3 = irq_prio_r_1 & _irq_prio_lvl_16_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_16_T_6 = irq_enab_r[1] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_16 = _irq_prio_lvl_16_T_3 & _irq_prio_lvl_16_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_7 = 3'h0 < irq_prio_lvl_16; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_7 = irq_prio_lvl_lt_7 ? irq_prio_lvl_16 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_17_T_2 = irq_pend_r[2] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_17_T_3 = irq_prio_r_2 & _irq_prio_lvl_17_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_17_T_6 = irq_enab_r[2] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_17 = _irq_prio_lvl_17_T_3 & _irq_prio_lvl_17_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_18_T_2 = irq_pend_r[3] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_18_T_3 = irq_prio_r_3 & _irq_prio_lvl_18_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_18_T_6 = irq_enab_r[3] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_18 = _irq_prio_lvl_18_T_3 & _irq_prio_lvl_18_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_8 = irq_prio_lvl_17 < irq_prio_lvl_18; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_8 = irq_prio_lvl_lt_8 ? irq_prio_lvl_18 : irq_prio_lvl_17; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_3 = irq_prio_lvl_7 < irq_prio_lvl_8; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_3 = irq_prio_lvl_lt_3 ? irq_prio_lvl_8 : irq_prio_lvl_7; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_19_T_2 = irq_pend_r[4] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_19_T_3 = irq_prio_r_4 & _irq_prio_lvl_19_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_19_T_6 = irq_enab_r[4] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_19 = _irq_prio_lvl_19_T_3 & _irq_prio_lvl_19_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_20_T_2 = irq_pend_r[5] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_20_T_3 = irq_prio_r_5 & _irq_prio_lvl_20_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_20_T_6 = irq_enab_r[5] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_20 = _irq_prio_lvl_20_T_3 & _irq_prio_lvl_20_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_9 = irq_prio_lvl_19 < irq_prio_lvl_20; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_9 = irq_prio_lvl_lt_9 ? irq_prio_lvl_20 : irq_prio_lvl_19; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_21_T_2 = irq_pend_r[6] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_21_T_3 = irq_prio_r_6 & _irq_prio_lvl_21_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_21_T_6 = irq_enab_r[6] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_21 = _irq_prio_lvl_21_T_3 & _irq_prio_lvl_21_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_22_T_2 = irq_pend_r[7] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_22_T_3 = irq_prio_r_7 & _irq_prio_lvl_22_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_22_T_6 = irq_enab_r[7] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_22 = _irq_prio_lvl_22_T_3 & _irq_prio_lvl_22_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_10 = irq_prio_lvl_21 < irq_prio_lvl_22; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_10 = irq_prio_lvl_lt_10 ? irq_prio_lvl_22 : irq_prio_lvl_21; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_4 = irq_prio_lvl_9 < irq_prio_lvl_10; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_4 = irq_prio_lvl_lt_4 ? irq_prio_lvl_10 : irq_prio_lvl_9; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_1 = irq_prio_lvl_3 < irq_prio_lvl_4; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_1 = irq_prio_lvl_lt_1 ? irq_prio_lvl_4 : irq_prio_lvl_3; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_23_T_2 = irq_pend_r[8] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_23_T_3 = irq_prio_r_8 & _irq_prio_lvl_23_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_23_T_6 = irq_enab_r[8] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_23 = _irq_prio_lvl_23_T_3 & _irq_prio_lvl_23_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_24_T_2 = irq_pend_r[9] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_24_T_3 = irq_prio_r_9 & _irq_prio_lvl_24_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_24_T_6 = irq_enab_r[9] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_24 = _irq_prio_lvl_24_T_3 & _irq_prio_lvl_24_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_11 = irq_prio_lvl_23 < irq_prio_lvl_24; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_11 = irq_prio_lvl_lt_11 ? irq_prio_lvl_24 : irq_prio_lvl_23; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_25_T_2 = irq_pend_r[10] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_25_T_3 = irq_prio_r_10 & _irq_prio_lvl_25_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_25_T_6 = irq_enab_r[10] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_25 = _irq_prio_lvl_25_T_3 & _irq_prio_lvl_25_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_26_T_2 = irq_pend_r[11] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_26_T_3 = irq_prio_r_11 & _irq_prio_lvl_26_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_26_T_6 = irq_enab_r[11] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_26 = _irq_prio_lvl_26_T_3 & _irq_prio_lvl_26_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_12 = irq_prio_lvl_25 < irq_prio_lvl_26; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_12 = irq_prio_lvl_lt_12 ? irq_prio_lvl_26 : irq_prio_lvl_25; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_5 = irq_prio_lvl_11 < irq_prio_lvl_12; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_5 = irq_prio_lvl_lt_5 ? irq_prio_lvl_12 : irq_prio_lvl_11; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_27_T_2 = irq_pend_r[12] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_27_T_3 = irq_prio_r_12 & _irq_prio_lvl_27_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_27_T_6 = irq_enab_r[12] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_27 = _irq_prio_lvl_27_T_3 & _irq_prio_lvl_27_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_28_T_2 = irq_pend_r[13] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_28_T_3 = irq_prio_r_13 & _irq_prio_lvl_28_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_28_T_6 = irq_enab_r[13] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_28 = _irq_prio_lvl_28_T_3 & _irq_prio_lvl_28_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_13 = irq_prio_lvl_27 < irq_prio_lvl_28; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_13 = irq_prio_lvl_lt_13 ? irq_prio_lvl_28 : irq_prio_lvl_27; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [2:0] _irq_prio_lvl_29_T_2 = irq_pend_r[14] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_29_T_3 = irq_prio_r_14 & _irq_prio_lvl_29_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_29_T_6 = irq_enab_r[14] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_29 = _irq_prio_lvl_29_T_3 & _irq_prio_lvl_29_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire [2:0] _irq_prio_lvl_30_T_2 = irq_pend_r[15] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:51]
  wire [2:0] _irq_prio_lvl_30_T_3 = irq_prio_r_15 & _irq_prio_lvl_30_T_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:45]
  wire [2:0] _irq_prio_lvl_30_T_6 = irq_enab_r[15] ? 3'h7 : 3'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:90]
  wire [2:0] irq_prio_lvl_30 = _irq_prio_lvl_30_T_3 & _irq_prio_lvl_30_T_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 40:84]
  wire  irq_prio_lvl_lt_14 = irq_prio_lvl_29 < irq_prio_lvl_30; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_14 = irq_prio_lvl_lt_14 ? irq_prio_lvl_30 : irq_prio_lvl_29; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_6 = irq_prio_lvl_13 < irq_prio_lvl_14; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_6 = irq_prio_lvl_lt_6 ? irq_prio_lvl_14 : irq_prio_lvl_13; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_2 = irq_prio_lvl_5 < irq_prio_lvl_6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_2 = irq_prio_lvl_lt_2 ? irq_prio_lvl_6 : irq_prio_lvl_5; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire  irq_prio_lvl_lt_0 = irq_prio_lvl_1 < irq_prio_lvl_2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 49:49]
  wire [2:0] irq_prio_lvl_0 = irq_prio_lvl_lt_0 ? irq_prio_lvl_2 : irq_prio_lvl_1; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 50:35]
  wire [3:0] irq_id_lvl_14 = irq_prio_lvl_lt_14 ? 4'hf : 4'he; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_13 = irq_prio_lvl_lt_13 ? 4'hd : 4'hc; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_6 = irq_prio_lvl_lt_6 ? irq_id_lvl_14 : irq_id_lvl_13; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_12 = irq_prio_lvl_lt_12 ? 4'hb : 4'ha; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_11 = irq_prio_lvl_lt_11 ? 4'h9 : 4'h8; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_5 = irq_prio_lvl_lt_5 ? irq_id_lvl_12 : irq_id_lvl_11; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_2 = irq_prio_lvl_lt_2 ? irq_id_lvl_6 : irq_id_lvl_5; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_10 = irq_prio_lvl_lt_10 ? 4'h7 : 4'h6; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_9 = irq_prio_lvl_lt_9 ? 4'h5 : 4'h4; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_4 = irq_prio_lvl_lt_4 ? irq_id_lvl_10 : irq_id_lvl_9; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_8 = irq_prio_lvl_lt_8 ? 4'h3 : 4'h2; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_7 = irq_prio_lvl_lt_7 ? 4'h1 : 4'h0; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_3 = irq_prio_lvl_lt_3 ? irq_id_lvl_8 : irq_id_lvl_7; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire [3:0] irq_id_lvl_1 = irq_prio_lvl_lt_1 ? irq_id_lvl_4 : irq_id_lvl_3; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
  wire  irq_ip_lvl_30 = irq_pend_r[15] & irq_enab_r[15]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_29 = irq_pend_r[14] & irq_enab_r[14]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_14 = irq_prio_lvl_lt_14 ? irq_ip_lvl_30 : irq_ip_lvl_29; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_28 = irq_pend_r[13] & irq_enab_r[13]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_27 = irq_pend_r[12] & irq_enab_r[12]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_13 = irq_prio_lvl_lt_13 ? irq_ip_lvl_28 : irq_ip_lvl_27; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_6 = irq_prio_lvl_lt_6 ? irq_ip_lvl_14 : irq_ip_lvl_13; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_26 = irq_pend_r[11] & irq_enab_r[11]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_25 = irq_pend_r[10] & irq_enab_r[10]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_12 = irq_prio_lvl_lt_12 ? irq_ip_lvl_26 : irq_ip_lvl_25; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_24 = irq_pend_r[9] & irq_enab_r[9]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_23 = irq_pend_r[8] & irq_enab_r[8]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_11 = irq_prio_lvl_lt_11 ? irq_ip_lvl_24 : irq_ip_lvl_23; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_5 = irq_prio_lvl_lt_5 ? irq_ip_lvl_12 : irq_ip_lvl_11; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_2 = irq_prio_lvl_lt_2 ? irq_ip_lvl_6 : irq_ip_lvl_5; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_22 = irq_pend_r[7] & irq_enab_r[7]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_21 = irq_pend_r[6] & irq_enab_r[6]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_10 = irq_prio_lvl_lt_10 ? irq_ip_lvl_22 : irq_ip_lvl_21; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_20 = irq_pend_r[5] & irq_enab_r[5]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_19 = irq_pend_r[4] & irq_enab_r[4]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_9 = irq_prio_lvl_lt_9 ? irq_ip_lvl_20 : irq_ip_lvl_19; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_4 = irq_prio_lvl_lt_4 ? irq_ip_lvl_10 : irq_ip_lvl_9; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_18 = irq_pend_r[3] & irq_enab_r[3]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_17 = irq_pend_r[2] & irq_enab_r[2]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_8 = irq_prio_lvl_lt_8 ? irq_ip_lvl_18 : irq_ip_lvl_17; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_16 = irq_pend_r[1] & irq_enab_r[1]; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 42:45]
  wire  irq_ip_lvl_7 = irq_prio_lvl_lt_7 & irq_ip_lvl_16; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_3 = irq_prio_lvl_lt_3 ? irq_ip_lvl_8 : irq_ip_lvl_7; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_1 = irq_prio_lvl_lt_1 ? irq_ip_lvl_4 : irq_ip_lvl_3; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  wire  irq_ip_lvl_0 = irq_prio_lvl_lt_0 ? irq_ip_lvl_2 : irq_ip_lvl_1; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 52:35]
  assign irq_o = irq_ip_lvl_0 & irq_prio_lvl_0 > irq_thod_r; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 58:26]
  assign irq_id = irq_prio_lvl_lt_0 ? irq_id_lvl_2 : irq_id_lvl_1; // @[src/main/scala/coreGen/bmu/plic/plic_max_treechisel.scala 51:35]
endmodule
module plicchisel(
  input         clk, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 16:29]
  input         rst_n, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 17:29]
  input         plic_req_i, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 19:29]
  input  [31:0] plic_addr_i, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 21:29]
  input         plic_we_i, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 22:29]
  input  [31:0] plic_wdata_i, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 23:29]
  output        plic_rvalid_o, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 25:29]
  output [31:0] plic_rdata_o, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 26:29]
  input  [15:0] plic_irq_i, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 29:29]
  output        plic_irq_o_0, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 30:29]
  output [7:0]  plicid_id, // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 31:29]
  input         plicClr_en // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 32:29]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
`endif // RANDOMIZE_REG_INIT
  wire  u_LevelGateway_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_1_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_1_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_1_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_1_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_1_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_1_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_2_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_2_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_2_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_2_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_2_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_2_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_3_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_3_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_3_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_3_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_3_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_3_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_4_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_4_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_4_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_4_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_4_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_4_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_5_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_5_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_5_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_5_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_5_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_5_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_6_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_6_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_6_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_6_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_6_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_6_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_7_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_7_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_7_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_7_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_7_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_7_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_8_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_8_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_8_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_8_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_8_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_8_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_9_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_9_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_9_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_9_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_9_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_9_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_10_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_10_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_10_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_10_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_10_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_10_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_11_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_11_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_11_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_11_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_11_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_11_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_12_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_12_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_12_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_12_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_12_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_12_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_13_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_13_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_13_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_13_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_13_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_13_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_14_clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_14_rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_14_interrupt; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_14_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_14_plic_ready; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire  u_LevelGateway_14_plic_complete; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
  wire [31:0] u_plic_max_tree_irq_pend_r; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [31:0] u_plic_max_tree_irq_enab_r; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_prio_r_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [2:0] u_plic_max_tree_irq_thod_r; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire  u_plic_max_tree_irq_o; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [3:0] u_plic_max_tree_irq_id; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
  wire [23:0] plic_addr = plic_addr_i[23:0]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 36:29]
  wire  plic_we = plic_req_i & plic_we_i; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 41:27]
  wire  plic_rd = plic_req_i & ~plic_we_i; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 42:27]
  wire  _plic_irq_i_q_T_1 = ~rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 44:56]
  reg [15:0] plic_irq_i_q; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 44:77]
  reg  plic_irq_o_pre_q_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 57:81]
  reg [3:0] plic_irq_id_q_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 60:81]
  reg  irq_pend_q_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg  irq_pend_q_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
  reg [2:0] irq_thod_q_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 75:75]
  reg [2:0] irq_prio_q_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [2:0] irq_prio_q_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
  reg [31:0] irq_enab_context_0_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 87:81]
  wire  irq_i_gated_valid_1 = u_LevelGateway_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_1 = ~irq_pend_q_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_1 = irq_i_gated_valid_1 & irq_i_gated_ready_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  sel_clam_0 = plic_addr == 24'h200004; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 244:30]
  wire [31:0] rsp_rdata_id = sel_clam_0 ? {{28'd0}, plic_irq_id_q_0} : 32'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 302:16 304:23 305:20]
  wire  _claim_irq_1_T_2 = |sel_clam_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:95]
  wire  claim_irq_1 = rsp_rdata_id[3:0] == 4'h1 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_1 = plicClr_en ? 1'h0 : claim_irq_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_1 = irq_i_gated_hsked_1 | irq_pend_clr_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_1 = irq_i_gated_hsked_1 | ~irq_pend_clr_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [3:0] _sel_prio_1_T = 1'h1 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_52 = {{20'd0}, _sel_prio_1_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_1 = plic_addr == _GEN_52; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_1 = plic_we & sel_prio_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire [2:0] irq_prio_nxt_1 = plic_wdata_i[2:0]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 171:36]
  wire  irq_i_gated_valid_2 = u_LevelGateway_1_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_2 = ~irq_pend_q_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_2 = irq_i_gated_valid_2 & irq_i_gated_ready_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_2 = rsp_rdata_id[3:0] == 4'h2 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_2 = plicClr_en ? 1'h0 : claim_irq_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_2 = irq_i_gated_hsked_2 | irq_pend_clr_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_2 = irq_i_gated_hsked_2 | ~irq_pend_clr_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [4:0] _sel_prio_2_T = 2'h2 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_53 = {{19'd0}, _sel_prio_2_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_2 = plic_addr == _GEN_53; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_2 = plic_we & sel_prio_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_3 = u_LevelGateway_2_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_3 = ~irq_pend_q_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_3 = irq_i_gated_valid_3 & irq_i_gated_ready_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_3 = rsp_rdata_id[3:0] == 4'h3 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_3 = plicClr_en ? 1'h0 : claim_irq_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_3 = irq_i_gated_hsked_3 | irq_pend_clr_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_3 = irq_i_gated_hsked_3 | ~irq_pend_clr_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [4:0] _sel_prio_3_T = 2'h3 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_54 = {{19'd0}, _sel_prio_3_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_3 = plic_addr == _GEN_54; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_3 = plic_we & sel_prio_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_4 = u_LevelGateway_3_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_4 = ~irq_pend_q_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_4 = irq_i_gated_valid_4 & irq_i_gated_ready_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_4 = rsp_rdata_id[3:0] == 4'h4 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_4 = plicClr_en ? 1'h0 : claim_irq_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_4 = irq_i_gated_hsked_4 | irq_pend_clr_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_4 = irq_i_gated_hsked_4 | ~irq_pend_clr_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [5:0] _sel_prio_4_T = 3'h4 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_55 = {{18'd0}, _sel_prio_4_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_4 = plic_addr == _GEN_55; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_4 = plic_we & sel_prio_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_5 = u_LevelGateway_4_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_5 = ~irq_pend_q_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_5 = irq_i_gated_valid_5 & irq_i_gated_ready_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_5 = rsp_rdata_id[3:0] == 4'h5 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_5 = plicClr_en ? 1'h0 : claim_irq_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_5 = irq_i_gated_hsked_5 | irq_pend_clr_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_5 = irq_i_gated_hsked_5 | ~irq_pend_clr_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [5:0] _sel_prio_5_T = 3'h5 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_56 = {{18'd0}, _sel_prio_5_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_5 = plic_addr == _GEN_56; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_5 = plic_we & sel_prio_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_6 = u_LevelGateway_5_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_6 = ~irq_pend_q_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_6 = irq_i_gated_valid_6 & irq_i_gated_ready_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_6 = rsp_rdata_id[3:0] == 4'h6 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_6 = plicClr_en ? 1'h0 : claim_irq_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_6 = irq_i_gated_hsked_6 | irq_pend_clr_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_6 = irq_i_gated_hsked_6 | ~irq_pend_clr_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [5:0] _sel_prio_6_T = 3'h6 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_57 = {{18'd0}, _sel_prio_6_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_6 = plic_addr == _GEN_57; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_6 = plic_we & sel_prio_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_7 = u_LevelGateway_6_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_7 = ~irq_pend_q_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_7 = irq_i_gated_valid_7 & irq_i_gated_ready_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_7 = rsp_rdata_id[3:0] == 4'h7 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_7 = plicClr_en ? 1'h0 : claim_irq_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_7 = irq_i_gated_hsked_7 | irq_pend_clr_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_7 = irq_i_gated_hsked_7 | ~irq_pend_clr_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [5:0] _sel_prio_7_T = 3'h7 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_58 = {{18'd0}, _sel_prio_7_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_7 = plic_addr == _GEN_58; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_7 = plic_we & sel_prio_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_8 = u_LevelGateway_7_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_8 = ~irq_pend_q_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_8 = irq_i_gated_valid_8 & irq_i_gated_ready_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_8 = rsp_rdata_id[3:0] == 4'h8 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_8 = plicClr_en ? 1'h0 : claim_irq_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_8 = irq_i_gated_hsked_8 | irq_pend_clr_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_8 = irq_i_gated_hsked_8 | ~irq_pend_clr_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_8_T = 4'h8 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_59 = {{17'd0}, _sel_prio_8_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_8 = plic_addr == _GEN_59; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_8 = plic_we & sel_prio_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_9 = u_LevelGateway_8_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_9 = ~irq_pend_q_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_9 = irq_i_gated_valid_9 & irq_i_gated_ready_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_9 = rsp_rdata_id[3:0] == 4'h9 & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_9 = plicClr_en ? 1'h0 : claim_irq_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_9 = irq_i_gated_hsked_9 | irq_pend_clr_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_9 = irq_i_gated_hsked_9 | ~irq_pend_clr_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_9_T = 4'h9 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_60 = {{17'd0}, _sel_prio_9_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_9 = plic_addr == _GEN_60; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_9 = plic_we & sel_prio_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_10 = u_LevelGateway_9_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_10 = ~irq_pend_q_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_10 = irq_i_gated_valid_10 & irq_i_gated_ready_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_10 = rsp_rdata_id[3:0] == 4'ha & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_10 = plicClr_en ? 1'h0 : claim_irq_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_10 = irq_i_gated_hsked_10 | irq_pend_clr_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_10 = irq_i_gated_hsked_10 | ~irq_pend_clr_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_10_T = 4'ha * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_61 = {{17'd0}, _sel_prio_10_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_10 = plic_addr == _GEN_61; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_10 = plic_we & sel_prio_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_11 = u_LevelGateway_10_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_11 = ~irq_pend_q_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_11 = irq_i_gated_valid_11 & irq_i_gated_ready_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_11 = rsp_rdata_id[3:0] == 4'hb & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_11 = plicClr_en ? 1'h0 : claim_irq_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_11 = irq_i_gated_hsked_11 | irq_pend_clr_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_11 = irq_i_gated_hsked_11 | ~irq_pend_clr_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_11_T = 4'hb * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_62 = {{17'd0}, _sel_prio_11_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_11 = plic_addr == _GEN_62; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_11 = plic_we & sel_prio_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_12 = u_LevelGateway_11_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_12 = ~irq_pend_q_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_12 = irq_i_gated_valid_12 & irq_i_gated_ready_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_12 = rsp_rdata_id[3:0] == 4'hc & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_12 = plicClr_en ? 1'h0 : claim_irq_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_12 = irq_i_gated_hsked_12 | irq_pend_clr_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_12 = irq_i_gated_hsked_12 | ~irq_pend_clr_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_12_T = 4'hc * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_63 = {{17'd0}, _sel_prio_12_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_12 = plic_addr == _GEN_63; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_12 = plic_we & sel_prio_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_13 = u_LevelGateway_12_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_13 = ~irq_pend_q_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_13 = irq_i_gated_valid_13 & irq_i_gated_ready_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_13 = rsp_rdata_id[3:0] == 4'hd & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_13 = plicClr_en ? 1'h0 : claim_irq_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_13 = irq_i_gated_hsked_13 | irq_pend_clr_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_13 = irq_i_gated_hsked_13 | ~irq_pend_clr_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_13_T = 4'hd * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_64 = {{17'd0}, _sel_prio_13_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_13 = plic_addr == _GEN_64; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_13 = plic_we & sel_prio_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_14 = u_LevelGateway_13_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_14 = ~irq_pend_q_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_14 = irq_i_gated_valid_14 & irq_i_gated_ready_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_14 = rsp_rdata_id[3:0] == 4'he & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_14 = plicClr_en ? 1'h0 : claim_irq_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_14 = irq_i_gated_hsked_14 | irq_pend_clr_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_14 = irq_i_gated_hsked_14 | ~irq_pend_clr_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_14_T = 4'he * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_65 = {{17'd0}, _sel_prio_14_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_14 = plic_addr == _GEN_65; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_14 = plic_we & sel_prio_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire  irq_i_gated_valid_15 = u_LevelGateway_14_plic_valid; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 46:33 140:34]
  wire  irq_i_gated_ready_15 = ~irq_pend_q_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  wire  irq_i_gated_hsked_15 = irq_i_gated_valid_15 & irq_i_gated_ready_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 145:50]
  wire  claim_irq_15 = rsp_rdata_id[3:0] == 4'hf & |sel_clam_0 & plic_rd; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 336:99]
  wire  irq_pend_clr_15 = plicClr_en ? 1'h0 : claim_irq_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 158:29]
  wire  irq_pend_ena_15 = irq_i_gated_hsked_15 | irq_pend_clr_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 163:41]
  wire  irq_pend_nxt_15 = irq_i_gated_hsked_15 | ~irq_pend_clr_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 164:41]
  wire [6:0] _sel_prio_15_T = 4'hf * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:39]
  wire [23:0] _GEN_66 = {{17'd0}, _sel_prio_15_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  sel_prio_15 = plic_addr == _GEN_66; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 229:30]
  wire  irq_prio_ena_15 = plic_we & sel_prio_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 170:32]
  wire [31:0] irq_enab_nxt_0 = {plic_wdata_i[31:1],1'h0}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 183:29]
  wire [3:0] _sel_enab_0_0_T = 1'h0 * 3'h4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:46]
  wire [23:0] _GEN_67 = {{20'd0}, _sel_enab_0_0_T}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:53]
  wire [23:0] _sel_enab_0_0_T_2 = _GEN_67 + 24'h2000; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:53]
  wire [7:0] _sel_enab_0_0_T_3 = 1'h0 * 7'h7c; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:78]
  wire [23:0] _GEN_68 = {{16'd0}, _sel_enab_0_0_T_3}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:71]
  wire [23:0] _sel_enab_0_0_T_5 = _sel_enab_0_0_T_2 + _GEN_68; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:71]
  wire  sel_enab_0_0 = plic_addr == _sel_enab_0_0_T_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 238:36]
  wire  irq_enab_ena_0_0 = sel_enab_0_0 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 197:44]
  wire  sel_thod_0 = plic_addr == 24'h200000; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 243:30]
  wire  irq_thod_ena_0 = plic_we & sel_thod_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 204:32]
  wire [7:0] u_plic_max_tree_irq_pend_r_lo_lo = {irq_pend_q_7,irq_pend_q_6,irq_pend_q_5,irq_pend_q_4,irq_pend_q_3,
    irq_pend_q_2,irq_pend_q_1,1'h0}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 220:46]
  wire [15:0] u_plic_max_tree_irq_pend_r_lo = {irq_pend_q_15,irq_pend_q_14,irq_pend_q_13,irq_pend_q_12,irq_pend_q_11,
    irq_pend_q_10,irq_pend_q_9,irq_pend_q_8,u_plic_max_tree_irq_pend_r_lo_lo}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 220:46]
  wire [31:0] _u_plic_max_tree_irq_pend_r_T = {16'h0,irq_pend_q_15,irq_pend_q_14,irq_pend_q_13,irq_pend_q_12,
    irq_pend_q_11,irq_pend_q_10,irq_pend_q_9,irq_pend_q_8,u_plic_max_tree_irq_pend_r_lo_lo}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 220:46]
  wire [23:0] _sel_pend_0_T_2 = _GEN_67 + 24'h1000; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 233:48]
  wire  sel_pend_0 = plic_addr == _sel_pend_0_T_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 233:31]
  wire [31:0] _GEN_33 = sel_prio_1 ? {{29'd0}, irq_prio_q_1} : 32'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_34 = sel_prio_2 ? {{29'd0}, irq_prio_q_2} : _GEN_33; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_35 = sel_prio_3 ? {{29'd0}, irq_prio_q_3} : _GEN_34; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_36 = sel_prio_4 ? {{29'd0}, irq_prio_q_4} : _GEN_35; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_37 = sel_prio_5 ? {{29'd0}, irq_prio_q_5} : _GEN_36; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_38 = sel_prio_6 ? {{29'd0}, irq_prio_q_6} : _GEN_37; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_39 = sel_prio_7 ? {{29'd0}, irq_prio_q_7} : _GEN_38; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_40 = sel_prio_8 ? {{29'd0}, irq_prio_q_8} : _GEN_39; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_41 = sel_prio_9 ? {{29'd0}, irq_prio_q_9} : _GEN_40; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_42 = sel_prio_10 ? {{29'd0}, irq_prio_q_10} : _GEN_41; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_43 = sel_prio_11 ? {{29'd0}, irq_prio_q_11} : _GEN_42; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_44 = sel_prio_12 ? {{29'd0}, irq_prio_q_12} : _GEN_43; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_45 = sel_prio_13 ? {{29'd0}, irq_prio_q_13} : _GEN_44; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] _GEN_46 = sel_prio_14 ? {{29'd0}, irq_prio_q_14} : _GEN_45; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] rsp_rdata_prio = sel_prio_15 ? {{29'd0}, irq_prio_q_15} : _GEN_46; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 255:23 256:22]
  wire [31:0] rsp_rdata_pend = sel_pend_0 ? _u_plic_max_tree_irq_pend_r_T : 32'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 261:18 263:23 264:20]
  wire [31:0] rsp_rdata_thod = sel_thod_0 ? {{29'd0}, irq_thod_q_0} : 32'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 309:18 311:30 312:22]
  wire [31:0] rsp_rdata_enab = sel_enab_0_0 ? irq_enab_context_0_0 : 32'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 314:20 316:30 317:24]
  wire [31:0] _rsp_rdata_T = rsp_rdata_prio | rsp_rdata_pend; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 322:36]
  wire [31:0] _rsp_rdata_T_1 = _rsp_rdata_T | rsp_rdata_enab; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 322:53]
  wire [31:0] _rsp_rdata_T_2 = _rsp_rdata_T_1 | rsp_rdata_thod; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 322:70]
  reg [31:0] rsp_rdata_q; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 326:74]
  reg  plic_req_q; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 327:74]
  plic_levelgatewaychisel u_LevelGateway ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_clk),
    .rst_n(u_LevelGateway_rst_n),
    .interrupt(u_LevelGateway_interrupt),
    .plic_valid(u_LevelGateway_plic_valid),
    .plic_ready(u_LevelGateway_plic_ready),
    .plic_complete(u_LevelGateway_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_1 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_1_clk),
    .rst_n(u_LevelGateway_1_rst_n),
    .interrupt(u_LevelGateway_1_interrupt),
    .plic_valid(u_LevelGateway_1_plic_valid),
    .plic_ready(u_LevelGateway_1_plic_ready),
    .plic_complete(u_LevelGateway_1_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_2 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_2_clk),
    .rst_n(u_LevelGateway_2_rst_n),
    .interrupt(u_LevelGateway_2_interrupt),
    .plic_valid(u_LevelGateway_2_plic_valid),
    .plic_ready(u_LevelGateway_2_plic_ready),
    .plic_complete(u_LevelGateway_2_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_3 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_3_clk),
    .rst_n(u_LevelGateway_3_rst_n),
    .interrupt(u_LevelGateway_3_interrupt),
    .plic_valid(u_LevelGateway_3_plic_valid),
    .plic_ready(u_LevelGateway_3_plic_ready),
    .plic_complete(u_LevelGateway_3_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_4 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_4_clk),
    .rst_n(u_LevelGateway_4_rst_n),
    .interrupt(u_LevelGateway_4_interrupt),
    .plic_valid(u_LevelGateway_4_plic_valid),
    .plic_ready(u_LevelGateway_4_plic_ready),
    .plic_complete(u_LevelGateway_4_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_5 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_5_clk),
    .rst_n(u_LevelGateway_5_rst_n),
    .interrupt(u_LevelGateway_5_interrupt),
    .plic_valid(u_LevelGateway_5_plic_valid),
    .plic_ready(u_LevelGateway_5_plic_ready),
    .plic_complete(u_LevelGateway_5_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_6 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_6_clk),
    .rst_n(u_LevelGateway_6_rst_n),
    .interrupt(u_LevelGateway_6_interrupt),
    .plic_valid(u_LevelGateway_6_plic_valid),
    .plic_ready(u_LevelGateway_6_plic_ready),
    .plic_complete(u_LevelGateway_6_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_7 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_7_clk),
    .rst_n(u_LevelGateway_7_rst_n),
    .interrupt(u_LevelGateway_7_interrupt),
    .plic_valid(u_LevelGateway_7_plic_valid),
    .plic_ready(u_LevelGateway_7_plic_ready),
    .plic_complete(u_LevelGateway_7_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_8 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_8_clk),
    .rst_n(u_LevelGateway_8_rst_n),
    .interrupt(u_LevelGateway_8_interrupt),
    .plic_valid(u_LevelGateway_8_plic_valid),
    .plic_ready(u_LevelGateway_8_plic_ready),
    .plic_complete(u_LevelGateway_8_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_9 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_9_clk),
    .rst_n(u_LevelGateway_9_rst_n),
    .interrupt(u_LevelGateway_9_interrupt),
    .plic_valid(u_LevelGateway_9_plic_valid),
    .plic_ready(u_LevelGateway_9_plic_ready),
    .plic_complete(u_LevelGateway_9_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_10 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_10_clk),
    .rst_n(u_LevelGateway_10_rst_n),
    .interrupt(u_LevelGateway_10_interrupt),
    .plic_valid(u_LevelGateway_10_plic_valid),
    .plic_ready(u_LevelGateway_10_plic_ready),
    .plic_complete(u_LevelGateway_10_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_11 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_11_clk),
    .rst_n(u_LevelGateway_11_rst_n),
    .interrupt(u_LevelGateway_11_interrupt),
    .plic_valid(u_LevelGateway_11_plic_valid),
    .plic_ready(u_LevelGateway_11_plic_ready),
    .plic_complete(u_LevelGateway_11_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_12 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_12_clk),
    .rst_n(u_LevelGateway_12_rst_n),
    .interrupt(u_LevelGateway_12_interrupt),
    .plic_valid(u_LevelGateway_12_plic_valid),
    .plic_ready(u_LevelGateway_12_plic_ready),
    .plic_complete(u_LevelGateway_12_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_13 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_13_clk),
    .rst_n(u_LevelGateway_13_rst_n),
    .interrupt(u_LevelGateway_13_interrupt),
    .plic_valid(u_LevelGateway_13_plic_valid),
    .plic_ready(u_LevelGateway_13_plic_ready),
    .plic_complete(u_LevelGateway_13_plic_complete)
  );
  plic_levelgatewaychisel u_LevelGateway_14 ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 136:32]
    .clk(u_LevelGateway_14_clk),
    .rst_n(u_LevelGateway_14_rst_n),
    .interrupt(u_LevelGateway_14_interrupt),
    .plic_valid(u_LevelGateway_14_plic_valid),
    .plic_ready(u_LevelGateway_14_plic_ready),
    .plic_complete(u_LevelGateway_14_plic_complete)
  );
  plic_max_treechisel u_plic_max_tree ( // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 213:33]
    .irq_pend_r(u_plic_max_tree_irq_pend_r),
    .irq_enab_r(u_plic_max_tree_irq_enab_r),
    .irq_prio_r_1(u_plic_max_tree_irq_prio_r_1),
    .irq_prio_r_2(u_plic_max_tree_irq_prio_r_2),
    .irq_prio_r_3(u_plic_max_tree_irq_prio_r_3),
    .irq_prio_r_4(u_plic_max_tree_irq_prio_r_4),
    .irq_prio_r_5(u_plic_max_tree_irq_prio_r_5),
    .irq_prio_r_6(u_plic_max_tree_irq_prio_r_6),
    .irq_prio_r_7(u_plic_max_tree_irq_prio_r_7),
    .irq_prio_r_8(u_plic_max_tree_irq_prio_r_8),
    .irq_prio_r_9(u_plic_max_tree_irq_prio_r_9),
    .irq_prio_r_10(u_plic_max_tree_irq_prio_r_10),
    .irq_prio_r_11(u_plic_max_tree_irq_prio_r_11),
    .irq_prio_r_12(u_plic_max_tree_irq_prio_r_12),
    .irq_prio_r_13(u_plic_max_tree_irq_prio_r_13),
    .irq_prio_r_14(u_plic_max_tree_irq_prio_r_14),
    .irq_prio_r_15(u_plic_max_tree_irq_prio_r_15),
    .irq_thod_r(u_plic_max_tree_irq_thod_r),
    .irq_o(u_plic_max_tree_irq_o),
    .irq_id(u_plic_max_tree_irq_id)
  );
  assign plic_rvalid_o = plic_req_q; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 329:18]
  assign plic_rdata_o = rsp_rdata_q; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 331:18]
  assign plic_irq_o_0 = plic_irq_o_pre_q_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 103:25 88:30]
  assign plicid_id = {{4'd0}, plic_irq_id_q_0}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 110:25]
  assign u_LevelGateway_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_interrupt = plic_irq_i_q[1]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_plic_ready = ~irq_pend_q_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_plic_complete = plic_wdata_i[3:0] == 4'h1 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_1_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_1_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_1_interrupt = plic_irq_i_q[2]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_1_plic_ready = ~irq_pend_q_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_1_plic_complete = plic_wdata_i[3:0] == 4'h2 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_2_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_2_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_2_interrupt = plic_irq_i_q[3]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_2_plic_ready = ~irq_pend_q_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_2_plic_complete = plic_wdata_i[3:0] == 4'h3 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_3_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_3_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_3_interrupt = plic_irq_i_q[4]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_3_plic_ready = ~irq_pend_q_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_3_plic_complete = plic_wdata_i[3:0] == 4'h4 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_4_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_4_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_4_interrupt = plic_irq_i_q[5]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_4_plic_ready = ~irq_pend_q_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_4_plic_complete = plic_wdata_i[3:0] == 4'h5 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_5_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_5_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_5_interrupt = plic_irq_i_q[6]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_5_plic_ready = ~irq_pend_q_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_5_plic_complete = plic_wdata_i[3:0] == 4'h6 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_6_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_6_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_6_interrupt = plic_irq_i_q[7]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_6_plic_ready = ~irq_pend_q_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_6_plic_complete = plic_wdata_i[3:0] == 4'h7 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_7_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_7_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_7_interrupt = plic_irq_i_q[8]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_7_plic_ready = ~irq_pend_q_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_7_plic_complete = plic_wdata_i[3:0] == 4'h8 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_8_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_8_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_8_interrupt = plic_irq_i_q[9]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_8_plic_ready = ~irq_pend_q_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_8_plic_complete = plic_wdata_i[3:0] == 4'h9 & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_9_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_9_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_9_interrupt = plic_irq_i_q[10]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_9_plic_ready = ~irq_pend_q_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_9_plic_complete = plic_wdata_i[3:0] == 4'ha & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_10_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_10_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_10_interrupt = plic_irq_i_q[11]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_10_plic_ready = ~irq_pend_q_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_10_plic_complete = plic_wdata_i[3:0] == 4'hb & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_11_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_11_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_11_interrupt = plic_irq_i_q[12]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_11_plic_ready = ~irq_pend_q_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_11_plic_complete = plic_wdata_i[3:0] == 4'hc & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_12_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_12_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_12_interrupt = plic_irq_i_q[13]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_12_plic_ready = ~irq_pend_q_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_12_plic_complete = plic_wdata_i[3:0] == 4'hd & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_13_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_13_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_13_interrupt = plic_irq_i_q[14]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_13_plic_ready = ~irq_pend_q_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_13_plic_complete = plic_wdata_i[3:0] == 4'he & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_LevelGateway_14_clk = clk; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 137:34]
  assign u_LevelGateway_14_rst_n = rst_n; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 138:34]
  assign u_LevelGateway_14_interrupt = plic_irq_i_q[15]; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 139:49]
  assign u_LevelGateway_14_plic_ready = ~irq_pend_q_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 150:30]
  assign u_LevelGateway_14_plic_complete = plic_wdata_i[3:0] == 4'hf & _claim_irq_1_T_2 & plic_we; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 337:96]
  assign u_plic_max_tree_irq_pend_r = {16'h0,u_plic_max_tree_irq_pend_r_lo}; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 220:46]
  assign u_plic_max_tree_irq_enab_r = irq_enab_context_0_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 221:32]
  assign u_plic_max_tree_irq_prio_r_1 = irq_prio_q_1; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_2 = irq_prio_q_2; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_3 = irq_prio_q_3; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_4 = irq_prio_q_4; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_5 = irq_prio_q_5; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_6 = irq_prio_q_6; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_7 = irq_prio_q_7; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_8 = irq_prio_q_8; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_9 = irq_prio_q_9; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_10 = irq_prio_q_10; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_11 = irq_prio_q_11; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_12 = irq_prio_q_12; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_13 = irq_prio_q_13; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_14 = irq_prio_q_14; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_prio_r_15 = irq_prio_q_15; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 175:19 79:26]
  assign u_plic_max_tree_irq_thod_r = irq_thod_q_0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 210:19 74:26]
  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 44:77]
      plic_irq_i_q <= 16'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 44:77]
    end else begin
      plic_irq_i_q <= plic_irq_i; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 92:20]
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 225:32 56:32]
      plic_irq_o_pre_q_0 <= 1'h0;
    end else begin
      plic_irq_o_pre_q_0 <= u_plic_max_tree_irq_o;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 226:32 58:32]
      plic_irq_id_q_0 <= 4'h0;
    end else begin
      plic_irq_id_q_0 <= u_plic_max_tree_irq_id;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_1 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_1 <= irq_pend_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_2 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_2) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_2 <= irq_pend_nxt_2;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_3 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_3) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_3 <= irq_pend_nxt_3;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_4 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_4) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_4 <= irq_pend_nxt_4;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_5 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_5) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_5 <= irq_pend_nxt_5;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_6 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_6) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_6 <= irq_pend_nxt_6;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_7 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_7) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_7 <= irq_pend_nxt_7;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_8 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_8) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_8 <= irq_pend_nxt_8;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_9 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_9) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_9 <= irq_pend_nxt_9;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_10 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_10) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_10 <= irq_pend_nxt_10;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_11 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_11) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_11 <= irq_pend_nxt_11;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_12 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_12) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_12 <= irq_pend_nxt_12;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_13 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_13) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_13 <= irq_pend_nxt_13;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_14 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_14) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_14 <= irq_pend_nxt_14;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 165:26]
      irq_pend_q_15 <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 166:21]
    end else if (irq_pend_ena_15) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 67:81]
      irq_pend_q_15 <= irq_pend_nxt_15;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 206:26]
      irq_thod_q_0 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 207:23]
    end else if (irq_thod_ena_0) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 75:75]
      irq_thod_q_0 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_1 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_1 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_2 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_2) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_2 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_3 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_3) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_3 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_4 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_4) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_4 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_5 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_5) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_5 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_6 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_6) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_6 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_7 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_7) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_7 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_8 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_8) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_8 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_9 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_9) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_9 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_10 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_10) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_10 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_11 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_11) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_11 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_12 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_12) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_12 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_13 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_13) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_13 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_14 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_14) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_14 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 172:26]
      irq_prio_q_15 <= 3'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 173:21]
    end else if (irq_prio_ena_15) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 81:75]
      irq_prio_q_15 <= irq_prio_nxt_1;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 198:31]
      irq_enab_context_0_0 <= 32'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 199:32]
    end else if (irq_enab_ena_0_0) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 87:81]
      irq_enab_context_0_0 <= irq_enab_nxt_0;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 322:87]
      rsp_rdata_q <= 32'h0;
    end else begin
      rsp_rdata_q <= _rsp_rdata_T_2 | rsp_rdata_id;
    end
  end
  always @(posedge clk or posedge _plic_irq_i_q_T_1) begin
    if (_plic_irq_i_q_T_1) begin // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 327:74]
      plic_req_q <= 1'h0; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 327:74]
    end else begin
      plic_req_q <= plic_req_i; // @[src/main/scala/coreGen/bmu/plic/plicchisel.scala 327:74]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  plic_irq_i_q = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  plic_irq_o_pre_q_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  plic_irq_id_q_0 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  irq_pend_q_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  irq_pend_q_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  irq_pend_q_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  irq_pend_q_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  irq_pend_q_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  irq_pend_q_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  irq_pend_q_7 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  irq_pend_q_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  irq_pend_q_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  irq_pend_q_10 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  irq_pend_q_11 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  irq_pend_q_12 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  irq_pend_q_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  irq_pend_q_14 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  irq_pend_q_15 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  irq_thod_q_0 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  irq_prio_q_1 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  irq_prio_q_2 = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  irq_prio_q_3 = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  irq_prio_q_4 = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  irq_prio_q_5 = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  irq_prio_q_6 = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  irq_prio_q_7 = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  irq_prio_q_8 = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  irq_prio_q_9 = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  irq_prio_q_10 = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  irq_prio_q_11 = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  irq_prio_q_12 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  irq_prio_q_13 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  irq_prio_q_14 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  irq_prio_q_15 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  irq_enab_context_0_0 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  rsp_rdata_q = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  plic_req_q = _RAND_36[0:0];
`endif // RANDOMIZE_REG_INIT
  if (~rst_n) begin
    plic_irq_i_q = 16'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    plic_irq_o_pre_q_0 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    plic_irq_id_q_0 = 4'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_1 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_2 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_3 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_4 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_5 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_6 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_7 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_8 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_9 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_10 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_11 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_12 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_13 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_14 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_pend_q_15 = 1'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_thod_q_0 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_1 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_2 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_3 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_4 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_5 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_6 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_7 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_8 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_9 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_10 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_11 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_12 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_13 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_14 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_prio_q_15 = 3'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    irq_enab_context_0_0 = 32'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    rsp_rdata_q = 32'h0;
  end
  if (_plic_irq_i_q_T_1) begin
    plic_req_q = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BmuDir(
  input         clock,
  input         reset,
  output        io_instr_req_ready, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_instr_req_valid, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_instr_req_bits_addr, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_instr_resp_valid, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_instr_resp_bits_err, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_instr_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_data_req_ready, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_data_req_valid, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_data_req_bits_addr, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_data_req_bits_we, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [3:0]  io_data_req_bits_be, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_data_req_bits_wdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_data_resp_valid, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_data_resp_bits_err, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_data_resp_bits_rdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_testmode, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_rtc, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_software, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_timer, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_itcm_0_cen, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_itcm_0_wen, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [3:0]  io_itcm_0_be, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_itcm_0_addr, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_itcm_0_wdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_itcm_0_rdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_dtcm_0_cen, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_dtcm_0_wen, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [3:0]  io_dtcm_0_be, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_dtcm_0_addr, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_dtcm_0_wdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_dtcm_0_rdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [15:0] io_plicIn_in, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_plicOut_out_0, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [7:0]  io_plicId_id, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_plicClr_en, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_ibus_hready, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [1:0]  io_ibus_htrans, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [2:0]  io_ibus_hsize, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_ibus_hwrite, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [1:0]  io_ibus_hprot, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_ibus_haddr, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_ibus_hwdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [1:0]  io_ibus_hresp, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_ibus_hrdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_dbus_hready, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [1:0]  io_dbus_htrans, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [2:0]  io_dbus_hsize, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output        io_dbus_hwrite, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [1:0]  io_dbus_hprot, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_dbus_haddr, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  output [31:0] io_dbus_hwdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [1:0]  io_dbus_hresp, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input  [31:0] io_dbus_hrdata, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_instr_priv_mode_i, // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
  input         io_data_priv_mode_i // @[src/main/scala/coreGen/bmu/Bmu.scala 97:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  wire  Sbus_clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_1_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_1_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_in_1_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_1_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [3:0] Sbus_io_in_1_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_in_1_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_1_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_1_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_in_1_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_2_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_2_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_in_2_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [3:0] Sbus_io_in_2_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_2_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_in_2_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_in_2_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_0_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_0_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_0_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [3:0] Sbus_io_out_0_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_0_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_0_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_0_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_1_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_1_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_1_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [3:0] Sbus_io_out_1_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_1_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_1_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_1_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_2_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_2_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_3_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_3_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_3_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_3_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_3_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_3_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_4_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_4_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_4_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_4_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_4_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_4_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_5_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_5_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  Sbus_io_out_5_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [31:0] Sbus_io_out_5_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire [1:0] Sbus_io_stop; // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
  wire  sbusDefaultSlave_clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire  sbusDefaultSlave_reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire  sbusDefaultSlave_io_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire  sbusDefaultSlave_io_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire  sbusDefaultSlave_io_resp_bits_rdata_pol; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire  sbusDefaultSlave_io_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire [31:0] sbusDefaultSlave_io_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
  wire  itcm_clock; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  itcm_reset; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  itcm_io_a_req_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  itcm_io_a_we_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [3:0] itcm_io_a_be_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] itcm_io_a_addr_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] itcm_io_a_wdata_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  itcm_io_a_rvalid_o; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] itcm_io_a_rdata_o; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  itcm_io_sram_0_cen; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  itcm_io_sram_0_wen; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [3:0] itcm_io_sram_0_be; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] itcm_io_sram_0_addr; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] itcm_io_sram_0_wdata; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] itcm_io_sram_0_rdata; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_clock; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_reset; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_io_a_req_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_io_a_we_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [3:0] dtcm_io_a_be_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] dtcm_io_a_addr_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] dtcm_io_a_wdata_i; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_io_a_rvalid_o; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] dtcm_io_a_rdata_o; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_io_sram_0_cen; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  dtcm_io_sram_0_wen; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [3:0] dtcm_io_sram_0_be; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] dtcm_io_sram_0_addr; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] dtcm_io_sram_0_wdata; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire [31:0] dtcm_io_sram_0_rdata; // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
  wire  clint_clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_bus_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire [31:0] clint_io_bus_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_bus_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire [31:0] clint_io_bus_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_bus_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire [31:0] clint_io_bus_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_testmode; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_rtc; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_timer; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  clint_io_software; // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
  wire  ibus_clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [31:0] ibus_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [3:0] ibus_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [1:0] ibus_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [31:0] ibus_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_out_hready; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [1:0] ibus_io_out_htrans; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [2:0] ibus_io_out_hsize; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [1:0] ibus_io_out_hprot; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [31:0] ibus_io_out_haddr; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [31:0] ibus_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [1:0] ibus_io_out_hresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire [31:0] ibus_io_out_hrdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  ibus_io_exclusive_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
  wire  dbus_clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_in_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_in_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [31:0] dbus_io_in_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_in_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [3:0] dbus_io_in_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [31:0] dbus_io_in_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [1:0] dbus_io_in_req_bits_hport; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_in_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_in_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [31:0] dbus_io_in_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_out_hready; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [1:0] dbus_io_out_htrans; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [2:0] dbus_io_out_hsize; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [1:0] dbus_io_out_hprot; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [31:0] dbus_io_out_haddr; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [31:0] dbus_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [1:0] dbus_io_out_hresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire [31:0] dbus_io_out_hrdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  dbus_io_exclusive_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
  wire  buffer_io_core_instr_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_instr_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_core_instr_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_instr_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_instr_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_core_instr_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_data_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_data_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_core_data_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [3:0] buffer_io_core_data_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_core_data_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_data_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_core_data_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_core_data_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_instr_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_instr_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_buffer_instr_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_instr_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_instr_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_buffer_instr_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_data_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_data_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_buffer_data_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [3:0] buffer_io_buffer_data_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_buffer_data_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_data_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  buffer_io_buffer_data_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire [31:0] buffer_io_buffer_data_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
  wire  plic_clk; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  plic_rst_n; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  plic_plic_req_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire [31:0] plic_plic_addr_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  plic_plic_we_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire [31:0] plic_plic_wdata_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  plic_plic_rvalid_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire [31:0] plic_plic_rdata_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire [15:0] plic_plic_irq_i; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  plic_plic_irq_o_0; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire [7:0] plic_plicid_id; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  plic_plicClr_en; // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
  wire  _dmtop_req_q_T_2 = ~reset; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:31]
  wire  _instr_T_1 = buffer_io_buffer_instr_req_bits_addr[31:17] == 15'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 227:93]
  wire  instr_itcmsel = buffer_io_buffer_instr_req_valid & buffer_io_buffer_instr_req_bits_addr[31:17] == 15'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 227:46]
  wire  instr_corebussel = buffer_io_buffer_instr_req_valid & (buffer_io_buffer_instr_req_bits_addr[31:28] == 4'h0 & ~
    _instr_T_1); // @[src/main/scala/coreGen/bmu/Bmu.scala 229:66]
  wire  _instr_T_8 = ~Sbus_io_out_0_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 231:64]
  wire  _instr_T_9 = instr_itcmsel & ~Sbus_io_out_0_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 231:62]
  reg  instr_itcmselresp; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  reg  ibus_exclusive_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  wire  outside_instr = ~ibus_exclusive_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 666:23]
  wire  corebus_instr_gnt = Sbus_io_in_2_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 372:37]
  wire  _instr_T_13 = instr_corebussel & corebus_instr_gnt; // @[src/main/scala/coreGen/bmu/Bmu.scala 232:65]
  reg  instr_corebusselresp; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  wire  data_corebussel = buffer_io_buffer_data_req_valid & buffer_io_buffer_data_req_bits_addr[31:28] == 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 236:65]
  reg  data_corebusselresp; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
  reg [1:0] dbus_pre_channel_flag; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  wire  outside_data = dbus_pre_channel_flag != 2'h2; // @[src/main/scala/coreGen/bmu/Bmu.scala 667:45]
  wire  outside_dm = dbus_pre_channel_flag != 2'h3; // @[src/main/scala/coreGen/bmu/Bmu.scala 668:45]
  wire  _T_5 = instr_itcmsel & outside_instr; // @[src/main/scala/coreGen/bmu/Bmu.scala 312:30]
  wire [3:0] _GEN_25 = instr_itcmsel & outside_instr ? 4'hf : 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 312:46 315:27 322:27]
  wire [31:0] _GEN_26 = instr_itcmsel & outside_instr ? buffer_io_buffer_instr_req_bits_addr : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 312:46 316:27 323:27]
  wire  corebus_data_gnt = Sbus_io_in_1_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 356:68]
  reg  clint_req_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [31:0] clint_addr_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg  clint_we_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg [31:0] clint_wdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
  reg  plic_req_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg [31:0] plic_addr_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg  plic_we_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  reg [31:0] plic_wdata_q; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  wire  instrout_ibussel = buffer_io_buffer_instr_req_valid & buffer_io_buffer_instr_req_bits_addr[31:28] > 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 620:66]
  wire  dataout_dbussel = buffer_io_buffer_data_req_valid & buffer_io_buffer_data_req_bits_addr[31:28] > 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 625:65]
  wire  ibus_exclusive = ibus_io_exclusive_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 611:33 905:41]
  wire  _GEN_34 = ~ibus_exclusive ? 1'h0 : ibus_exclusive_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 637:32 638:26 src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
  wire  _T_10 = ~data_corebusselresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 642:66]
  wire  dbus_exclusive = dbus_io_exclusive_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 613:33 912:41]
  wire  _T_14 = Sbus_io_stop != 2'h1; // @[src/main/scala/coreGen/bmu/Bmu.scala 674:34]
  wire  _T_15 = instrout_ibussel & Sbus_io_stop != 2'h1; // @[src/main/scala/coreGen/bmu/Bmu.scala 674:27]
  wire  _T_19 = dbus_pre_channel_flag == 2'h2; // @[src/main/scala/coreGen/bmu/Bmu.scala 706:38]
  wire [31:0] _GEN_52 = dataout_dbussel ? buffer_io_buffer_data_req_bits_addr : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 707:30 709:41 716:41]
  wire  _GEN_53 = dataout_dbussel & buffer_io_buffer_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 707:30 710:41 717:41]
  wire [3:0] _GEN_54 = dataout_dbussel ? buffer_io_buffer_data_req_bits_be : 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 707:30 711:41 718:41]
  wire [31:0] _GEN_55 = dataout_dbussel ? buffer_io_buffer_data_req_bits_wdata : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 707:30 712:41 719:41]
  wire  _T_21 = dataout_dbussel & _T_10; // @[src/main/scala/coreGen/bmu/Bmu.scala 723:30]
  wire [31:0] _GEN_64 = dataout_dbussel & _T_10 ? buffer_io_buffer_data_req_bits_addr : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 723:53 726:41]
  wire  _GEN_65 = dataout_dbussel & _T_10 & buffer_io_buffer_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 723:53 727:41]
  wire [3:0] _GEN_66 = dataout_dbussel & _T_10 ? buffer_io_buffer_data_req_bits_be : 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 723:53 728:41]
  wire [31:0] _GEN_67 = dataout_dbussel & _T_10 ? buffer_io_buffer_data_req_bits_wdata : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 723:53 729:41]
  wire  _GEN_69 = dbus_pre_channel_flag == 2'h2 ? dataout_dbussel : _T_21; // @[src/main/scala/coreGen/bmu/Bmu.scala 706:47]
  wire [31:0] _GEN_70 = dbus_pre_channel_flag == 2'h2 ? _GEN_52 : _GEN_64; // @[src/main/scala/coreGen/bmu/Bmu.scala 706:47]
  wire  _GEN_71 = dbus_pre_channel_flag == 2'h2 ? _GEN_53 : _GEN_65; // @[src/main/scala/coreGen/bmu/Bmu.scala 706:47]
  wire [3:0] _GEN_72 = dbus_pre_channel_flag == 2'h2 ? _GEN_54 : _GEN_66; // @[src/main/scala/coreGen/bmu/Bmu.scala 706:47]
  wire [31:0] _GEN_73 = dbus_pre_channel_flag == 2'h2 ? _GEN_55 : _GEN_67; // @[src/main/scala/coreGen/bmu/Bmu.scala 706:47]
  wire  _GEN_81 = instr_itcmsel & _T_14 & _instr_T_8; // @[src/main/scala/coreGen/bmu/Bmu.scala 813:55 814:46 816:46]
  wire  _GEN_82 = instr_corebussel ? corebus_instr_gnt : _GEN_81; // @[src/main/scala/coreGen/bmu/Bmu.scala 811:31 812:46]
  wire  _GEN_83 = outside_instr & _GEN_82; // @[src/main/scala/coreGen/bmu/Bmu.scala 810:35 819:42]
  wire  _GEN_85 = data_corebussel & corebus_data_gnt; // @[src/main/scala/coreGen/bmu/Bmu.scala 827:30 828:45 830:45]
  wire  _GEN_86 = outside_data & _GEN_85; // @[src/main/scala/coreGen/bmu/Bmu.scala 826:47 833:41]
  wire  corebus_instr_rvalid = Sbus_io_in_2_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 378:37]
  wire  _GEN_91 = instr_corebusselresp & corebus_instr_rvalid; // @[src/main/scala/coreGen/bmu/Bmu.scala 858:41 859:57 864:57]
  wire [31:0] corebus_instr_rdata = Sbus_io_in_2_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 379:37]
  wire [31:0] _GEN_92 = instr_corebusselresp ? corebus_instr_rdata : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 858:41 860:57 865:57]
  wire  corebus_instr_err = Sbus_io_in_2_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 381:37]
  wire  _GEN_94 = instr_corebusselresp & corebus_instr_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 858:41 862:57 867:57]
  wire  _GEN_95 = instr_itcmselresp ? itcm_io_a_rvalid_o : _GEN_91; // @[src/main/scala/coreGen/bmu/Bmu.scala 853:32 854:57]
  wire [31:0] _GEN_96 = instr_itcmselresp ? itcm_io_a_rdata_o : _GEN_92; // @[src/main/scala/coreGen/bmu/Bmu.scala 853:32 855:57]
  wire  _GEN_98 = instr_itcmselresp ? 1'h0 : _GEN_94; // @[src/main/scala/coreGen/bmu/Bmu.scala 853:32 857:57]
  wire  corebus_data_rvalid = Sbus_io_in_1_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 362:37]
  wire  _GEN_103 = data_corebusselresp & corebus_data_rvalid; // @[src/main/scala/coreGen/bmu/Bmu.scala 876:34 877:57 882:57]
  wire [31:0] corebus_data_rdata = Sbus_io_in_1_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 363:37]
  wire [31:0] _GEN_104 = data_corebusselresp ? corebus_data_rdata : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 876:34 878:57 883:57]
  wire  corebus_data_err = Sbus_io_in_1_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 147:23 365:37]
  wire  _GEN_106 = data_corebusselresp & corebus_data_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 876:34 880:57 885:57]
  Sbus Sbus ( // @[src/main/scala/coreGen/bmu/Bmu.scala 100:35]
    .clock(Sbus_clock),
    .reset(Sbus_reset),
    .io_in_1_req_ready(Sbus_io_in_1_req_ready),
    .io_in_1_req_valid(Sbus_io_in_1_req_valid),
    .io_in_1_req_bits_addr(Sbus_io_in_1_req_bits_addr),
    .io_in_1_req_bits_we(Sbus_io_in_1_req_bits_we),
    .io_in_1_req_bits_be(Sbus_io_in_1_req_bits_be),
    .io_in_1_req_bits_wdata(Sbus_io_in_1_req_bits_wdata),
    .io_in_1_resp_valid(Sbus_io_in_1_resp_valid),
    .io_in_1_resp_bits_err(Sbus_io_in_1_resp_bits_err),
    .io_in_1_resp_bits_rdata(Sbus_io_in_1_resp_bits_rdata),
    .io_in_2_req_ready(Sbus_io_in_2_req_ready),
    .io_in_2_req_valid(Sbus_io_in_2_req_valid),
    .io_in_2_req_bits_addr(Sbus_io_in_2_req_bits_addr),
    .io_in_2_req_bits_be(Sbus_io_in_2_req_bits_be),
    .io_in_2_resp_valid(Sbus_io_in_2_resp_valid),
    .io_in_2_resp_bits_err(Sbus_io_in_2_resp_bits_err),
    .io_in_2_resp_bits_rdata(Sbus_io_in_2_resp_bits_rdata),
    .io_out_0_req_valid(Sbus_io_out_0_req_valid),
    .io_out_0_req_bits_addr(Sbus_io_out_0_req_bits_addr),
    .io_out_0_req_bits_we(Sbus_io_out_0_req_bits_we),
    .io_out_0_req_bits_be(Sbus_io_out_0_req_bits_be),
    .io_out_0_req_bits_wdata(Sbus_io_out_0_req_bits_wdata),
    .io_out_0_resp_valid(Sbus_io_out_0_resp_valid),
    .io_out_0_resp_bits_rdata(Sbus_io_out_0_resp_bits_rdata),
    .io_out_1_req_valid(Sbus_io_out_1_req_valid),
    .io_out_1_req_bits_addr(Sbus_io_out_1_req_bits_addr),
    .io_out_1_req_bits_we(Sbus_io_out_1_req_bits_we),
    .io_out_1_req_bits_be(Sbus_io_out_1_req_bits_be),
    .io_out_1_req_bits_wdata(Sbus_io_out_1_req_bits_wdata),
    .io_out_1_resp_valid(Sbus_io_out_1_resp_valid),
    .io_out_1_resp_bits_rdata(Sbus_io_out_1_resp_bits_rdata),
    .io_out_2_req_valid(Sbus_io_out_2_req_valid),
    .io_out_2_resp_bits_err(Sbus_io_out_2_resp_bits_err),
    .io_out_3_req_valid(Sbus_io_out_3_req_valid),
    .io_out_3_req_bits_addr(Sbus_io_out_3_req_bits_addr),
    .io_out_3_req_bits_we(Sbus_io_out_3_req_bits_we),
    .io_out_3_req_bits_wdata(Sbus_io_out_3_req_bits_wdata),
    .io_out_3_resp_valid(Sbus_io_out_3_resp_valid),
    .io_out_3_resp_bits_rdata(Sbus_io_out_3_resp_bits_rdata),
    .io_out_4_req_valid(Sbus_io_out_4_req_valid),
    .io_out_4_req_bits_addr(Sbus_io_out_4_req_bits_addr),
    .io_out_4_req_bits_we(Sbus_io_out_4_req_bits_we),
    .io_out_4_req_bits_wdata(Sbus_io_out_4_req_bits_wdata),
    .io_out_4_resp_valid(Sbus_io_out_4_resp_valid),
    .io_out_4_resp_bits_rdata(Sbus_io_out_4_resp_bits_rdata),
    .io_out_5_req_valid(Sbus_io_out_5_req_valid),
    .io_out_5_resp_valid(Sbus_io_out_5_resp_valid),
    .io_out_5_resp_bits_err(Sbus_io_out_5_resp_bits_err),
    .io_out_5_resp_bits_rdata(Sbus_io_out_5_resp_bits_rdata),
    .io_stop(Sbus_io_stop)
  );
  SbusDefaultSlave sbusDefaultSlave ( // @[src/main/scala/coreGen/bmu/Bmu.scala 101:36]
    .clock(sbusDefaultSlave_clock),
    .reset(sbusDefaultSlave_reset),
    .io_req_valid(sbusDefaultSlave_io_req_valid),
    .io_resp_valid(sbusDefaultSlave_io_resp_valid),
    .io_resp_bits_rdata_pol(sbusDefaultSlave_io_resp_bits_rdata_pol),
    .io_resp_bits_err(sbusDefaultSlave_io_resp_bits_err),
    .io_resp_bits_rdata(sbusDefaultSlave_io_resp_bits_rdata)
  );
  ChiselRam1pBwe itcm ( // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
    .clock(itcm_clock),
    .reset(itcm_reset),
    .io_a_req_i(itcm_io_a_req_i),
    .io_a_we_i(itcm_io_a_we_i),
    .io_a_be_i(itcm_io_a_be_i),
    .io_a_addr_i(itcm_io_a_addr_i),
    .io_a_wdata_i(itcm_io_a_wdata_i),
    .io_a_rvalid_o(itcm_io_a_rvalid_o),
    .io_a_rdata_o(itcm_io_a_rdata_o),
    .io_sram_0_cen(itcm_io_sram_0_cen),
    .io_sram_0_wen(itcm_io_sram_0_wen),
    .io_sram_0_be(itcm_io_sram_0_be),
    .io_sram_0_addr(itcm_io_sram_0_addr),
    .io_sram_0_wdata(itcm_io_sram_0_wdata),
    .io_sram_0_rdata(itcm_io_sram_0_rdata)
  );
  ChiselRam1pBwe dtcm ( // @[src/main/scala/coreGen/bmu/ChiselRam.scala 172:46]
    .clock(dtcm_clock),
    .reset(dtcm_reset),
    .io_a_req_i(dtcm_io_a_req_i),
    .io_a_we_i(dtcm_io_a_we_i),
    .io_a_be_i(dtcm_io_a_be_i),
    .io_a_addr_i(dtcm_io_a_addr_i),
    .io_a_wdata_i(dtcm_io_a_wdata_i),
    .io_a_rvalid_o(dtcm_io_a_rvalid_o),
    .io_a_rdata_o(dtcm_io_a_rdata_o),
    .io_sram_0_cen(dtcm_io_sram_0_cen),
    .io_sram_0_wen(dtcm_io_sram_0_wen),
    .io_sram_0_be(dtcm_io_sram_0_be),
    .io_sram_0_addr(dtcm_io_sram_0_addr),
    .io_sram_0_wdata(dtcm_io_sram_0_wdata),
    .io_sram_0_rdata(dtcm_io_sram_0_rdata)
  );
  ClintSimple clint ( // @[src/main/scala/coreGen/bmu/Bmu.scala 108:35]
    .clock(clint_clock),
    .reset(clint_reset),
    .io_bus_req_valid(clint_io_bus_req_valid),
    .io_bus_req_bits_addr(clint_io_bus_req_bits_addr),
    .io_bus_req_bits_we(clint_io_bus_req_bits_we),
    .io_bus_req_bits_wdata(clint_io_bus_req_bits_wdata),
    .io_bus_resp_valid(clint_io_bus_resp_valid),
    .io_bus_resp_bits_rdata(clint_io_bus_resp_bits_rdata),
    .io_testmode(clint_io_testmode),
    .io_rtc(clint_io_rtc),
    .io_timer(clint_io_timer),
    .io_software(clint_io_software)
  );
  InnerB2ahblIbus50mFF ibus ( // @[src/main/scala/coreGen/bmu/Bmu.scala 110:35]
    .clock(ibus_clock),
    .reset(ibus_reset),
    .io_in_req_ready(ibus_io_in_req_ready),
    .io_in_req_valid(ibus_io_in_req_valid),
    .io_in_req_bits_addr(ibus_io_in_req_bits_addr),
    .io_in_req_bits_be(ibus_io_in_req_bits_be),
    .io_in_req_bits_hport(ibus_io_in_req_bits_hport),
    .io_in_resp_valid(ibus_io_in_resp_valid),
    .io_in_resp_bits_err(ibus_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(ibus_io_in_resp_bits_rdata),
    .io_out_hready(ibus_io_out_hready),
    .io_out_htrans(ibus_io_out_htrans),
    .io_out_hsize(ibus_io_out_hsize),
    .io_out_hwrite(ibus_io_out_hwrite),
    .io_out_hprot(ibus_io_out_hprot),
    .io_out_haddr(ibus_io_out_haddr),
    .io_out_hwdata(ibus_io_out_hwdata),
    .io_out_hresp(ibus_io_out_hresp),
    .io_out_hrdata(ibus_io_out_hrdata),
    .io_exclusive_o(ibus_io_exclusive_o)
  );
  InnerB2ahblDbus50mFF dbus ( // @[src/main/scala/coreGen/bmu/Bmu.scala 111:35]
    .clock(dbus_clock),
    .reset(dbus_reset),
    .io_in_req_ready(dbus_io_in_req_ready),
    .io_in_req_valid(dbus_io_in_req_valid),
    .io_in_req_bits_addr(dbus_io_in_req_bits_addr),
    .io_in_req_bits_we(dbus_io_in_req_bits_we),
    .io_in_req_bits_be(dbus_io_in_req_bits_be),
    .io_in_req_bits_wdata(dbus_io_in_req_bits_wdata),
    .io_in_req_bits_hport(dbus_io_in_req_bits_hport),
    .io_in_resp_valid(dbus_io_in_resp_valid),
    .io_in_resp_bits_err(dbus_io_in_resp_bits_err),
    .io_in_resp_bits_rdata(dbus_io_in_resp_bits_rdata),
    .io_out_hready(dbus_io_out_hready),
    .io_out_htrans(dbus_io_out_htrans),
    .io_out_hsize(dbus_io_out_hsize),
    .io_out_hwrite(dbus_io_out_hwrite),
    .io_out_hprot(dbus_io_out_hprot),
    .io_out_haddr(dbus_io_out_haddr),
    .io_out_hwdata(dbus_io_out_hwdata),
    .io_out_hresp(dbus_io_out_hresp),
    .io_out_hrdata(dbus_io_out_hrdata),
    .io_exclusive_o(dbus_io_exclusive_o)
  );
  InnerBuffer buffer ( // @[src/main/scala/coreGen/bmu/Bmu.scala 114:35]
    .io_core_instr_req_ready(buffer_io_core_instr_req_ready),
    .io_core_instr_req_valid(buffer_io_core_instr_req_valid),
    .io_core_instr_req_bits_addr(buffer_io_core_instr_req_bits_addr),
    .io_core_instr_resp_valid(buffer_io_core_instr_resp_valid),
    .io_core_instr_resp_bits_err(buffer_io_core_instr_resp_bits_err),
    .io_core_instr_resp_bits_rdata(buffer_io_core_instr_resp_bits_rdata),
    .io_core_data_req_ready(buffer_io_core_data_req_ready),
    .io_core_data_req_valid(buffer_io_core_data_req_valid),
    .io_core_data_req_bits_addr(buffer_io_core_data_req_bits_addr),
    .io_core_data_req_bits_we(buffer_io_core_data_req_bits_we),
    .io_core_data_req_bits_be(buffer_io_core_data_req_bits_be),
    .io_core_data_req_bits_wdata(buffer_io_core_data_req_bits_wdata),
    .io_core_data_resp_valid(buffer_io_core_data_resp_valid),
    .io_core_data_resp_bits_err(buffer_io_core_data_resp_bits_err),
    .io_core_data_resp_bits_rdata(buffer_io_core_data_resp_bits_rdata),
    .io_buffer_instr_req_ready(buffer_io_buffer_instr_req_ready),
    .io_buffer_instr_req_valid(buffer_io_buffer_instr_req_valid),
    .io_buffer_instr_req_bits_addr(buffer_io_buffer_instr_req_bits_addr),
    .io_buffer_instr_resp_valid(buffer_io_buffer_instr_resp_valid),
    .io_buffer_instr_resp_bits_err(buffer_io_buffer_instr_resp_bits_err),
    .io_buffer_instr_resp_bits_rdata(buffer_io_buffer_instr_resp_bits_rdata),
    .io_buffer_data_req_ready(buffer_io_buffer_data_req_ready),
    .io_buffer_data_req_valid(buffer_io_buffer_data_req_valid),
    .io_buffer_data_req_bits_addr(buffer_io_buffer_data_req_bits_addr),
    .io_buffer_data_req_bits_we(buffer_io_buffer_data_req_bits_we),
    .io_buffer_data_req_bits_be(buffer_io_buffer_data_req_bits_be),
    .io_buffer_data_req_bits_wdata(buffer_io_buffer_data_req_bits_wdata),
    .io_buffer_data_resp_valid(buffer_io_buffer_data_resp_valid),
    .io_buffer_data_resp_bits_err(buffer_io_buffer_data_resp_bits_err),
    .io_buffer_data_resp_bits_rdata(buffer_io_buffer_data_resp_bits_rdata)
  );
  plicchisel plic ( // @[src/main/scala/coreGen/bmu/Bmu.scala 542:39]
    .clk(plic_clk),
    .rst_n(plic_rst_n),
    .plic_req_i(plic_plic_req_i),
    .plic_addr_i(plic_plic_addr_i),
    .plic_we_i(plic_plic_we_i),
    .plic_wdata_i(plic_plic_wdata_i),
    .plic_rvalid_o(plic_plic_rvalid_o),
    .plic_rdata_o(plic_plic_rdata_o),
    .plic_irq_i(plic_plic_irq_i),
    .plic_irq_o_0(plic_plic_irq_o_0),
    .plicid_id(plic_plicid_id),
    .plicClr_en(plic_plicClr_en)
  );
  assign io_instr_req_ready = buffer_io_core_instr_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 116:26]
  assign io_instr_resp_valid = buffer_io_core_instr_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 116:26]
  assign io_instr_resp_bits_err = buffer_io_core_instr_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 116:26]
  assign io_instr_resp_bits_rdata = buffer_io_core_instr_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 116:26]
  assign io_data_req_ready = buffer_io_core_data_req_ready; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign io_data_resp_valid = buffer_io_core_data_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign io_data_resp_bits_err = buffer_io_core_data_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign io_data_resp_bits_rdata = buffer_io_core_data_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign io_software = clint_io_software; // @[src/main/scala/coreGen/bmu/Bmu.scala 526:37]
  assign io_timer = clint_io_timer; // @[src/main/scala/coreGen/bmu/Bmu.scala 525:37]
  assign io_itcm_0_cen = itcm_io_sram_0_cen; // @[src/main/scala/coreGen/bmu/Bmu.scala 385:37]
  assign io_itcm_0_wen = itcm_io_sram_0_wen; // @[src/main/scala/coreGen/bmu/Bmu.scala 385:37]
  assign io_itcm_0_be = itcm_io_sram_0_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 385:37]
  assign io_itcm_0_addr = itcm_io_sram_0_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 385:37]
  assign io_itcm_0_wdata = itcm_io_sram_0_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 385:37]
  assign io_dtcm_0_cen = dtcm_io_sram_0_cen; // @[src/main/scala/coreGen/bmu/Bmu.scala 401:37]
  assign io_dtcm_0_wen = dtcm_io_sram_0_wen; // @[src/main/scala/coreGen/bmu/Bmu.scala 401:37]
  assign io_dtcm_0_be = dtcm_io_sram_0_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 401:37]
  assign io_dtcm_0_addr = dtcm_io_sram_0_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 401:37]
  assign io_dtcm_0_wdata = dtcm_io_sram_0_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 401:37]
  assign io_plicOut_out_0 = plic_plic_irq_o_0; // @[src/main/scala/coreGen/bmu/Bmu.scala 573:41]
  assign io_plicId_id = plic_plicid_id; // @[src/main/scala/coreGen/bmu/Bmu.scala 575:41]
  assign io_ibus_htrans = ibus_io_out_htrans; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign io_ibus_hsize = ibus_io_out_hsize; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign io_ibus_hwrite = ibus_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign io_ibus_hprot = ibus_io_out_hprot; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign io_ibus_haddr = ibus_io_out_haddr; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign io_ibus_hwdata = ibus_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign io_dbus_htrans = dbus_io_out_htrans; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign io_dbus_hsize = dbus_io_out_hsize; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign io_dbus_hwrite = dbus_io_out_hwrite; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign io_dbus_hprot = dbus_io_out_hprot; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign io_dbus_haddr = dbus_io_out_haddr; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign io_dbus_hwdata = dbus_io_out_hwdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign Sbus_clock = clock;
  assign Sbus_reset = reset;
  assign Sbus_io_in_1_req_valid = data_corebussel & outside_data & buffer_io_buffer_data_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 273:41 274:29 281:29]
  assign Sbus_io_in_1_req_bits_addr = data_corebussel & outside_data ? buffer_io_buffer_data_req_bits_addr : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 273:41 277:29 284:29]
  assign Sbus_io_in_1_req_bits_we = data_corebussel & outside_data & buffer_io_buffer_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 273:41 275:29 282:29]
  assign Sbus_io_in_1_req_bits_be = data_corebussel & outside_data ? buffer_io_buffer_data_req_bits_be : 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 273:41 276:29 283:29]
  assign Sbus_io_in_1_req_bits_wdata = data_corebussel & outside_data ? buffer_io_buffer_data_req_bits_wdata : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 273:41 278:29 285:29]
  assign Sbus_io_in_2_req_valid = instr_corebussel & outside_instr & buffer_io_buffer_instr_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 257:44 258:29 265:29]
  assign Sbus_io_in_2_req_bits_addr = instr_corebussel & outside_instr ? buffer_io_buffer_instr_req_bits_addr : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 257:44 261:29 268:29]
  assign Sbus_io_in_2_req_bits_be = instr_corebussel & outside_instr ? 4'hf : 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 257:44 260:29 267:29]
  assign Sbus_io_out_0_resp_valid = itcm_io_a_rvalid_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 334:37]
  assign Sbus_io_out_0_resp_bits_rdata = itcm_io_a_rdata_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 336:37]
  assign Sbus_io_out_1_resp_valid = dtcm_io_a_rvalid_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 397:37]
  assign Sbus_io_out_1_resp_bits_rdata = dtcm_io_a_rdata_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 398:37]
  assign Sbus_io_out_2_resp_bits_err = 1'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 428:24]
  assign Sbus_io_out_3_resp_valid = clint_io_bus_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 508:27]
  assign Sbus_io_out_3_resp_bits_rdata = clint_io_bus_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 490:37]
  assign Sbus_io_out_4_resp_valid = plic_plic_rvalid_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 555:30]
  assign Sbus_io_out_4_resp_bits_rdata = plic_plic_rdata_o; // @[src/main/scala/coreGen/bmu/Bmu.scala 569:41]
  assign Sbus_io_out_5_resp_valid = sbusDefaultSlave_io_resp_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 603:69]
  assign Sbus_io_out_5_resp_bits_err = sbusDefaultSlave_io_resp_bits_err; // @[src/main/scala/coreGen/bmu/Bmu.scala 603:69]
  assign Sbus_io_out_5_resp_bits_rdata = sbusDefaultSlave_io_resp_bits_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 603:69]
  assign sbusDefaultSlave_clock = clock;
  assign sbusDefaultSlave_reset = reset;
  assign sbusDefaultSlave_io_req_valid = Sbus_io_out_5_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 603:69]
  assign itcm_clock = clock;
  assign itcm_reset = reset;
  assign itcm_io_a_req_i = Sbus_io_out_0_req_valid ? Sbus_io_out_0_req_valid : _T_5; // @[src/main/scala/coreGen/bmu/Bmu.scala 305:35 306:27]
  assign itcm_io_a_we_i = Sbus_io_out_0_req_valid & Sbus_io_out_0_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 305:35 307:27]
  assign itcm_io_a_be_i = Sbus_io_out_0_req_valid ? Sbus_io_out_0_req_bits_be : _GEN_25; // @[src/main/scala/coreGen/bmu/Bmu.scala 305:35 308:27]
  assign itcm_io_a_addr_i = Sbus_io_out_0_req_valid ? Sbus_io_out_0_req_bits_addr : _GEN_26; // @[src/main/scala/coreGen/bmu/Bmu.scala 305:35 309:27]
  assign itcm_io_a_wdata_i = Sbus_io_out_0_req_valid ? Sbus_io_out_0_req_bits_wdata : 32'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 305:35 310:27]
  assign itcm_io_sram_0_rdata = io_itcm_0_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 385:37]
  assign dtcm_clock = clock;
  assign dtcm_reset = reset;
  assign dtcm_io_a_req_i = Sbus_io_out_1_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 388:68]
  assign dtcm_io_a_we_i = Sbus_io_out_1_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 393:37]
  assign dtcm_io_a_be_i = Sbus_io_out_1_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 394:37]
  assign dtcm_io_a_addr_i = Sbus_io_out_1_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 392:37]
  assign dtcm_io_a_wdata_i = Sbus_io_out_1_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 395:37]
  assign dtcm_io_sram_0_rdata = io_dtcm_0_rdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 401:37]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_io_bus_req_valid = clint_req_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 507:35]
  assign clint_io_bus_req_bits_addr = clint_addr_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 519:37]
  assign clint_io_bus_req_bits_we = clint_we_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 520:37]
  assign clint_io_bus_req_bits_wdata = clint_wdata_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 521:69]
  assign clint_io_testmode = io_testmode; // @[src/main/scala/coreGen/bmu/Bmu.scala 522:37]
  assign clint_io_rtc = io_rtc; // @[src/main/scala/coreGen/bmu/Bmu.scala 524:37]
  assign ibus_clock = clock;
  assign ibus_reset = reset;
  assign ibus_io_in_req_valid = instrout_ibussel & Sbus_io_stop != 2'h1 & buffer_io_buffer_instr_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 674:48 675:37 682:37]
  assign ibus_io_in_req_bits_addr = instrout_ibussel & Sbus_io_stop != 2'h1 ? buffer_io_buffer_instr_req_bits_addr : 32'h0
    ; // @[src/main/scala/coreGen/bmu/Bmu.scala 674:48 676:37 683:37]
  assign ibus_io_in_req_bits_be = instrout_ibussel & Sbus_io_stop != 2'h1 ? 4'hf : 4'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 674:48 678:37 685:37]
  assign ibus_io_in_req_bits_hport = {io_instr_priv_mode_i,1'h0}; // @[src/main/scala/coreGen/bmu/Bmu.scala 907:48]
  assign ibus_io_out_hready = io_ibus_hready; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign ibus_io_out_hresp = io_ibus_hresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign ibus_io_out_hrdata = io_ibus_hrdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 909:23]
  assign dbus_clock = clock;
  assign dbus_reset = reset;
  assign dbus_io_in_req_valid = dbus_pre_channel_flag == 2'h3 ? 1'h0 : _GEN_69; // @[src/main/scala/coreGen/bmu/Bmu.scala 690:39]
  assign dbus_io_in_req_bits_addr = dbus_pre_channel_flag == 2'h3 ? 32'h0 : _GEN_70; // @[src/main/scala/coreGen/bmu/Bmu.scala 690:39]
  assign dbus_io_in_req_bits_we = dbus_pre_channel_flag == 2'h3 ? 1'h0 : _GEN_71; // @[src/main/scala/coreGen/bmu/Bmu.scala 690:39]
  assign dbus_io_in_req_bits_be = dbus_pre_channel_flag == 2'h3 ? 4'h0 : _GEN_72; // @[src/main/scala/coreGen/bmu/Bmu.scala 690:39]
  assign dbus_io_in_req_bits_wdata = dbus_pre_channel_flag == 2'h3 ? 32'h0 : _GEN_73; // @[src/main/scala/coreGen/bmu/Bmu.scala 690:39]
  assign dbus_io_in_req_bits_hport = {io_data_priv_mode_i,1'h1}; // @[src/main/scala/coreGen/bmu/Bmu.scala 915:48]
  assign dbus_io_out_hready = io_dbus_hready; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign dbus_io_out_hresp = io_dbus_hresp; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign dbus_io_out_hrdata = io_dbus_hrdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 917:23]
  assign buffer_io_core_instr_req_valid = io_instr_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 116:26]
  assign buffer_io_core_instr_req_bits_addr = io_instr_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 116:26]
  assign buffer_io_core_data_req_valid = io_data_req_valid; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign buffer_io_core_data_req_bits_addr = io_data_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign buffer_io_core_data_req_bits_we = io_data_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign buffer_io_core_data_req_bits_be = io_data_req_bits_be; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign buffer_io_core_data_req_bits_wdata = io_data_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 117:26]
  assign buffer_io_buffer_instr_req_ready = _T_15 ? ibus_io_in_req_ready : _GEN_83; // @[src/main/scala/coreGen/bmu/Bmu.scala 806:48 807:42]
  assign buffer_io_buffer_instr_resp_valid = ibus_exclusive_q ? ibus_io_in_resp_valid : _GEN_95; // @[src/main/scala/coreGen/bmu/Bmu.scala 848:34 849:37]
  assign buffer_io_buffer_instr_resp_bits_err = ibus_exclusive_q ? ibus_io_in_resp_bits_err : _GEN_98; // @[src/main/scala/coreGen/bmu/Bmu.scala 848:34 849:37]
  assign buffer_io_buffer_instr_resp_bits_rdata = ibus_exclusive_q ? ibus_io_in_resp_bits_rdata : _GEN_96; // @[src/main/scala/coreGen/bmu/Bmu.scala 848:34 849:37]
  assign buffer_io_buffer_data_req_ready = dataout_dbussel & Sbus_io_stop != 2'h2 & outside_dm ? dbus_io_in_req_ready :
    _GEN_86; // @[src/main/scala/coreGen/bmu/Bmu.scala 822:79 823:41]
  assign buffer_io_buffer_data_resp_valid = _T_19 ? dbus_io_in_resp_valid : _GEN_103; // @[src/main/scala/coreGen/bmu/Bmu.scala 871:41 872:36]
  assign buffer_io_buffer_data_resp_bits_err = _T_19 ? dbus_io_in_resp_bits_err : _GEN_106; // @[src/main/scala/coreGen/bmu/Bmu.scala 871:41 872:36]
  assign buffer_io_buffer_data_resp_bits_rdata = _T_19 ? dbus_io_in_resp_bits_rdata : _GEN_104; // @[src/main/scala/coreGen/bmu/Bmu.scala 871:41 872:36]
  assign plic_clk = clock; // @[src/main/scala/coreGen/bmu/Bmu.scala 544:41]
  assign plic_rst_n = reset; // @[src/main/scala/coreGen/bmu/Bmu.scala 545:41]
  assign plic_plic_req_i = plic_req_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 554:37]
  assign plic_plic_addr_i = plic_addr_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 564:41]
  assign plic_plic_we_i = plic_we_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 565:41]
  assign plic_plic_wdata_i = plic_wdata_q; // @[src/main/scala/coreGen/bmu/Bmu.scala 566:73]
  assign plic_plic_irq_i = io_plicIn_in; // @[src/main/scala/coreGen/bmu/Bmu.scala 572:41]
  assign plic_plicClr_en = io_plicClr_en; // @[src/main/scala/coreGen/bmu/Bmu.scala 577:41]
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      instr_itcmselresp <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
    end else if (outside_instr) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      instr_itcmselresp <= _instr_T_9;
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 635:63]
      ibus_exclusive_q <= 1'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 636:26]
    end else begin
      ibus_exclusive_q <= instrout_ibussel & buffer_io_buffer_instr_req_ready | _GEN_34;
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 249:28]
      instr_corebusselresp <= 1'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 250:30]
    end else if (!(Sbus_io_stop == 2'h1)) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      if (outside_instr) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
        instr_corebusselresp <= _instr_T_13;
      end
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 253:28]
      data_corebusselresp <= 1'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 254:29]
    end else if (!(Sbus_io_stop == 2'h2)) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
      if (outside_data) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 127:54]
        data_corebusselresp <= data_corebussel;
      end
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 641:42]
      dbus_pre_channel_flag <= 2'h0; // @[src/main/scala/coreGen/bmu/Bmu.scala 642:87 644:35]
    end else if (dbus_pre_channel_flag == 2'h0) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 648:32]
      if (dataout_dbussel & buffer_io_buffer_data_req_ready & ~data_corebusselresp) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 649:31]
        dbus_pre_channel_flag <= 2'h2;
      end
    end else if (~dbus_exclusive) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 651:31]
      dbus_pre_channel_flag <= 2'h0;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 494:87]
      clint_req_q <= 1'h0;
    end else begin
      clint_req_q <= Sbus_io_out_3_req_valid;
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      clint_addr_q <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      clint_addr_q <= Sbus_io_out_3_req_bits_addr; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      clint_we_q <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      clint_we_q <= Sbus_io_out_3_req_bits_we; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
  always @(posedge clock or negedge reset) begin
    if (~reset) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
      clint_wdata_q <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end else begin
      clint_wdata_q <= Sbus_io_out_3_req_bits_wdata; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 112:52]
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/bmu/Bmu.scala 547:72]
      plic_req_q <= 1'h0;
    end else begin
      plic_req_q <= Sbus_io_out_4_req_valid;
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
      plic_addr_q <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
    end else begin
      plic_addr_q <= Sbus_io_out_4_req_bits_addr; // @[src/main/scala/coreGen/bmu/Bmu.scala 548:41]
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
      plic_we_q <= 1'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
    end else begin
      plic_we_q <= Sbus_io_out_4_req_bits_we; // @[src/main/scala/coreGen/bmu/Bmu.scala 549:41]
    end
  end
  always @(posedge clock or posedge _dmtop_req_q_T_2) begin
    if (_dmtop_req_q_T_2) begin // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
      plic_wdata_q <= 32'h0; // @[src/main/scala/coreGen/util/RegAsyncReset.scala 92:52]
    end else begin
      plic_wdata_q <= Sbus_io_out_4_req_bits_wdata; // @[src/main/scala/coreGen/bmu/Bmu.scala 550:41]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  instr_itcmselresp = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  ibus_exclusive_q = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  instr_corebusselresp = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_corebusselresp = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  dbus_pre_channel_flag = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  clint_req_q = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  clint_addr_q = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  clint_we_q = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  clint_wdata_q = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  plic_req_q = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  plic_addr_q = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  plic_we_q = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  plic_wdata_q = _RAND_12[31:0];
`endif // RANDOMIZE_REG_INIT
  if (_dmtop_req_q_T_2) begin
    instr_itcmselresp = 1'h0;
  end
  if (_dmtop_req_q_T_2) begin
    ibus_exclusive_q = 1'h0;
  end
  if (_dmtop_req_q_T_2) begin
    instr_corebusselresp = 1'h0;
  end
  if (_dmtop_req_q_T_2) begin
    data_corebusselresp = 1'h0;
  end
  if (_dmtop_req_q_T_2) begin
    dbus_pre_channel_flag = 2'h0;
  end
  if (~reset) begin
    clint_req_q = 1'h0;
  end
  if (~reset) begin
    clint_addr_q = 32'h0;
  end
  if (~reset) begin
    clint_we_q = 1'h0;
  end
  if (~reset) begin
    clint_wdata_q = 32'h0;
  end
  if (_dmtop_req_q_T_2) begin
    plic_req_q = 1'h0;
  end
  if (_dmtop_req_q_T_2) begin
    plic_addr_q = 32'h0;
  end
  if (_dmtop_req_q_T_2) begin
    plic_we_q = 1'h0;
  end
  if (_dmtop_req_q_T_2) begin
    plic_wdata_q = 32'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
