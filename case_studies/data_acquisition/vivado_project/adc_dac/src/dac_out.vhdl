library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library xpm;
--library unisim;
--use unisim.vcomponents.all;

-------------------------------------------------------------------------------
entity dac_out is
  generic(

    -- Master AXI Stream Data Width
    C_M_AXIS_DATA_WIDTH : integer range 32 to 256 := 32;
    
    -- Slave AXI Stream Data Width
    C_S_AXIS_DATA_WIDTH : integer range 32 to 256 := 32;
    
    C_MAXVAL : integer range -32678 to 32767 := 8000;
    C_MINVAL : integer range -32678 to 32767 := 0;
    C_LED_COUNTVAL : integer  := 125000000; --1 hz update of led
    C_COUNTVAL : integer  := 10000; --update of output done at 125 kHz (125 MHz / 1000)
    C_DAC_COUNTVAL : integer := 62  --about 1 MHz  DAC clock
    
  );
  port (

    -- Global Ports
    aclk    : in std_logic;
    s_axis_tdata : in std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
    s_axis_tvalid : in std_logic;
    s_axis_tready : out std_logic;
    dac_rst : out std_logic;
    dac_clk : out std_logic;
    dac_sel : out std_logic;
    dac_dat : out std_logic_vector(13 downto 0);
    led : out std_logic

    );

end dac_out;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------



architecture implementation of dac_out is
signal test : std_logic;
signal dac_in1 : std_logic_vector(13 downto 0);
signal dac_in2 : std_logic_vector(13 downto 0);

  
begin
    led <= test;
    dac_rst <= '0';
    s_axis_tready <= '1';
                     
    handle_gen: process(aclk)
        variable counter_dac : integer := 0;
        variable counter_led: integer := 0;
        variable dac_clk_var: std_logic := '0';
        variable dac_sel_var: std_logic := '0';
        begin
            if rising_edge(aclk)  then
                if s_axis_tvalid = '1' then
                    dac_in1 <= s_axis_tdata(13 downto 0);
                    dac_in2 <= s_axis_tdata(29 downto 16);
                end if;
            
                counter_led := counter_led + 1;
                if counter_led = C_LED_COUNTVAL then
                    counter_led := 0;
                    if test = '1' then
                        test <= '0';
                    else
                        test <= '1';
                    end if;
                end if;
                counter_dac := counter_dac + 1;
                if counter_dac = C_DAC_COUNTVAL then
                    counter_dac := 0;
                    if dac_clk_var = '1' then
                        dac_clk <= '0';
                        dac_clk_var := '0';
                        if dac_sel_var = '0' then
                            dac_sel_var := '1';
                            dac_sel <= '1';
                            dac_dat <= dac_in1;
                        else
                            dac_sel_var := '0';
                            dac_sel <= '0';
                            dac_dat <= dac_in2;
                        end if;
                    else
                        dac_clk <= '1';
                        dac_clk_var := '1';
                    end if;  
                end if;  
             end if;
        end process;   
        
        
   end implementation;
    
  
 