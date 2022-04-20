-------------------------------------------------------------------------------
-- File Downloaded from Nandland.com
-- Modified to use Intel's lpm library componen
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity carry_lookahead_adder is
  generic (
    WIDTH : natural
    --WIDTH : natural := 3
    );
  port (
    i_add1  : in std_logic_vector(WIDTH-1 downto 0);
    i_add2  : in std_logic_vector(WIDTH-1 downto 0);
    --
    o_result   : out std_logic_vector(WIDTH downto 0)
    );
end carry_lookahead_adder;


architecture rtl of carry_lookahead_adder is

  --signal w_G : std_logic_vector(WIDTH-1 downto 0); -- Generate
  --signal w_P : std_logic_vector(WIDTH-1 downto 0); -- Propagate
  signal w_COUT : std_logic;   -- carry out
  signal w_SUM  : std_logic_vector(WIDTH-1 downto 0);

begin 
  -- Use LPM lpm_add_sub component
  FULL_ADDER_INST : LPM_ADD_SUB
    generic map (
      LPM_DIRECTION => "ADD",
      LPM_REPRESENTATION => "UNSIGNED",
      LPM_WIDTH     => WIDTH
    )
    port map (
      DATAA  => i_add1,
      DATAB  => i_add2,
      COUT   => w_COUT,
      RESULT => w_SUM
    );

  o_result <= w_COUT & w_SUM;  -- VHDL Concatenation
  
end rtl;
