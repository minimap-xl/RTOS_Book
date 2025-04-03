################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name adc_clk_i_clk_p -period 10 [get_ports adc_clk_i_clk_p]
create_clock -name red_pitaya_ps_FCLK_CLK0 -period 8 [get_pins red_pitaya_ps/FCLK_CLK0]

################################################################################