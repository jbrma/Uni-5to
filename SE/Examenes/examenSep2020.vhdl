

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library proc_common_v2_00_a;
use proc_common_v2_00_a.proc_common_pkg.all;

entity user_logic is
 generic
 (
 C_SLV_DWIDTH : integer := 32;
 C_NUM_REG : integer := 6 -- num de registros, 2 para cada color
 port
 (
 switch : in std_logic;
 red : out std_logic;
 green : out std_logic;
 blue : out std_logic;

 Bus2IP_Clk : in std_logic;
 Bus2IP_Reset : in std_logic;
 Bus2IP_Data : in std_logic_vector(0 to C_SLV_DWIDTH-1);
 Bus2IP_BE : in std_logic_vector(0 to C_SLV_DWIDTH/8-1);
 Bus2IP_RdCE : in std_logic_vector(0 to C_NUM_REG-1);
 Bus2IP_WrCE : in std_logic_vector(0 to C_NUM_REG-1);
 IP2Bus_Data : out std_logic_vector(0 to C_SLV_DWIDTH-1);
 IP2Bus_RdAck : out std_logic;
 IP2Bus_WrAck : out std_logic;
 IP2Bus_Error : out std_logic
 );
end entity user_logic;

architecture IMP of user_logic is
 signal slv_reg0, slv_reg1 : std_logic_vector(0 to C_SLV_DWIDTH-1);
 signal slv_reg2, slv_reg3 : std_logic_vector(0 to C_SLV_DWIDTH-1);
 signal slv_reg4, slv_reg5 : std_logic_vector(0 to C_SLV_DWIDTH-1);

 signal slv_reg_write_sel : std_logic_vector(0 to 1);
 signal slv_reg_read_sel : std_logic_vector(0 to 1);
 signal slv_ip2bus_data : std_logic_vector(0 to C_SLV_DWIDTH-1);
 signal slv_read_ack : std_logic;
 signal slv_write_ack : std_logic;

 signal numciclos_red, referencia_red : std_logic_vector(0 to C_SLV_DWIDTH-1);
 signal numciclos_green, referencia_green : std_logic_vector(0 to C_SLV_DWIDTH-1);
 signal numciclos_blue, referencia_blue : std_logic_vector(0 to C_SLV_DWIDTH-1);

 signal salida_red, salida_blue, salida_green, : std_logic; -- Salida PWM conectada al LED
 signal cnt_red, cnt_green, cnt_blue : std_logic_vector(0 TO C_SLV_DWIDTH - 1)); -- Contadores para PWM

begin

 slv_reg_write_sel <= Bus2IP_WrCE(0 to 0);
 slv_reg_read_sel <= Bus2IP_RdCE(0 to 0);
 slv_write_ack <= Bus2IP_WrCE(0) or Bus2IP_WrCE(1) or Bus2IP_WrCE(2) or Bus2IP_WrCE(3) or Bus2IP_WrCE(4) or Bus2IP_WrCE(5);
 slv_read_ack <= Bus2IP_RdCE(0)  or Bus2IP_RdCE(1) or Bus2IP_RdCE(2) or Bus2IP_RdCE(3) or Bus2IP_RdCE(4) or Bus2IP_RdCE(5);


 SLAVE_REG_WRITE_PROC : process( Bus2IP_Clk ) is
    begin
      if Bus2IP_Clk'event and Bus2IP_Clk = '1' then
         if Bus2IP_Reset = '1' then
            slv_reg0 <= (others => '0');
            slv_reg1 <= (others => '0');
            slv_reg2 <= (others => '0');
            slv_reg3 <= (others => '0');
            slv_reg4 <= (others => '0');
            slv_reg5 <= (others => '0');
         else
         case slv_reg_write_sel is
            when "001" =>
               slv_reg0 <= Bus2IP_Data; --
            when "010" =>
               slv_reg1 <= Bus2IP_Data;
            when "011" =>
               slv_reg2 <= Bus2IP_Data;
            when "100" =>
               slv_reg3 <= Bus2IP_Data;
            when "101" =>
               slv_reg4 <= Bus2IP_Data;
            when "110" =>
               slv_reg5 <= Bus2IP_Data;
       when others => null;
       end case;
      end if;
      end if;
   end process SLAVE_REG_WRITE_PROC;

   
 --------------------------
 -- PWM --
 --------------------------
 PWM1: process (Bus2IP_Reset, Bus2IP_Clk)
   begin
      if (Bus2IP_Reset = '1') then
            cnt_red <= (others => '0');
            cnt_green <= (others => '0');
            cnt_blue <= (others => '0');
      elsif rising_edge(Bus2IP_Clk) then

         if (cnt_red < numciclos_red) then
            cnt_red <= (others => '0');
         else
         cnt_red <= cnt_red + 1;
         end if;

         if (cnt_green < numciclos_green) then
            cnt_green <= (others => '0');
         else
         cnt_green <= cnt_green + 1;
         end if;

         if (cnt_blue < numciclos_blue) then
            cnt_blue <= (others => '0');
         else
         cnt_blue <= cnt_blue + 1;
         end if;

      end if;

      if switch ='0' then
         salida_red <= '0';
         salida_green <= '0';
         salida_blue <= '0';
      else
         salida_red <= '1' when (cnt_red < referencia_red) else '0';
         salida_green <= '1' when (cnt_green < referencia_green) else '0'; 
         salida_blue <= '1' when (cnt_blue < referencia_blue) else '0';    
      end if;
end process PWM1;


SLAVE_REG_READ_PROC : process( slv_reg_read_sel, slv_reg0 ) is
   begin
      case slv_reg_read_sel is
         when "001" => slv_ip2bus_data <= slv_reg0;
         when "010" => slv_ip2bus_data <= slv_reg1;
         when "011" => slv_ip2bus_data <= slv_reg2;
         when "100" => slv_ip2bus_data <= slv_reg3;
         when "101" => slv_ip2bus_data <= slv_reg4;
         when "110" => slv_ip2bus_data <= slv_reg5;
         when others => slv_ip2bus_data <= (others => '0');
      end case;
end process SLAVE_REG_READ_PROC;

IP2Bus_Data <= slv_ip2bus_data when slv_read_ack = '1' else (others => '0');
IP2Bus_WrAck <= slv_write_ack;
IP2Bus_RdAck <= slv_read_ack;
IP2Bus_Error <= '0';

numciclos_red <= slv_reg0;
referencia_red <= slv_reg1;
numciclos_green <= slv_reg2;
referencia_green <= slv_reg3;
numciclos_blue <= slv_reg4;
referencia_blue <= slv_reg5;

red <= salida_red;
green <= salida_green;
blue <= salida_blue;

end IMP;