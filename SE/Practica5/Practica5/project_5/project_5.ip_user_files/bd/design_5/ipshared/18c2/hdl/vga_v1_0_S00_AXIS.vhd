library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_Stream_VGA_1600x900_core is
	generic (
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        hsyncb  : out std_logic;	-- horizontal (line) sync
        vsyncb  : out std_logic;	-- vertical (frame) sync
        red     : out std_logic_vector(3 downto 0);	-- red color
        green   : out std_logic_vector(3 downto 0);	-- green color
        blue    : out std_logic_vector(3 downto 0);	-- blue color
        switch : in std_logic_vector(7 downto 0);
		-- User ports ends

		-- Ports of Axi Stream Slave Bus Interface S00_AXIS
		s_axis_aclk	  : in std_logic;
		s_axis_aresetn  : in std_logic;
		s_axis_tready	  : out std_logic;
		s_axis_tdata	  : in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tlast	  : in std_logic;
		s_axis_tvalid	  : in std_logic
	);
end AXI_Stream_VGA_1600x900_core;

architecture arch_imp of AXI_Stream_VGA_1600x900_core is

	-- component declaration
	component AXI_Stream_FIFO is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
        DATA_READ: out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
        DATA_READ_VALID: out std_logic;
        DATA_READ_READY: in std_logic; 		
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component AXI_Stream_FIFO;
	
    component display_image is
        port(
         switch : in std_logic_vector(7 downto 0);
            clk_100mhz          : in  std_logic;
            reset               : in  std_logic;
            load_new_pixel      : in  std_logic;
            color_new_pixel     : in  std_logic_vector(11 downto 0);
            row_new_pixel       : in  std_logic_vector(3 downto 0);
            col_new_pixel       : in  std_logic_vector(3 downto 0);
            hout, vout          : out std_logic;
            rout, gout, bout    : out std_logic_vector(3 downto 0));
    end component;	

    signal load_new_pixel   : std_logic;
    signal color_new_pixel  : std_logic_vector(11 downto 0);
    signal row_new_pixel    : std_logic_vector(3 downto 0);
    signal col_new_pixel    : std_logic_vector(3  downto 0);
    
    signal DATA_READ: std_logic_vector(32-1 downto 0);
    signal DATA_READ_VALID: std_logic;
    signal DATA_READ_READY: std_logic;   

begin

-- Instantiation of AXI Stream FIFO
AXI_Stream_FIFO_inst : AXI_Stream_FIFO
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> 32
	)
	port map (
	    DATA_READ	    => DATA_READ,
        DATA_READ_VALID	=> DATA_READ_VALID,
        DATA_READ_READY	=> DATA_READ_READY, 
		S_AXIS_ACLK	    => s_axis_aclk,
		S_AXIS_ARESETN	=> s_axis_aresetn,
		S_AXIS_TREADY	=> s_axis_tready,
		S_AXIS_TDATA	=> s_axis_tdata,
		S_AXIS_TLAST	=> s_axis_tlast,
		S_AXIS_TVALID	=> s_axis_tvalid
	);

	-- Add user logic here		
    load_new_pixel <= DATA_READ_VALID;	
	DATA_READ_READY <= '1'; -- Ordeno la lectura siempre
	
	color_new_pixel  <= DATA_READ(11 downto 0);
    row_new_pixel    <= DATA_READ(15 downto 12);
    col_new_pixel    <= DATA_READ(19 downto 16);
	
display_image_inst: display_image
    port map (
     switch => switch,
        clk_100mhz          => s_axis_aclk,
        reset               => s_axis_aresetn,
        load_new_pixel      => load_new_pixel,
        color_new_pixel     => color_new_pixel,
        row_new_pixel       => row_new_pixel,
        col_new_pixel       => col_new_pixel,
        hout                => hsyncb,
        vout                => vsyncb,
        rout                => red,
        gout                => green, 
        bout                => blue
     );
	-- User logic ends

end arch_imp;
