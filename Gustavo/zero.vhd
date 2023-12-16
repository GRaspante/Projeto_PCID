----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo Raspante Faria
-- 
-- Create Date: 15.12.2023 22:31:15
-- Design Name: 
-- Module Name: zero - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity zero is
    Port ( Rp_data : in STD_LOGIC_VECTOR (15 downto 0);
           RF_Rp_zero : out STD_LOGIC);
end zero;

architecture Behavioral of zero is

begin
with Rp_data select 
    RF_Rp_zero <= '1' when "0000000000000000",
                  '0' when others;        
                  
end Behavioral;
