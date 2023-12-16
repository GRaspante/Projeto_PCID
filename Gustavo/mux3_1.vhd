----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo Raspante Faria
-- 
-- Create Date: 15.12.2023 22:31:15
-- Design Name: 
-- Module Name: mux3_1 - Behavioral
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

entity mux3_1 is
    Port ( RF_W_data : in STD_LOGIC_VECTOR (7 downto 0);
           R_data : in STD_LOGIC_VECTOR (15 downto 0);
           alu_out : in STD_LOGIC_VECTOR (15 downto 0);
           RF_s0 : in STD_LOGIC;
           RF_s1 : in STD_LOGIC;
           mux_out : out STD_LOGIC_VECTOR (15 downto 0));
end mux3_1;

architecture Behavioral of mux3_1 is
signal ctrl_mux: std_logic_vector(1 downto 0);
begin
ctrl_mux <= RF_s1 & RF_s0;

with ctrl_mux select
    mux_out <= alu_out when "00",
               R_data when "01",
               "00000000" & RF_W_data when others; --completa os 16bits
end Behavioral;
