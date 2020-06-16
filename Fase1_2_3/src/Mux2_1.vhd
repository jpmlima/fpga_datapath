library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2_1 is
generic(size :integer :=5);	--para parametrizacao dos vetores
	
	port(sel 		: 	in	 std_logic;
		  input0 	: 	in	 std_logic_vector(size-1 downto 0);
		  input1 	:	in	 std_logic_vector(size-1 downto 0);		  
		  muxOut		:	out std_logic_vector(size-1 downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
	process(sel,input0, input1)
	begin
		if (sel = '0') then
			muxOut <= input0;
		else
			muxOut <= input1;
		end if;
	end process;
end Behavioral;
