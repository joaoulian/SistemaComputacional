library verilog;
use verilog.vl_types.all;
entity sistemaComputacional_vlg_check_tst is
    port(
        dadoEscritaNovo : in     vl_logic_vector(31 downto 0);
        dadoRd          : in     vl_logic_vector(31 downto 0);
        dadoRs          : in     vl_logic_vector(31 downto 0);
        imediatoExtendido22: in     vl_logic_vector(31 downto 0);
        opcode          : in     vl_logic_vector(4 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        saidaCentena    : in     vl_logic_vector(6 downto 0);
        saidaDezena     : in     vl_logic_vector(6 downto 0);
        saidaDezenaOpcode: in     vl_logic_vector(6 downto 0);
        saidaNegativo   : in     vl_logic_vector(6 downto 0);
        saidaUnidade    : in     vl_logic_vector(6 downto 0);
        saidaUnidadeOpcode: in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end sistemaComputacional_vlg_check_tst;
