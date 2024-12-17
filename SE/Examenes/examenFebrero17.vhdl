

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library proc_common_v2_00_a;
use proc_common_v2_00_a.proc_common_pkg.all;

entity user_logic is
 generic
 (
 C_SLV_DWIDTH : integer := 32; -- Ancho de datos
 C_NUM_REG : integer := 2      -- Dos registros: control y estado
 port
 (

 motor         : out std_logic_vector(3 downto 0); -- Salidas de control al driver
 step          : out std_logic_vector(2 downto 0); -- Paso actual del motor
 clk_motor     : out std_logic;                   -- Reloj para el driver del motor
 dir           : out std_logic;                   -- Dirección del motor
 stop          : out std_logic;                   -- Señal de parada del motor
 halfstep      : out std_logic                    -- Medio paso o paso completo


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
   
 signal slv_reg_write_sel : std_logic_vector(0 to 0);
 signal slv_reg_read_sel : std_logic_vector(0 to 0);
 signal slv_ip2bus_data : std_logic_vector(0 to C_SLV_DWIDTH-1);
 signal slv_read_ack : std_logic;
 signal slv_write_ack : std_logic;

 signal slv_reg0 : std_logic_vector(0 to C_SLV_DWIDTH-1); -- Registro de control
 signal slv_reg1 : std_logic_vector(0 to C_SLV_DWIDTH-1); -- Registro de estado

-- Señales de control para el motor
 signal num_steps : std_logic_vector(3 downto 0); -- Número de pasos (bits 25-28)
 signal step_count : std_logic_vector(31 downto 0); -- Contador de pasos realizados
 signal clk_div    : std_logic; -- Reloj dividido

-- Contador para dividir la frecuencia del reloj
 signal clk_div_counter : integer range 0 to 3 := 0;

begin

 slv_reg_write_sel <= Bus2IP_WrCE(0 to 0);
 slv_reg_read_sel <= Bus2IP_RdCE(0 to 0);
 slv_write_ack <= Bus2IP_WrCE(0) or Bus2IP_WrCE(1);
 slv_read_ack <= Bus2IP_RdCE(0) or Bus2IP_WrCE(1);


 CLK_DIVIDER: process(Bus2IP_Clk)
   begin
      if rising_edge(Bus2IP_Clk) then
         if clk_div_counter = 3 then
               clk_div <= not clk_div;
               clk_div_counter <= 0;
         else
               clk_div_counter <= clk_div_counter + 1;
         end if;
      end if;
   end process;

   clk_motor <= clk_div;

 SLAVE_REG_WRITE_PROC : process( Bus2IP_Clk ) is
    begin
      if Bus2IP_Clk'event and Bus2IP_Clk = '1' then
         if Bus2IP_Reset = '1' then
            slv_reg0 <= (others => '0');
            slv_reg1 <= (others => '0');
         else
         case slv_reg_write_sel is
            when "01" => slv_reg0 <= Bus2IP_Data;
            when others => null;
       end case;
      end if;
      end if;
   end process SLAVE_REG_WRITE_PROC;


SLAVE_REG_READ_PROC : process( slv_reg_read_sel, slv_reg0 ) is
   begin
      case slv_reg_read_sel is
         when "01" => slv_ip2bus_data <= slv_reg0;
         when "10" => slv_ip2bus_data <= slv_reg1;
         when others => slv_ip2bus_data <= (others => '0');
      end case;
end process SLAVE_REG_READ_PROC;

IP2Bus_Data <= slv_ip2bus_data when slv_read_ack = '1' else (others => '0');
IP2Bus_WrAck <= slv_write_ack;
IP2Bus_RdAck <= slv_read_ack;
IP2Bus_Error <= '0';

-- Extracción de señales del registro de control
dir      <= slv_reg0(31); -- Dirección de giro (bit 31)
stop     <= slv_reg0(30); -- Parada (bit 30)
halfstep <= slv_reg0(29); -- Medio paso o paso completo (bit 29)
num_steps <= slv_reg0(25 downto 28); -- Número de pasos (bits 25-28)

-- Contador de pasos realizados
STEP_COUNTER: process(clk_div, Bus2IP_Reset, stop)
   begin
      if Bus2IP_Reset = '1' then
         step_count <= (others => '0');
      elsif rising_edge(clk_div) then
         if stop = '1' then
               step_count <= step_count; -- Detener el conteo
         else
               step_count <= step_count + 1; -- Incrementar pasos realizados
         end if;
      end if;
end process;

slv_reg1 <= step_count;

-- Instancia del motor
motor_inst: entity work.motorstep
    port map(
        clk       => clk_div,     -- Reloj dividido
        rst       => Bus2IP_Reset,
        dir       => dir,
        stop      => stop,
        halfstep  => halfstep,
        motor     => motor,
        step      => step
    );

end IMP;