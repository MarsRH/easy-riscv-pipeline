LIBRARY IEEE;  
USE IEEE.STD_LOGIC_1164.ALL;  

ENTITY DFF4 IS  
    PORT (  
        CLK : IN STD_LOGIC;  
        D   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);  -- 32-bit input  
        Q   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)  -- 32-bit output  
    );  
END DFF4;  

ARCHITECTURE bhv OF DFF4 IS  
    SIGNAL Q_internal : STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Internal signal for storage  
BEGIN  
    PROCESS (CLK)  
    BEGIN  
        IF CLK'EVENT AND CLK = '1' THEN  
            Q_internal <= D;  -- On clock edge, load the input data into internal storage  
        END IF;
		  IF CLK'EVENT AND CLK = '0' THEN  
            Q <= Q_internal;  -- On clock edge, load the input data into internal storage  
        END IF;	  
    END PROCESS;  
 
END bhv;