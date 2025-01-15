library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- 使用NUMERIC_STD库来处理无符号数

-- 定义实体
entity add4 is
    Port ( clk : in STD_LOGIC;        -- 时钟信号
           input_signal : in STD_LOGIC_VECTOR(31 downto 0); -- 32位输入信号
           output_signal : out STD_LOGIC_VECTOR(31 downto 0)  -- 32位输出信号
           );
end add4;

-- 实现架构
architecture Behavioral of add4 is
begin
    -- 进程，在时钟边沿触发
    process(clk)
    variable temp_output : unsigned(31 downto 0);
    begin
        if rising_edge(clk) then
            temp_output := unsigned(input_signal) + to_unsigned(1, 32);
            -- 在时钟上升沿，对输入信号加4
            output_signal <= std_logic_vector(temp_output);
        end if;
    end process;
end Behavioral;
