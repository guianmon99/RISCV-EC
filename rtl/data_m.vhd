----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2022 19:17:33
-- Design Name: 
-- Module Name: data_m - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_m is
  Port (di:in std_logic_vector(31 downto 0);
        a :in std_logic_vector(31 downto 0);
        we,clk: in std_logic;
        dout:out std_logic_vector(31 downto 0));
end data_m;

architecture Behavioral of data_m is
type ram is array (0 to 255) of std_logic_vector(31 downto 0);
signal temp: ram;  
begin
process(clk)
begin 

if rising_edge(clk) then 
if (we='1') then 
temp(to_integer(unsigned(a)))<= di;
end if;
end if;

dout<= temp(to_integer(unsigned(a)));
end process;
dout<= temp(to_integer(unsigned(a)));


end Behavioral;
