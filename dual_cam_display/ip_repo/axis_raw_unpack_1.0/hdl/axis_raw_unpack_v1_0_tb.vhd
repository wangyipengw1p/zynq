library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use IEEE.numeric_std.all;

library STD;
use STD.textio.all;

entity axis_raw_unpack_v1_0_tb is
generic (
    C_M_AXIS_TDATA_WIDTH    : INTEGER               := 32;
    C_LANES                 : INTEGER range 1 to 4  := 4
);
end axis_raw_unpack_v1_0_tb;

architecture behav of axis_raw_unpack_v1_0_tb is
    component axis_raw_unpack_v1_0
        port (
    -- Ports of Axi Slave Bus Interface S_AXIS
            s_axis_aclk         : in  STD_LOGIC;
            s_axis_aresetn      : in  STD_LOGIC;
            s_axis_tready       : out STD_LOGIC;
            s_axis_tdata        : in  STD_LOGIC_VECTOR(31 downto 0);
            s_axis_tuser        : in  STD_LOGIC;
            s_axis_tlast        : in  STD_LOGIC;
            s_axis_tvalid       : in  STD_LOGIC;

            -- Ports of Axi Master Bus Interface M_AXIS
            m_axis_aclk         : in  STD_LOGIC;
            m_axis_aresetn      : in  STD_LOGIC;
            m_axis_tvalid       : out STD_LOGIC;
            m_axis_tdata        : out STD_LOGIC_VECTOR(15 downto 0);
            m_axis_tuser        : out STD_LOGIC;
            m_axis_tlast        : out STD_LOGIC;
            m_axis_tready       : in  STD_LOGIC
        );
    end component;

    function vec2str(vec: std_logic_vector) return string is
        variable result: string(vec'left + 1 downto 1);
        begin
          for i in vec'reverse_range loop
            if (vec(i) = '1') then
              result(i + 1) := '1';
            elsif (vec(i) = '0') then
              result(i + 1) := '0';
            else
              result(i + 1) := 'X';
            end if;
          end loop;
        return result;
    end;

    function to_std_logic(L: INTEGER) return std_ulogic is
        begin
            if (L = 1) then
                return('1');
            else
                return('0');
            end if;
    end function to_std_logic;

        signal clk, s_axis_tready, s_axis_tuser, s_axis_tlast, s_axis_tvalid, m_axis_aresetn, m_axis_tvalid, m_axis_tuser, m_axis_tlast, m_axis_tready : std_logic := '0';
        signal s_axis_tdata : std_logic_vector(31 downto 0);
        signal m_axis_tdata : std_logic_vector(15 downto 0);


        constant clk_period : time := 1 ns;
begin
    uut: axis_raw_unpack_v1_0 port map(
        s_axis_aclk => clk,
        s_axis_aresetn => '0',
        s_axis_tready => s_axis_tready,
        s_axis_tdata => s_axis_tdata,
        s_axis_tuser => s_axis_tuser,     
        s_axis_tlast => s_axis_tlast,      
        s_axis_tvalid => s_axis_tvalid,

            -- Ports of Axi Master Bus Interface M_AXIS
        m_axis_aclk => clk,
        m_axis_aresetn => m_axis_aresetn,
        m_axis_tvalid => m_axis_tvalid,
        m_axis_tdata => m_axis_tdata,
        m_axis_tuser => m_axis_tuser,
        m_axis_tlast => m_axis_tlast,
        m_axis_tready => m_axis_tready
    );

    clk_proc: process
    begin
        clk <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        clk <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
    end process clk_proc;


    lectura: process

        variable counter : integer := 0;

    begin

        s_axis_tdata <= x"12345678";
        m_axis_tready <= '1';

        while (counter /= 1000) loop

            --if (counter = 1) then
            --    m_axis_tready <= '0';
            --elsif (counter = 12) then
            --    m_axis_tready <= '1';
            --end if;
            counter := counter + 1;

            if (counter = 2) then
                if (s_axis_tready = '1') then
                    s_axis_tuser <= '1';
                    s_axis_tvalid <= '1';
                    s_axis_tdata <= std_logic_vector(unsigned(s_axis_tdata) + 1);  
                else 
                    counter := counter - 1;
                end if;
            elsif (counter = 3) then
                s_axis_tvalid <= '0';
            elsif (counter = 4) then
                if (s_axis_tready = '1') then

                    s_axis_tuser <= '0';
                    s_axis_tvalid <= '1';
                    s_axis_tdata <= std_logic_vector(unsigned(s_axis_tdata) + 1);  
                else 
                    counter := counter - 1;
                end if;
            elsif (counter = 5) then

                    s_axis_tvalid <= '0';
            elsif (counter = 6) then

                    s_axis_tuser <= '0';
                    s_axis_tvalid <= '1';
                    s_axis_tdata <= std_logic_vector(unsigned(s_axis_tdata) + 1);  
            elsif (counter = 36) then
                if (s_axis_tready = '1') then
                    s_axis_tlast <= '1';
                    s_axis_tvalid <= '1';
                    s_axis_tdata <= std_logic_vector(unsigned(s_axis_tdata) + 1);  
                else 
                    counter := counter - 1;
                end if;
                
            elsif (counter >= 37) then
                s_axis_tuser <= '0';
                s_axis_tlast <= '0';
                s_axis_tvalid <= '0';
            else
                if (s_axis_tready = '1') then
                    s_axis_tuser <= '0';
                    s_axis_tlast <= '0';
                    s_axis_tdata <= std_logic_vector(unsigned(s_axis_tdata) + 1);  
                    s_axis_tvalid <= '1';
                end if;
            end if;


            


            wait until rising_edge(clk);

        end loop;
        

        report "Finish";
        wait;
        
    end process;


end behav;