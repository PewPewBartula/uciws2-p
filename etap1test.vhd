--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:43:02 06/05/2022
-- Design Name:   
-- Module Name:   C:/Users/Bartosz/Desktop/Studia/VI semestr/UCIWS2/Organki-Gorecki-Szymczak/etap1test.vhd
-- Project Name:  Organki-Gorecki-Szymczak
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: etap1
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
 
ENTITY etap1test IS
END etap1test;
 
ARCHITECTURE behavior OF etap1test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT etap1
    PORT(
         clk : IN  std_logic;
         NOTE : IN  std_logic_vector(3 downto 0);
         data : OUT  std_logic_vector(11 downto 0);
         adr : OUT  std_logic_vector(3 downto 0);
         start : OUT  std_logic;
         cmd : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal NOTE : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(11 downto 0);
   signal adr : std_logic_vector(3 downto 0);
   signal start : std_logic;
   signal cmd : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: etap1 PORT MAP (
          clk => clk,
          NOTE => NOTE,
          data => data,
          adr => adr,
          start => start,
          cmd => cmd
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
 
	NOTE <= "0001";

END;
