----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2022 22:26:13
-- Design Name: 
-- Module Name: cont - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cont is
    Port ( clk : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (12 downto 0);
           sal : out STD_LOGIC_VECTOR (12 DOWNTO 0)
           );
end cont;

architecture Behavioral of cont is
signal temp: std_logic_vector(12 downto 0):=(others=>'0');
begin
process(clk)
begin
if rising_edge(clk) then 
temp<= din;
else 
temp<=temp;
end if; 

end process;
sal<=temp; 
end Behavioral;
