--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:29:10 06/05/2022
-- Design Name:   
-- Module Name:   C:/Users/Bartosz/Desktop/Studia/VI semestr/UCIWS2/Organki-Gorecki-Szymczak/etap2test.vhd
-- Project Name:  Organki-Gorecki-Szymczak
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: etap2
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
 
ENTITY etap2test IS
END etap2test;
 
ARCHITECTURE behavior OF etap2test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT etap2
    PORT(
         DO : IN  std_logic_vector(7 downto 0);
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         DO_Rdy : IN  std_logic;
         NOTE : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal DO_Rdy : std_logic := '0';

 	--Outputs
   signal NOTE : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: etap2 PORT MAP (
          DO => DO,
          E0 => E0,
          F0 => F0,
          DO_Rdy => DO_Rdy,
          NOTE => NOTE
        );
 
	DO_Rdy <= '1', '0' after 550 ns;
	F0 <= '0';
	DO <= X"1C", X"1D" after 100 ns, X"1B" after 200 ns, X"24" after 300 ns, X"23" after 400 ns,
	X"1C" after 500 ns, X"1D"after 600 ns;

END;
