----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo Raspante Faria
-- 
-- Create Date: 15.12.2023 23:29:20
-- Design Name: 
-- Module Name: IR - Behavioral
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

entity IR is
    Port ( clk : in STD_LOGIC;
           IR_ld : in STD_LOGIC;
           IR_data : in STD_LOGIC_VECTOR (15 downto 0);
           IR_out : out STD_LOGIC_VECTOR (15 downto 0));
end IR;

architecture Behavioral of IR is

begin
    process(clk) begin
        if clk'event and clk='1' then
            if IR_ld = '1' then IR_out <= IR_data; --Com o sinal de controle acionado, a nova instrucao e enviada.
            end if;
        end if;
    end process;

end Behavioral;
