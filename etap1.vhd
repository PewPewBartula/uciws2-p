----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:07 03/29/2022 
-- Design Name: 
-- Module Name:    etap1 - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity etap1 is
    Port ( clk : in  STD_LOGIC;
			  NOTE : in STD_LOGIC_VECTOR (3 downto 0);
           data : out  STD_LOGIC_VECTOR (11 downto 0);
           adr : out  STD_LOGIC_VECTOR (3 downto 0);
           start : out  STD_LOGIC;
           cmd : out  STD_LOGIC_VECTOR (3 downto 0));
end etap1;

architecture Behavioral of etap1 is
signal counter : std_logic_vector(3 downto 0) := "0000";
signal nextcounter : std_logic_vector(3 downto 0) := "0000";
signal innercounter : unsigned(15 downto 0) := "0000000000000000";
signal notecode : unsigned(15 downto 0) := "0000000000000000";
begin

readNote: process (NOTE, notecode)
begin
	if NOTE = "0000" then
		notecode <= "0000000000000000";
	elsif NOTE = "0001" then
		notecode <= "0001011101010001";
	elsif NOTE = "0010" then
		notecode <= "0001011000000101";
	elsif NOTE = "0011" then
		notecode <= "0001010011001000";
	elsif NOTE = "0100" then
		notecode <= "0001001110011001";
	elsif NOTE = "0101" then
		notecode <= "0001001010000100";
	elsif NOTE = "0110" then
		notecode <= "0001000101111010";
	elsif NOTE = "0111" then
		notecode <= "0001000001111111";
	elsif NOTE = "1000" then
		notecode <= "0000111110010010";
	elsif NOTE = "1001" then
		notecode <= "0000111010110010";
	elsif NOTE = "1010" then
		notecode <= "0000110111011111";
	elsif NOTE = "1011" then
		notecode <= "0000110100010111";
	elsif NOTE = "1100" then
		notecode <= "0000110001011011";
	end if;
end process;

send: process(clk, counter, innercounter, nextcounter)
begin
adr <= "1111";
cmd <= "0011";
counter <= nextcounter;
data <= counter & "00000000";

if rising_edge(clk) then
		if innercounter = notecode then
			start <= '1';
		else 
			start <= '0';
		end if;
	end if;
end process;

count: process (clk)
begin
if rising_edge(clk) then
	innercounter <= innercounter + 1;
	if(innercounter = notecode) then
		nextcounter <= std_logic_vector(unsigned(counter) + 1);
		innercounter <= "0000000000000000";
	end if;
end if;
end process;


end Behavioral;

