
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity ucontrol is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ucout : out  STD_LOGIC_VECTOR (5 downto 0));
end ucontrol;

architecture arq_uc of ucontrol is

begin
	process(op,op3)
		begin
		
		if(op = "10")then
			
			if(op3 = "000000")then --add
				ucout <= "000000";
			end if;
			
			if(op3 = "000001")then --and
				ucout <= "000001";
			end if;
			
			if(op3 = "000101")then --nand
				ucout <= "000010";
			end if;
			
			if(op3 = "000010")then --or
				ucout <= "000011";
			end if;
			
			if(op3 = "000110")then --nor
				ucout <= "000100";
			end if;
			
			if(op3 = "000011")then --xor
				ucout <= "000101";
			end if;
			
			if(op3 = "000111")then --xnor
				ucout <= "000110";
			end if;
			
			if(op3 = "000100")then --sub
				ucout <= "000111";
			end if;
			
			
			
		end if;
	
	end process;

end arq_uc;

