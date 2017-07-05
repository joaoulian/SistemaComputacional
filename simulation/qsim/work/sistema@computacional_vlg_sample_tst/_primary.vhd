library verilog;
use verilog.vl_types.all;
entity sistemaComputacional_vlg_sample_tst is
    port(
        clock50         : in     vl_logic;
        enter           : in     vl_logic;
        entradaSwitch   : in     vl_logic_vector(8 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sistemaComputacional_vlg_sample_tst;
