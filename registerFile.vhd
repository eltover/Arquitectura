library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registerFile is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0);
           crd : out  STD_LOGIC_VECTOR (31 downto 0));
end registerFile;

architecture Behavioral of registerFile is

type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);
signal RF: rom_type:=(others => "00000000000000000000000000000000");

begin

process(rs1, rs2, rd, DWR, reset)

begin
	if (reset = '1') then
		RF(0) <= "00000000000000000000000000000000";
		crs1 <= (others => '0');
		crs2 <= (others => '0');
		
	else
		crs1 <= RF(conv_integer(rs1));
		crs2 <= RF(conv_integer(rs2));
		if (rd /= "00000") then
		
			RF(conv_integer(rd)) <= DWR;
			
		end if;	
	end if;
end process;

end Behavioral;


