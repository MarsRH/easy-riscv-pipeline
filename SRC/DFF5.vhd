LIBRARY IEEE;  
USE IEEE.STD_LOGIC_1164.ALL;  

ENTITY DFF5 IS  
    PORT (  
        CLK : IN STD_LOGIC;  
        D   : IN STD_LOGIC_VECTOR(4 DOWNTO 0);  -- 32-bit input  
        Q   : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)  -- 32-bit output  
    );  
END DFF5;  

ARCHITECTURE bhv OF DFF5 IS  
    SIGNAL Q_internal : STD_LOGIC_VECTOR(4 DOWNTO 0);  -- Internal signal for storage  
BEGIN  
    PROCESS (CLK)  
    BEGIN  
        IF CLK'EVENT AND CLK = '1' THEN  
            Q_internal <= D;  -- On clock edge, load the input data into internal storage  
        END IF;	  
    END PROCESS;  
	Q <= Q_internal; 

END bhv;