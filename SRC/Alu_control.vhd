library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_control is
	port(
		alu_op  : in std_logic_vector( 1 downto 0);
		funct3  : in std_logic_vector( 2 downto 0);
		funct7  : in std_logic_vector( 6 downto 0);

		operation : out std_logic_vector( 3 downto 0)
);
end alu_control;

architecture behaviour of alu_control is
begin

	decode_alu: process(alu_op, funct3, funct7)
	begin
		case alu_op is
			when b"00" =>	-- Load & Store
				--operation <= b"0010";
				operation <= b"1001";
				
			when b"01" =>	-- Branch if equal
				--operation <= b"0110";
				operation <= b"0110";
				
			when b"10" =>
				case funct3 is
					when b"000" =>
						if	funct7 = b"0000000" then
							-- Add
							--operation <= b"0010";
							operation <= b"1001";
							
						elsif funct7 = b"0100000" then
							-- Sub
							--operation <= b"0110";
							operation <= b"0110";

						end if;
					when b"111" =>	-- And
						--operation <= b"0000";
						operation <= b"1011";
						
					when b"110" =>	-- Or
						--operation <= b"0001";
						operation <= b"0001";
					when others =>
						operation <= b"0000";
				end case;
		when others =>
			operation <= b"0000";
		end case;
	end process decode_alu;

end architecture behaviour;