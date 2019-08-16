library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use IEEE.numeric_std.all;

library STD;
use STD.textio.all;


use work.csv_file_reader_pkg.all;

entity csi_to_axis_v1_0_tb is
generic (
    C_M_AXIS_TDATA_WIDTH    : INTEGER               := 32;
    C_LANES                 : INTEGER range 1 to 4  := 4
);
end csi_to_axis_v1_0_tb;

architecture behav of csi_to_axis_v1_0_tb is
    component csi_to_axis_v1_0
        port (
            -- Transfer enable
            enable_in               : in  STD_LOGIC;
            -- MIPI PPI 
            rxbyteclkhs             : in  STD_LOGIC;
            cl_enable               : out STD_LOGIC;
            cl_stopstate            : in  STD_LOGIC;
            cl_rxclkactivehs        : in  STD_LOGIC;
            dl0_enable              : out STD_LOGIC;
            dl0_rxactivehs          : in  STD_LOGIC;
            dl0_rxvalidhs           : in  STD_LOGIC;
            dl0_rxsynchs            : in  STD_LOGIC;
            dl0_datahs              : in  STD_LOGIC_VECTOR(7 downto 0);
            dl1_enable              : out STD_LOGIC;
            dl1_rxactivehs          : in  STD_LOGIC;
            dl1_rxvalidhs           : in  STD_LOGIC;
            dl1_rxsynchs            : in  STD_LOGIC;
            dl1_datahs              : in  STD_LOGIC_VECTOR(7 downto 0);
            dl2_enable              : out STD_LOGIC;
            dl2_rxactivehs          : in  STD_LOGIC;
            dl2_rxvalidhs           : in  STD_LOGIC;
            dl2_rxsynchs            : in  STD_LOGIC;
            dl2_datahs              : in  STD_LOGIC_VECTOR(7 downto 0);
            dl3_enable              : out STD_LOGIC;
            dl3_rxactivehs          : in  STD_LOGIC;
            dl3_rxvalidhs           : in  STD_LOGIC;
            dl3_rxsynchs            : in  STD_LOGIC;
            dl3_datahs              : in  STD_LOGIC_VECTOR(7 downto 0);
            -- Status
            data_err                : out STD_LOGIC_VECTOR(C_LANES-1 downto 0);
            -- AXIS
            m_axis_aclk             : in  STD_LOGIC;
            m_axis_aresetn          : in  STD_LOGIC;
            m_axis_tvalid           : out STD_LOGIC;
            m_axis_tdata            : out STD_LOGIC_VECTOR(C_LANES*8-1 downto 0);
            m_axis_tuser            : out STD_LOGIC;
            m_axis_tlast            : out STD_LOGIC;
            m_axis_tready           : in  STD_LOGIC
            -- -- Debug
            --raw_data_dbg            : out STD_LOGIC_VECTOR(15 downto 0);
            --raw_valid_dbg           : out STD_LOGIC_VECTOR( 1 downto 0);
            --align_data_dbg          : out STD_LOGIC_VECTOR(15 downto 0);
            --align_valid_dbg         : out STD_LOGIC_VECTOR( 1 downto 0);
            --merge_data_dbg          : out STD_LOGIC_VECTOR(15 downto 0);
            --merge_valid_dbg         : out STD_LOGIC;
            --frame_start_dbg         : out STD_LOGIC;
            --line_start_dbg          : out STD_LOGIC;
            --parse_data_dbg          : out STD_LOGIC_VECTOR(15 downto 0);
            --parse_valid_dbg         : out STD_LOGIC;
            --parse_user_dbg          : out STD_LOGIC;
            --parse_last_dbg          : out STD_LOGIC;
            --packet_id_dbg           : out STD_LOGIC_VECTOR( 7 downto 0);
            --packet_id_upd_dbd       : out STD_LOGIC;
            --packet_size_dbg         : out STD_LOGIC_VECTOR(15 downto 0);
            --transfer_cnt_dbg        : out STD_LOGIC_VECTOR(15 downto 0);
            --align_resync_dbg        : out STD_LOGIC;
            --merge_resync_dbg        : out STD_LOGIC
        );
    end component;

    component data_fifo
    port (
        s_aclk          : in std_logic;
        s_aresetn       : in std_logic;

        s_axis_tdata    : in std_logic_vector(31 downto 0);
        s_axis_tvalid   : in std_logic;
        s_axis_tready   : out std_logic;

        m_axis_tdata    : out std_logic_vector(31 downto 0);
        m_axis_tvalid   : out std_logic;
        m_axis_tready   : in std_logic;

        axis_data_count : out std_logic_vector(9 downto 0)
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

        signal clk, rxbyteclkhs, cl_stopstate, cl_rxclkactivehs, dl0_rxactivehs, dl0_rxvalidhs, dl0_rxsynchs, dl1_rxactivehs, dl1_rxvalidhs, dl1_rxsynchs, dl2_rxactivehs, dl2_rxvalidhs, dl2_rxsynchs, dl3_rxactivehs, dl3_rxvalidhs, dl3_rxsynchs, m_axis_aclk, m_axis_tready : std_logic := '0';
        signal dl0_datahs, dl1_datahs, dl2_datahs, dl3_datahs : std_logic_vector(7 downto 0);

        constant clk_period : time := 1 ns;
begin
    uut: csi_to_axis_v1_0 port map(
        rxbyteclkhs         => clk,
        enable_in           => '1',
        cl_rxclkactivehs    => '1',
        cl_stopstate        => '0',
        dl0_rxactivehs      => dl0_rxactivehs,
        dl0_rxvalidhs       => dl0_rxvalidhs,
        dl0_rxsynchs        => dl0_rxsynchs,
        dl0_datahs          => dl0_datahs,
        dl1_rxactivehs      => dl1_rxactivehs,
        dl1_rxvalidhs       => dl1_rxvalidhs,
        dl1_rxsynchs        => dl1_rxsynchs,
        dl1_datahs          => dl1_datahs,
        dl2_rxactivehs      => dl2_rxactivehs,
        dl2_rxvalidhs       => dl2_rxvalidhs,
        dl2_rxsynchs        => dl2_rxsynchs,
        dl2_datahs          => dl2_datahs,
        dl3_rxactivehs      => dl3_rxactivehs,
        dl3_rxvalidhs       => dl3_rxvalidhs,
        dl3_rxsynchs        => dl3_rxsynchs,
        dl3_datahs          => dl3_datahs,
        m_axis_aclk         => clk,
        m_axis_tready       => '1',
        m_axis_aresetn      => '1'
        --raw_data_dbg        => raw_data_dbg
    );

    clk_proc: process
    begin
        clk <= '1';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        clk <= '0';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
    end process clk_proc;

    lectura: process
        variable csv_file_1: csv_file_reader_type;

        variable in_buffer : integer;
        variable dl0_rxactivehs_t, dl1_rxactivehs_t, dl2_rxactivehs_t, dl3_rxactivehs_t : std_logic;

        variable print : boolean := true;
        variable count : integer := 0;
--DL0_RXSYNCHS,DL0_RXACTIVE,DL1_RXSYNCHS,DL1_RXACTIVEHS,DL2_RXSYNCH,DL2_RXACTIVEHS,DL3_RXSYNCHS,DL3_RXACTIVEHS
        begin
        csv_file_1.initialize("iladata8.csv");
        csv_file_1.readline;
        while not csv_file_1.end_of_file loop
            csv_file_1.readline;
            dl3_datahs          <= std_logic_vector(to_unsigned(csv_file_1.read_integer, dl3_datahs'length));
            dl2_datahs          <= std_logic_vector(to_unsigned(csv_file_1.read_integer, dl2_datahs'length));
            dl0_datahs          <= std_logic_vector(to_unsigned(csv_file_1.read_integer, dl0_datahs'length));
            dl1_datahs          <= std_logic_vector(to_unsigned(csv_file_1.read_integer, dl1_datahs'length));
            dl0_rxsynchs        <= to_std_logic(csv_file_1.read_integer);
            dl0_rxactivehs_t    := to_std_logic(csv_file_1.read_integer);
            dl1_rxsynchs        <= to_std_logic(csv_file_1.read_integer);
            dl1_rxactivehs_t    := to_std_logic(csv_file_1.read_integer);
            dl2_rxsynchs        <= to_std_logic(csv_file_1.read_integer);
            dl2_rxactivehs_t    := to_std_logic(csv_file_1.read_integer);
            dl3_rxsynchs        <= to_std_logic(csv_file_1.read_integer);
            dl3_rxactivehs_t    := to_std_logic(csv_file_1.read_integer);

            dl0_rxactivehs      <= dl0_rxactivehs_t;
            dl0_rxvalidhs       <= dl0_rxactivehs_t;
            dl1_rxactivehs      <= dl1_rxactivehs_t;
            dl1_rxvalidhs       <= dl1_rxactivehs_t;
            dl2_rxactivehs      <= dl2_rxactivehs_t;
            dl2_rxvalidhs       <= dl2_rxactivehs_t;
            dl3_rxactivehs      <= dl3_rxactivehs_t;
            dl3_rxvalidhs       <= dl3_rxactivehs_t;       

            --readline(vector_file, rdline);
            --while not endfile(vector_file) loop
            --    readline(vector_file, rdline);
            --    read(rdline, in_buffer);
            --    read(rdline, in_window);
            --    read(rdline, TRIGGER);
            --    read(rdline, csi_to_axis_0_data_err);
            --    read(rdline, packet_id_dbg);
            --    read(rdline, merge_data_dbg);
            --    read(rdline, parse_data_dbg);
            --    read(rdline, user_probe_0);
            --    read(rdline, packet_size_dbg);
            if (count /= 5) then
                report "dl3_datahs = " & vec2str(dl3_datahs);
                report "dl3_rxsynchs = " & std_logic'image(dl3_rxsynchs);
                count := count + 1;
            end if;
            wait until rising_edge(clk);
        end loop;

        report "Finish";
        wait;
        
    end process;


end behav;