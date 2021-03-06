library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity Pc is

	port(
		load : in  std_logic;
		rst  : in  std_logic;
		clk  : in  std_logic;
		EN   : in  std_logic;
		
		newpc : in std_logic_vector(7 downto 0);
		Cnt  : out std_logic_vector(7 downto 0));
end Pc;

architecture Behavioral of Pc is
	signal addr : unsigned(7 downto 0);
begin
	process(EN,clk,rst)
	begin
		if rst = '1' then
			addr <= (others => '0');
		elsif rising_edge(clk) then
			if (EN = '1') then
				addr <= addr + '1';
			elsif (load = '1') then 
				addr <= unsigned(newpc);
			end if;
		end if;
	end process;
	Cnt <= std_logic_vector(addr);
end Behavioral;
