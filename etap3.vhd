----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:03 05/10/2022 
-- Design Name: 
-- Module Name:    etap3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity etap3 is
    Port ( NOTE : in  STD_LOGIC_VECTOR(3 downto 0);
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           NewLine : out  STD_LOGIC;
           ScrollEn : out  STD_LOGIC);
end etap3;

architecture Behavioral of etap3 is

begin
ScrollEn <= '1';

Code: process (NOTE)
begin
	if NOTE = "0001" then
		Char_DI <= X"43";
	elsif NOTE = "0010" then
		Char_DI <= X"63";
	elsif NOTE = "0011" then
		Char_DI <= X"44";
	elsif NOTE = "0100" then
		Char_DI <= X"64";
	elsif NOTE = "0101" then
		Char_DI <= X"45";
	elsif NOTE = "0110" then
		Char_DI <= X"46";
	elsif NOTE = "0111" then
		Char_DI <= X"66";
	elsif NOTE = "1000" then
		Char_DI <= X"47";
	elsif NOTE = "1001" then
		Char_DI <= X"67";
	elsif NOTE = "1010" then
		Char_DI <= X"41";
	elsif NOTE = "1011" then
		Char_DI <= X"61";
	elsif NOTE = "1100" then
		Char_DI <= X"48";
	end if;
end process;

end Behavioral;

