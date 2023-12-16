----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo
-- 
-- Create Date: 15.12.2023 23:35:03
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is
component alu is
    Port ( alu_s0 : in STD_LOGIC;
           alu_s1 : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           alu_out : out STD_LOGIC_VECTOR (15 downto 0));
end  component;

signal alu_s0, alu_s1: STD_LOGIC;
signal a, alu_out, b: STD_LOGIC_VECTOR (15 downto 0);

begin
uut: alu port map (alu_s0 => alu_s0,
                    alu_s1 => alu_s1,
                    alu_out => alu_out,
                    a => a,
                    b => b);
                    
stimulus: process begin
            alu_s1 <= '0';
            alu_s0 <= '0';            
            a <= "0000111111110000";
            b <= "0000111100001111";
            wait for 10ns;
            alu_s1 <= '0';
            alu_s0 <= '1';
            wait for 10ns;
            alu_s1 <= '1';
            alu_s0 <= '0';
            wait;
          end process;

end Behavioral;
