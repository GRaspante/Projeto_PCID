----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo
-- 
-- Create Date: 15.12.202s3 23:35:03
-- Design Name: 
-- Module Name: zero_tb - Behavioral
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

entity zero_tb is
--  Port ( );
end zero_tb;

architecture Behavioral of zero_tb is
component zero is
Port ( Rp_data : in STD_LOGIC_VECTOR (15 downto 0);
           RF_Rp_zero : out STD_LOGIC);
end component;
signal  RF_Rp_zero : STD_LOGIC;
signal Rp_data : STD_LOGIC_VECTOR (15 downto 0);

begin
uut: zero port map (Rp_data => Rp_data,
                    RF_Rp_zero => RF_Rp_zero);
                    
stimulus: process begin
            Rp_data <= "0000000000000000";
            wait for 5 ns;
            Rp_data <= "0000000000000001";
            wait;
          end process;

end Behavioral;
