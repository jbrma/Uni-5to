library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line
        hsyncb  : out std_logic;	-- horizontal (line) sync
        vsyncb  : out std_logic;	-- vertical (frame) sync
        red     : out std_logic_vector(3 downto 0);	-- red color
        green   : out std_logic_vector(3 downto 0);	-- green color
        blue    : out std_logic_vector(3 downto 0);	-- blue color
        switch : in std_logic_vector(7 downto 0);

		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic
	);
end vga_v1_0;

architecture arch_imp of vga_v1_0 is

	-- component declaration
	component AXI_Stream_VGA_1600x900_core is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		  hsyncb  : out std_logic;	-- horizontal (line) sync
        vsyncb  : out std_logic;	-- vertical (frame) sync
        red     : out std_logic_vector(3 downto 0);	-- red color
        green   : out std_logic_vector(3 downto 0);	-- green color
        blue    : out std_logic_vector(3 downto 0);	-- blue color
        switch : in std_logic_vector(7 downto 0);
		
		s_axis_aclk	: in std_logic;
		s_axis_aresetn	: in std_logic;
		s_axis_tready	: out std_logic;
		s_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tvalid	: in std_logic
		);
	end component AXI_Stream_VGA_1600x900_core;

begin

-- Instantiation of Axi Bus Interface S00_AXIS
vga_v1_0_S00_AXIS_inst : AXI_Stream_VGA_1600x900_core
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_TDATA_WIDTH
	)
	port map (
	    hsyncb => hsyncb,
        vsyncb => vsyncb,
        red => red,
        green => green,
        blue => blue,
        switch => switch,
	
		s_axis_aclk	=> s00_axis_aclk,
		s_axis_aresetn	=> s00_axis_aresetn,
		s_axis_tready	=> s00_axis_tready,
		s_axis_tdata	=> s00_axis_tdata,
		s_axis_tlast	=> s00_axis_tlast,
		s_axis_tvalid	=> s00_axis_tvalid
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
