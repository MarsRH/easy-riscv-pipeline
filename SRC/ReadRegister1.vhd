library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity ReadRegister1 is  
    Port (  
        input_data  : in  STD_LOGIC_VECTOR(31 downto 0); -- 32位输入数据  
        output_data : out STD_LOGIC_VECTOR(4 downto 0)   -- 5位输出数据（19到15位）  
    );  
end ReadRegister1;  

architecture Behavioral of ReadRegister1 is  
begin  
    process(input_data)  
    begin  
        output_data <= input_data(19 downto 15); -- 切片，获取第19到15位  
    end process;  
end Behavioral;