----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo
-- 
-- Create Date: 15.12.2023 23:35:03
-- Design Name: 
-- Module Name: IR_tb - Behavioral
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

entity IR_tb is
--  Port ( );
end IR_tb;

architecture Behavioral of IR_tb is
component IR is
Port ( clk : in STD_LOGIC;
           IR_ld : in STD_LOGIC;
           IR_data : in STD_LOGIC_VECTOR (15 downto 0);
           IR_out : out STD_LOGIC_VECTOR (15 downto 0));
end component;
signal clk, IR_ld : STD_LOGIC;
signal IR_data, IR_out : STD_LOGIC_VECTOR (15 downto 0);

begin
uut: IR port map (clk => clk,
                    IR_ld => IR_ld,
                    IR_data => IR_data,
                    IR_out => IR_out);
                    
sclk: process 
begin  
clk <= '0';
wait for 5ns;
clk <= '1';
wait for 5ns;            
end process;

                    
stimulus: process begin
            IR_ld <= '0';            
            wait for 10ns;
            IR_ld <= '1';
            IR_data <= "0000000011110000";
            wait;
          end process;

end Behavioral;
