----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo
-- 
-- Create Date: 15.12.2023 23:35:03
-- Design Name: 
-- Module Name: mux3_tb - Behavioral
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

entity mux3_tb is
--  Port ( );
end mux3_tb;

architecture Behavioral of mux3_tb is
component mux3_1 is
    Port ( RF_W_data : in STD_LOGIC_VECTOR (7 downto 0);
           R_data : in STD_LOGIC_VECTOR (15 downto 0);
           alu_out : in STD_LOGIC_VECTOR (15 downto 0);
           RF_s0 : in STD_LOGIC;
           RF_s1 : in STD_LOGIC;
           mux_out : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal RF_s0, RF_s1: STD_LOGIC;
signal R_data, alu_out, mux_out: STD_LOGIC_VECTOR (15 downto 0);
signal RF_W_data: STD_LOGIC_VECTOR (7 downto 0);
begin
uut: mux3_1 port map (RF_W_data => RF_W_data,
                    R_data => R_data,
                    alu_out => alu_out,
                    RF_s0 => RF_s0,
                    RF_s1 => RF_s1,
                    mux_out => mux_out);
                    
stimulus: process begin
            RF_s1 <= '0';
            RF_s0 <= '0';
            RF_W_data <= "00000000";
            R_data <= "0000000011111111";
            alu_out <= "0000111111110000";
            wait for 10ns;
            RF_s1 <= '0';
            RF_s0 <= '1';
            wait for 10ns;
            RF_s1 <= '1';
            RF_s0 <= '0';
            wait;
          end process;

end Behavioral;
