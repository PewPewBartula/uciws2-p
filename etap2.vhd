----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:17 04/12/2022 
-- Design Name: 
-- Module Name:    etap2 - Behavioral 
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

entity etap2 is
    Port ( 
           DO : in  STD_LOGIC_VECTOR(7 downto 0);
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           DO_Rdy : in  STD_LOGIC;
			  NOTE : out STD_LOGIC_VECTOR(3 downto 0));
end etap2;

architecture Behavioral of etap2 is

begin

readCode: process(DO,F0,DO_Rdy)
begin
	if DO_Rdy = '1' then
		if F0 = '0' then
			if DO = X"1C" then
				NOTE <= "0001";
			elsif DO = X"1D" then
				NOTE <= "0010";
			elsif DO = X"1B" then
				NOTE <= "0011";
			elsif DO = X"24" then
				NOTE <= "0100";
			elsif DO = X"23" then
				NOTE <= "0101";
			elsif DO = X"2B" then
				NOTE <= "0110";
			elsif DO = X"2D" then
				NOTE <= "0111";
			elsif DO = X"34" then
				NOTE <= "1000";
			elsif DO = X"2C" then
				NOTE <= "1001";
			elsif DO = X"33" then
				NOTE <= "1010";
			elsif DO = X"35" then
				NOTE <= "1011";
			elsif DO = X"3B" then
				NOTE <= "1100";
			end if;
		elsif F0 = '1' then
				NOTE <= "0000";
		end if;
	end if;
end process;


end Behavioral;

