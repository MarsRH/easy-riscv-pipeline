library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.NUMERIC_STD.ALL; -- 使用 numeric_std 替代 unsigned 和 arith  

entity Control is  
    Port (  
        input_data  : in  STD_LOGIC_VECTOR(31 downto 0); -- 32位输入数据  
        output_data : out STD_LOGIC_VECTOR(7 downto 0)  -- 32位输出数据  
    );  
end Control;  

architecture Behavioral of Control is  
begin  
    process(input_data)  
    begin  
        case input_data(6 downto 0) is  
            when "0110011" =>  
                output_data <= "01000010"; -- 输出32位全零  
            when "0000011" =>  
                output_data <= "11100100"; -- 符号扩展  
            when "0100011" =>  
                output_data <= "00010100"; -- 符号扩展  
            when "1100011" =>  
                output_data <= "00001001"; -- 符号扩展  
            when others =>  
                output_data <= (others => '0'); -- 默认情况下可以输出为0  
        end case;  
    end process;  
end Behavioral;