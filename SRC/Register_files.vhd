library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! @brief 32-bit RISC-V register file.
entity register_files is
	port(
		clk    : in std_logic;

		-- Read port 1:
		rs1_addr : in  std_logic_vector(4 downto 0);
		rs1_data : out std_logic_vector(31 downto 0);

		-- Read port 2:
		rs2_addr : in  std_logic_vector(4 downto 0);
		rs2_data : out std_logic_vector(31 downto 0);

		-- Write port:
		rd_addr  : in std_logic_vector(4 downto 0);
		rd_data  : in std_logic_vector(31 downto 0);
		rd_write : in std_logic
	);
end entity register_files;

architecture behaviour of register_files is

	--! Register array type.
	type regfile_array is array(0 to 31) of std_logic_vector(31 downto 0);

begin

	regfile: process(clk)
		variable registers : regfile_array := (others => (others => '0'));
	begin
		if rising_edge(clk) then
				if rd_write = '1' and rd_addr /= b"00000" then
					registers(to_integer(unsigned(rd_addr))) := rd_data;
				end if;

				rs1_data <= registers(to_integer(unsigned(rs1_addr)));
				rs2_data <= registers(to_integer(unsigned(rs2_addr)));
		end if;
	end process regfile;
	

end architecture behaviour;
