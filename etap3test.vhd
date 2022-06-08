--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:43:46 06/06/2022
-- Design Name:   
-- Module Name:   C:/Users/Bartosz/Desktop/Studia/VI semestr/UCIWS2/Organki-Gorecki-Szymczak/etap3test.vhd
-- Project Name:  Organki-Gorecki-Szymczak
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: etap3
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY etap3test IS
END etap3test;
 
ARCHITECTURE behavior OF etap3test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT etap3
    PORT(
         NOTE : IN  std_logic_vector(3 downto 0);
         Char_DI : OUT  std_logic_vector(7 downto 0);
         NewLine : OUT  std_logic;
         ScrollEn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal NOTE : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Char_DI : std_logic_vector(7 downto 0);
   signal NewLine : std_logic;
   signal ScrollEn : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: etap3 PORT MAP (
          NOTE => NOTE,
          Char_DI => Char_DI,
          NewLine => NewLine,
          ScrollEn => ScrollEn
        );
	
	NOTE <= "0001", "0010" after 100 ns, "0011" after 200 ns, "0100" after 300 ns, 
	"0101" after 400 ns, "0110" after 500 ns;

END;
