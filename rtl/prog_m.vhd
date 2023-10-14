----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2022 19:49:08
-- Design Name: 
-- Module Name: prog_m - Behavioral
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

entity prog_m is
    Port ( a : in STD_LOGIC_VECTOR (12 downto 0);
           funct7 : out STD_LOGIC_VECTOR (6 downto 0);
           rs2 : out STD_LOGIC_VECTOR (4 downto 0);
           rs1 : out STD_LOGIC_VECTOR (4 downto 0);
           func3 : out STD_LOGIC_VECTOR (2 downto 0);
           rd : out STD_LOGIC_VECTOR (4 downto 0);
           opcode : out STD_LOGIC_VECTOR (6 downto 0)
           );
end prog_m;
architecture Behavioral of prog_m is
type ram is array(0 to 31) of std_logic_vector(31 downto 0);
signal temp: ram;
signal temp2: std_logic_vector(31 downto 0); 
begin
temp(0)<="00000000010100000000001110010011";-- addi reg 0 con 5 y guardar en reg 7
temp(1)<="00000000000000000000000110010011";-- addi reg 0 con el 5 y guardar en el 3 

temp(2)<="00000000010100111000001110010011";-- addi reg 7 con 5 y guadar en reg 7 
temp(3)<="00000000000100011000000110010011";--addi reeg 3 con y guardar en el reg 3 esencialmente un contador.

temp(4)<="00000000010100111000001110010011";-- addi reg 0 con 5 y guardar en reg 7
temp(5)<="00000000000100011000000110010011";--addi reeg 3 con y guardar en el reg 3 esencialmente un contador.

temp(6)<="00000000010100111000001110010011";-- addi reg 0 con 5 y guardar en reg 7
temp(7)<="00000000000100011000000110010011";--addi reeg 3 con y guardar en el reg 3 esencialmente un contador.

temp(8)<="11111110000000011100110111100011";--BLT

temp(9)<=(others=>'0');
temp(10)<=(others=>'0');

temp2<= temp(to_integer(unsigned(a)));
funct7<= temp2(31 downto 25);
rs2<= temp2(24 downto 20);
rs1<= temp2(19 downto 15);
func3<= temp2(14 downto 12);
rd<= temp2(11 downto 7);
opcode<= temp2(6 downto 0);




end Behavioral;
