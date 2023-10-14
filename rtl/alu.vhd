----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2022 16:23:03
-- Design Name: 
-- Module Name: alu - Behavioral
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
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    Port ( a1,a2 : in STD_LOGIC_VECTOR (31 downto 0);
            opcode: in std_logic_vector(3 downto 0);
            
           alu_sal : out STD_LOGIC_VECTOR (31 downto 0));
end alu;

architecture Behavioral of alu is
signal temp: unsigned(31 downto 0) := (others=>'0');
begin
process(opcode,a1,a2)

begin 
case opcode is 
when "0000" => alu_sal <= a1+a2;
when "0001" => alu_sal<= a1-a2;
when "0010" => alu_sal <= std_logic_vector(shift_left (unsigned(a1),to_integer(unsigned(a2))));--sll
when "0100" => if signed(a1)<signed(a2) then 
alu_sal(0)<='1'; 
else alu_sal<=(others=>'0'); end if; -- set if less than 

when "0110" => if unsigned(a1)< unsigned(a2) then 
alu_sal(0)<='1'; 
else alu_sal<=(others=>'0'); end if;-- set if less than unsigned

when "1000" => alu_sal<= a1 xor a2;

when "1010" => alu_sal <= std_logic_vector(shift_right (unsigned(a1),to_integer(unsigned(a2))));--srl

when "1011" => alu_sal <= std_logic_vector(shift_right (signed(a1),to_integer(unsigned(a2))));--sra

when "1100" => alu_sal<= a1 or a2;-- or 
when "1110" => alu_sal<= a1 and a2; -- and

when "1111"=> if a1 = a2 then alu_sal(0)<='1';
 else alu_sal(0)<='0'; end if; -- eq

when others => alu_sal  <= (others=>'0');
end case; 

end process;

end Behavioral;
