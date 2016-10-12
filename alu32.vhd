
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity alu32 is
    Port ( crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ucalu : in  STD_LOGIC_VECTOR (5 downto 0);
           alu_result : out  STD_LOGIC_VECTOR (31 downto 0));
end alu32;

architecture arq_alu of alu32 is

begin

process(crs1,crs2,ucalu)
	begin
		if(ucalu = "000000")then  --suma
			alu_result <= crs1 + crs2;
		end if;
		
		if(ucalu = "000111")then --sub
			alu_result <= crs1 - crs2;
		end if;
		
		if(ucalu = "000001")then --and
			alu_result <= (crs1 and crs2);
		end if;
		
		if(ucalu = "000010")then --nand
			alu_result <= (crs1  nand crs2);
		end if;
		
		if(ucalu = "000011")then -- or
			alu_result <= (crs1 or crs2);
		end if;
		
		if(ucalu = "000110")then --nor
			alu_result <=(crs1 nor crs2);
		end if;
		
		if(ucalu = "000101")then --xor
			alu_result <= (crs1 xor crs2);
		end if;	
		
		if(ucalu = "000110")then --xnor
			alu_result <= (crs1 xnor crs2);
		end if;	

end process;

end arq_alu;

