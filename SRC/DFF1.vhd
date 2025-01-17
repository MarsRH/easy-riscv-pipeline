LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ; 
ENTITY DFF1 IS
  PORT (CLK : IN STD_LOGIC ;
            D : IN STD_LOGIC ;
            Q : OUT STD_LOGIC );
 END ;
 ARCHITECTURE bhv OF DFF1 IS
  SIGNAL Q1 : STD_LOGIC ; --类似于在芯片内部定义一个数据的暂存节点
  BEGIN
   PROCESS (CLK,Q1)
    BEGIN
     IF  CLK'EVENT AND CLK = '1'    
         THEN  Q1 <= D ;    
     END IF; 
    END PROCESS ;
Q <= Q1 ;        --将内部的暂存数据向端口输出（双横线--是注释符号）
     END bhv;