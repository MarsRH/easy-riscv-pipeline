library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--! 32bit Risc-v ALU
entity ALU32 is port (
--! Control
S : in std_logic_vector(3 downto 0);
--! Data in
A : in std_logic_vector(31 downto 0);
B : in std_logic_vector(31 downto 0);
--! Mode select(Logic|Mathmatic)
M : in std_logic;
--! Carry bits in
CN : in std_logic;

--! Result output
F : out std_logic_vector(31 downto 0);
--! Carry bits out
COUT : out std_logic_vector(3 downto 0);
--! 
CO : out std_logic;
--! 
FZ : out std_logic
);
end ALU32;

architecture behaviour of ALU32 is
signal A9 , B9 , F9 : std_logic_vector(32 downto 0);
Begin
A9 <= '0' & A ; B9 <= '0' & B ;
process( M , CN , A9 , B9 )
begin

case S is
when "0000" => if M = '0' then F9 <= A9 + CN ;	else F9 <= not A9 ; end if;
when "0001" => if M = '0' then F9 <= A9 or B9 + CN ;	else F9 <= not ( A9 or B9 ); end if;
when "0010" => if M = '0' then F9 <= A9 or (not B9) + CN ;	else F9 <= (not A9) and B9 ; end if;
when "0011" => if M = '0' then F9 <= "000000000000000000000000000000000" - (not CN)  ;	
					else F9 <= "000000000000000000000000000000000" ; end if;
when "0100" => if M = '0' then F9 <= A9 and (not B9) + A9 + CN ;	else F9 <= not ( A9 and B9 ) ; end if;
when "0101" => if M = '0' then F9 <= ( A9 and (not B9) ) + ( A9 or B9 ) + CN ;	else F9 <= not B9 ; end if;
when "0110" => if M = '0' then F9 <= A9 - B9 + CN ;	else F9 <= not ( A9 and (not B9) ) or ( B9 and (not A9) ); end if;
when "0111" => if M = '0' then F9 <= A9 or (not B9) + CN ;	else F9 <= A9 and (not B9) ; end if;
when "1000" => if M = '0' then F9 <= A9 + ( A9 and B9 ) + CN ;	else F9 <= (not A9) or B9 ; end if;
when "1001" => if M = '0' then F9 <= A9 + B9 + CN ;	else F9 <= not ( A9 and B9 ) or ( (not B9) and (not A9) ) ; end if;
when "1010" => if M = '0' then F9 <= ( A9 or (not B9) ) + ( A9 and B9 ) + CN ;	else F9 <= B9 ; end if;
when "1011" => if M = '0' then F9 <= ( A9 and B9 ) + CN ;	else F9 <= A9 and B9  ; end if;
when "1100" => if M = '0' then 
				if CN = '0' then F9 <= A9 + A9 + A9 ;	else F9 <= A9 + A9 + 1 ; end if;
			   else F9 <= "000000000000000000000000000000001" ; end if; 
when "1101" => if M = '0' then F9 <= ( A9 or B9 ) + A9 + CN ;	else F9 <= A9 or (not B9) ; end if;
when "1110" => if M = '0' then F9 <= ( A9 or (not B9) ) + A9 + CN ;	else F9 <= A9 or B9 ; end if;
when "1111" => if M = '0' then F9 <= A9 - CN ;	else F9 <= A9 ; end if;
when others => F9 <= "000000000000000000000000000000000";
end case;

--if ( A9 = B9 ) then FZ <= '1' ; end if ;
if F9 = "000000000000000000000000000000000" then FZ <= '1'; else FZ <= '0'; end if;

end process;

F <= F9(31 downto 0) ;
CO <= F9(32);
COUT <= "0000" when F9(32) = '0' else "0001" ;

end behaviour;