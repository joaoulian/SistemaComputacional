library verilog;
use verilog.vl_types.all;
entity sistemaComputacional is
    port(
        clock50         : in     vl_logic;
        reset           : in     vl_logic;
        enter           : in     vl_logic;
        entradaSwitch   : in     vl_logic_vector(8 downto 0);
        saidaCentena    : out    vl_logic_vector(6 downto 0);
        saidaDezena     : out    vl_logic_vector(6 downto 0);
        saidaNegativo   : out    vl_logic_vector(6 downto 0);
        saidaUnidade    : out    vl_logic_vector(6 downto 0);
        saidaDezenaOpcode: out    vl_logic_vector(6 downto 0);
        saidaUnidadeOpcode: out    vl_logic_vector(6 downto 0);
        opcode          : out    vl_logic_vector(4 downto 0);
        dadoEscritaNovo : out    vl_logic_vector(31 downto 0);
        dadoRd          : out    vl_logic_vector(31 downto 0);
        rd              : out    vl_logic_vector(4 downto 0);
        imediatoExtendido22: out    vl_logic_vector(31 downto 0);
        dadoRs          : out    vl_logic_vector(31 downto 0)
    );
end sistemaComputacional;
