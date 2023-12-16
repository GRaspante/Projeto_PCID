----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Gustavo Raspante Faria
-- 
-- Create Date: 15.12.2023 22:31:15
-- Design Name: 
-- Module Name: alu - Behavioral
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
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    Port ( alu_s0 : in STD_LOGIC;
           alu_s1 : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           alu_out : out STD_LOGIC_VECTOR (15 downto 0));
end alu;

architecture Behavioral of alu is
signal ctrl: std_logic_vector(1 downto 0);
signal bn, soma, sub: STD_LOGIC_VECTOR (15 downto 0);

begin
ctrl <= alu_s1 & alu_s0;
bn <= not b when alu_s1 = '1' else b;--Se a operacao for subtracao o valor de b e invertido
soma <= a + bn;--Se alu_s1 for 1 ocorre o complemento de 2 e a subtracao e realizada
sub <= a + bn + alu_s1;
with ctrl select
    alu_out <= a when "00",
             sub when "10",
             soma when others;
end Behavioral;
