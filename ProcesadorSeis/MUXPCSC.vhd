
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXPCSC is
    Port ( CALL : in  STD_LOGIC_VECTOR (31 downto 0);
           BRANCH : in  STD_LOGIC_VECTOR (31 downto 0);
           nPC : in  STD_LOGIC_VECTOR (31 downto 0);
           JUMP : in  STD_LOGIC_VECTOR (31 downto 0);
           PCSC : in  STD_LOGIC_VECTOR (1 downto 0);
           nPCOut : out  STD_LOGIC_VECTOR (31 downto 0));
end MUXPCSC;

architecture arq_MUXPCSC of MUXPCSC is

begin

process (CALL,BRANCH,nPC,JUMP,PCSC) begin
	
	case (PCSC) is 
		when "10" => 
		nPCOut <= CALL;
		when "11" =>
		nPCOut <= BRANCH;
		when "00" =>
		nPCOut <= nPC;
		when "01" =>
		nPCOut <= JUMP;
		when others => 
			nPCOut <= nPC;
	end case;
	
end process;


end arq_MUXPCSC;

