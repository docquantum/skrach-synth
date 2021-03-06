--------------------------------------------------------------------------------
-- Name:	Daniel Shchur
-- Updated:	2020/05/01
-- File:    oscillator.vhd
-- Module:	Skrach Core
-- Pupr:	Using LUTs and basic math, generates signals as output. Can create
--          Sine, Triangle, Saw, and Square data at 2048, 16 bit samples.
--
-- Notes:   With system clock rates, requires for the "nextSample" signal
--          to be high to increment throught the LUT or through processes for
--          the count. This is to match your Audio Codec's data rate or LRClock.
--          
--          Another aproach would be to set the input clock to the same rate
--          as the LRclock which is calcuted as:
--          SamplingRate * Bits per channel * no of channels.
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

Library UNISIM;
use UNISIM.vcomponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

use work.skrach_parts.all;


entity oscillator is
    Port (
        -- 100 MHz clk
        clk: in std_logic;
        -- Active low reset, should be handled in sync with other OSCs
        reset_n: in std_logic;
        -- sine, triangle, saw, square
        waveSel: in std_logic_vector(1 downto 0);
        -- Q9.7, adjust the increment for sample data
        phaseInc: in unsigned(15 downto 0);
        -- read's next sample
        nextSample: in std_logic;
        -- Signed PCM data
        wavformOut: out signed(15 downto 0)
    );
end oscillator;

architecture implementation of oscillator is
    signal reset: std_logic := NOT reset_n;
    signal LUTSine: std_logic_vector(15 downto 0);
    signal LUTAddr: std_logic_vector(10 downto 0);
    signal sine, saw, triangle, square: signed(15 downto 0) := to_signed(0, 16);
    signal sampleCount, counterPhase: unsigned(17 downto 0); -- Q11.7
    signal counterCtrl: std_logic_vector(1 downto 0);
    signal triangle_sig: signed(31 downto 0):= to_signed(0, 32);
begin

    ----------------------------------------------------------------------------
    -- Waveform Mux: selects the desired waveform using 'waveSel' signal
    ----------------------------------------------------------------------------
    wavformOut <= 
        sine when waveSel = "00" else
        triangle when waveSel = "01" else
        saw when waveSel = "10" else
        square when waveSel = "11" else
        (others => '0');
    
    ----------------------------------------------------------------------------
    -- Sample Counter: increments when nextSample is high by the phaseInc value.
    ----------------------------------------------------------------------------
    counterPhase <= "00" & phaseInc;
    counterCtrl <= nextSample & '0';
    sample_counter: counter
    generic map (
        WIDTH => 18 -- Q11.7
    )
    port map (
        clk => clk,
        reset_n => reset_n,
        cw => counterCtrl,
        D => counterPhase,
        count => sampleCount
    );
    LUTAddr <= std_logic_vector(sampleCount(17 downto 7)); 
    ----------------------------------------------------------------------------
    -- Saw wave: Simply the sample counter's output 
    ----------------------------------------------------------------------------
    saw <= signed(sampleCount(17 downto 2) - 32768);
    
    ----------------------------------------------------------------------------
    -- Square wave: Low for 1024 samples, High for the other 1024
    ----------------------------------------------------------------------------
    square <=
        to_signed(-32767, 16) when (sampleCount < 2**17) else
        to_signed(32767, 16);
    
    ----------------------------------------------------------------------------
    -- Triangle wave: 2 * phaseInc up for 1024 samples, down for the other 1024
    ----------------------------------------------------------------------------
    triangle <= triangle_sig(15 downto 0) when (sampleCount < 2**17) else
        -triangle_sig(15 downto 0);
    triangle_sig <= signed(2*sampleCount(17 downto 2) - 32768);
    
    ----------------------------------------------------------------------------
    -- Sine wave: Grabs sample from look up table via sample count index
    ----------------------------------------------------------------------------

    sine_lut_inst: BRAM_SINGLE_MACRO
    generic map
    (
        BRAM_SIZE => "36Kb",
        DEVICE => "7SERIES",
        DO_REG => 0,
        INIT => x"0000",
        INIT_FILE => "NONE",
        WRITE_WIDTH => 16,
        READ_WIDTH => 16,
        SRVAL => x"0000",
        WRITE_MODE => "READ_FIRST",   
        INIT_00 => x"05E3057E051A04B6045103ED0388032402BF025B01F60192012D00C900640000",
        INIT_01 => x"0C270BC30B5F0AFB0A970A3209CE096A090608A1083D07D90774071006AC0647",
        INIT_02 => x"12641200119D113910D61072100E0FAB0F470EE30E7F0E1B0DB70D530CEF0C8B",
        INIT_03 => x"1895183317D0176D170A16A7164415E1157E151B14B8145513F2138E132B12C7",
        INIT_04 => x"1EB81E561DF41D931D311CCF1C6D1C0B1BA91B461AE41A821A2019BD195B18F8",
        INIT_05 => x"24C72467240623A6234522E42284222321C221612100209F203D1FDC1F7B1F19",
        INIT_06 => x"2AC02A612A0229A3294428E52885282627C62767270726A7264725E725872527",
        INIT_07 => x"309E30412FE42F862F292ECC2E6E2E102DB22D542CF62C982C3A2BDB2B7D2B1E",
        INIT_08 => x"365E360335A8354D34F13496343A33DE3382332632CA326D321131B4315830FB",
        INIT_09 => x"3BFD3BA43B4B3AF23A993A3F39E6398C393238D8387E382437C9376F371436B9",
        INIT_0A => x"4177412040CA4073401C3FC53F6E3F163EBF3E673E0F3DB73D5F3D073CAE3C56",
        INIT_0B => x"46C84674462045CC4578452344CF447A442543D0437A432542CF4279422341CD",
        INIT_0C => x"4BEE4B9D4B4C4AFA4AA94A574A0549B34961490E48BC4869481647C3476F471C",
        INIT_0D => x"50E5509750494FFA4FAC4F5D4F0E4EBF4E6F4E204DD04D804D304CE04C8F4C3F",
        INIT_0E => x"55AA555F551454C9547D543253E6539A534E530152B55268521B51CE51805133",
        INIT_0F => x"5A3A59F359AB5963591B58D3588A584257F957B05766571D56D35689563F55F4",
        INIT_10 => x"5E935E4F5E0B5DC65D825D3D5CF85CB35C6D5C285BE25B9C5B565B0F5AC85A81",
        INIT_11 => x"62B16271623061F061AF616E612D60EB60A9606760255FE25FA05F5D5F1A5ED6",
        INIT_12 => x"66926656661965DD65A06562652564E764A9646B642D63EE63AF6370633062F1",
        INIT_13 => x"6A3469FC69C4698B6952691968DF68A5686B683167F767BC67816745670A66CE",
        INIT_14 => x"6D956D616D2C6CF86CC36C8E6C586C236BED6BB76B806B4A6B136ADB6AA46A6C",
        INIT_15 => x"70B27082705270226FF16FC06F8F6F5E6F2C6EFA6EC86E956E636E306DFC6DC9",
        INIT_16 => x"7389735E7332730672DA72AE72817254722671F971CB719D716E7140711170E1",
        INIT_17 => x"761A75F375CC75A4757C7554752C750374DB74B17488745E7434740A73DF73B5",
        INIT_18 => x"7861783F781C77F977D677B3778F776B7747772276FD76D876B2768D76677640",
        INIT_19 => x"7A5E7A417A237A0479E679C779A87989796979497929790878E778C678A57883",
        INIT_1A => x"7C107BF77BDE7BC47BAB7B917B767B5C7B417B257B0A7AEE7AD27AB57A997A7C",
        INIT_1B => x"7D757D617D4D7D387D237D0E7CF87CE27CCC7CB67C9F7C887C707C597C417C29",
        INIT_1C => x"7E8D7E7E7E6E7E5E7E4E7E3E7E2D7E1C7E0B7DF97DE77DD57DC27DB07D9C7D89",
        INIT_1D => x"7F577F4C7F427F377F2C7F207F147F087EFC7EEF7EE27ED47EC77EB97EAA7E9C",
        INIT_1E => x"7FD27FCD7FC77FC17FBB7FB47FAD7FA67F9E7F967F8E7F867F7D7F747F6A7F61",
        INIT_1F => x"7FFE7FFE7FFD7FFC7FFB7FF97FF77FF57FF27FEF7FEC7FE87FE47FE07FDC7FD7",
        INIT_20 => x"7FDC7FE07FE47FE87FEC7FEF7FF27FF57FF77FF97FFB7FFC7FFD7FFE7FFE7FFF",
        INIT_21 => x"7F6A7F747F7D7F867F8E7F967F9E7FA67FAD7FB47FBB7FC17FC77FCD7FD27FD7",
        INIT_22 => x"7EAA7EB97EC77ED47EE27EEF7EFC7F087F147F207F2C7F377F427F4C7F577F61",
        INIT_23 => x"7D9C7DB07DC27DD57DE77DF97E0B7E1C7E2D7E3E7E4E7E5E7E6E7E7E7E8D7E9C",
        INIT_24 => x"7C417C597C707C887C9F7CB67CCC7CE27CF87D0E7D237D387D4D7D617D757D89",
        INIT_25 => x"7A997AB57AD27AEE7B0A7B257B417B5C7B767B917BAB7BC47BDE7BF77C107C29",
        INIT_26 => x"78A578C678E77908792979497969798979A879C779E67A047A237A417A5E7A7C",
        INIT_27 => x"7667768D76B276D876FD77227747776B778F77B377D677F9781C783F78617883",
        INIT_28 => x"73DF740A7434745E748874B174DB7503752C7554757C75A475CC75F3761A7640",
        INIT_29 => x"71117140716E719D71CB71F972267254728172AE72DA73067332735E738973B5",
        INIT_2A => x"6DFC6E306E636E956EC86EFA6F2C6F5E6F8F6FC06FF170227052708270B270E1",
        INIT_2B => x"6AA46ADB6B136B4A6B806BB76BED6C236C586C8E6CC36CF86D2C6D616D956DC9",
        INIT_2C => x"670A6745678167BC67F76831686B68A568DF69196952698B69C469FC6A346A6C",
        INIT_2D => x"6330637063AF63EE642D646B64A964E76525656265A065DD66196656669266CE",
        INIT_2E => x"5F1A5F5D5FA05FE26025606760A960EB612D616E61AF61F06230627162B162F1",
        INIT_2F => x"5AC85B0F5B565B9C5BE25C285C6D5CB35CF85D3D5D825DC65E0B5E4F5E935ED6",
        INIT_30 => x"563F568956D3571D576657B057F95842588A58D3591B596359AB59F35A3A5A81",
        INIT_31 => x"518051CE521B526852B55301534E539A53E65432547D54C95514555F55AA55F4",
        INIT_32 => x"4C8F4CE04D304D804DD04E204E6F4EBF4F0E4F5D4FAC4FFA5049509750E55133",
        INIT_33 => x"476F47C34816486948BC490E496149B34A054A574AA94AFA4B4C4B9D4BEE4C3F",
        INIT_34 => x"4223427942CF4325437A43D04425447A44CF4523457845CC4620467446C8471C",
        INIT_35 => x"3CAE3D073D5F3DB73E0F3E673EBF3F163F6E3FC5401C407340CA4120417741CD",
        INIT_36 => x"3714376F37C93824387E38D83932398C39E63A3F3A993AF23B4B3BA43BFD3C56",
        INIT_37 => x"315831B43211326D32CA3326338233DE343A349634F1354D35A83603365E36B9",
        INIT_38 => x"2B7D2BDB2C3A2C982CF62D542DB22E102E6E2ECC2F292F862FE43041309E30FB",
        INIT_39 => x"258725E7264726A72707276727C62826288528E5294429A32A022A612AC02B1E",
        INIT_3A => x"1F7B1FDC203D209F2100216121C22223228422E4234523A62406246724C72527",
        INIT_3B => x"195B19BD1A201A821AE41B461BA91C0B1C6D1CCF1D311D931DF41E561EB81F19",
        INIT_3C => x"132B138E13F2145514B8151B157E15E1164416A7170A176D17D01833189518F8",
        INIT_3D => x"0CEF0D530DB70E1B0E7F0EE30F470FAB100E107210D61139119D1200126412C7",
        INIT_3E => x"06AC0710077407D9083D08A10906096A09CE0A320A970AFB0B5F0BC30C270C8B",
        INIT_3F => x"006400C9012D019201F6025B02BF0324038803ED045104B6051A057E05E30647",
        INIT_40 => x"FA1DFA82FAE6FB4AFBAFFC13FC78FCDCFD41FDA5FE0AFE6EFED3FF37FF9C0000",
        INIT_41 => x"F3D9F43DF4A1F505F569F5CEF632F696F6FAF75FF7C3F827F88CF8F0F954F9B9",
        INIT_42 => x"ED9CEE00EE63EEC7EF2AEF8EEFF2F055F0B9F11DF181F1E5F249F2ADF311F375",
        INIT_43 => x"E76BE7CDE830E893E8F6E959E9BCEA1FEA82EAE5EB48EBABEC0EEC72ECD5ED39",
        INIT_44 => x"E148E1AAE20CE26DE2CFE331E393E3F5E457E4BAE51CE57EE5E0E643E6A5E708",
        INIT_45 => x"DB39DB99DBFADC5ADCBBDD1CDD7CDDDDDE3EDE9FDF00DF61DFC3E024E085E0E7",
        INIT_46 => x"D540D59FD5FED65DD6BCD71BD77BD7DAD83AD899D8F9D959D9B9DA19DA79DAD9",
        INIT_47 => x"CF62CFBFD01CD07AD0D7D134D192D1F0D24ED2ACD30AD368D3C6D425D483D4E2",
        INIT_48 => x"C9A2C9FDCA58CAB3CB0FCB6ACBC6CC22CC7ECCDACD36CD93CDEFCE4CCEA8CF05",
        INIT_49 => x"C403C45CC4B5C50EC567C5C1C61AC674C6CEC728C782C7DCC837C891C8ECC947",
        INIT_4A => x"BE89BEE0BF36BF8DBFE4C03BC092C0EAC141C199C1F1C249C2A1C2F9C352C3AA",
        INIT_4B => x"B938B98CB9E0BA34BA88BADDBB31BB86BBDBBC30BC86BCDBBD31BD87BDDDBE33",
        INIT_4C => x"B412B463B4B4B506B557B5A9B5FBB64DB69FB6F2B744B797B7EAB83DB891B8E4",
        INIT_4D => x"AF1BAF69AFB7B006B054B0A3B0F2B141B191B1E0B230B280B2D0B320B371B3C1",
        INIT_4E => x"AA56AAA1AAECAB37AB83ABCEAC1AAC66ACB2ACFFAD4BAD98ADE5AE32AE80AECD",
        INIT_4F => x"A5C6A60DA655A69DA6E5A72DA776A7BEA807A850A89AA8E3A92DA977A9C1AA0C",
        INIT_50 => x"A16DA1B1A1F5A23AA27EA2C3A308A34DA393A3D8A41EA464A4AAA4F1A538A57F",
        INIT_51 => x"9D4F9D8F9DD09E109E519E929ED39F159F579F999FDBA01EA060A0A3A0E6A12A",
        INIT_52 => x"996E99AA99E79A239A609A9E9ADB9B199B579B959BD39C129C519C909CD09D0F",
        INIT_53 => x"95CC9604963C967596AE96E79721975B979597CF98099844987F98BB98F69932",
        INIT_54 => x"926B929F92D49308933D937293A893DD94139449948094B694ED9525955C9594",
        INIT_55 => x"8F4E8F7E8FAE8FDE900F9040907190A290D491069138916B919D91D092049237",
        INIT_56 => x"8C778CA28CCE8CFA8D268D528D7F8DAC8DDA8E078E358E638E928EC08EEF8F1F",
        INIT_57 => x"89E68A0D8A348A5C8A848AAC8AD48AFD8B258B4F8B788BA28BCC8BF68C218C4B",
        INIT_58 => x"879F87C187E48807882A884D8871889588B988DE89038928894E8973899989C0",
        INIT_59 => x"85A285BF85DD85FC861A863986588677869786B786D786F88719873A875B877D",
        INIT_5A => x"83F084098422843C8455846F848A84A484BF84DB84F68512852E854B85678584",
        INIT_5B => x"828B829F82B382C882DD82F28308831E8334834A83618378839083A783BF83D7",
        INIT_5C => x"81738182819281A281B281C281D381E481F582078219822B823E825082648277",
        INIT_5D => x"80A980B480BE80C980D480E080EC80F881048111811E812C8139814781568164",
        INIT_5E => x"802E80338039803F8045804C8053805A8062806A8072807A8083808C8096809F",
        INIT_5F => x"8002800280038004800580078009800B800E801180148018801C802080248029",
        INIT_60 => x"80248020801C801880148011800E800B80098007800580048003800280028001",
        INIT_61 => x"8096808C8083807A8072806A8062805A8053804C8045803F80398033802E8029",
        INIT_62 => x"815681478139812C811E8111810480F880EC80E080D480C980BE80B480A9809F",
        INIT_63 => x"82648250823E822B8219820781F581E481D381C281B281A28192818281738164",
        INIT_64 => x"83BF83A7839083788361834A8334831E830882F282DD82C882B3829F828B8277",
        INIT_65 => x"8567854B852E851284F684DB84BF84A4848A846F8455843C8422840983F083D7",
        INIT_66 => x"875B873A871986F886D786B78697867786588639861A85FC85DD85BF85A28584",
        INIT_67 => x"89998973894E8928890388DE88B988958871884D882A880787E487C1879F877D",
        INIT_68 => x"8C218BF68BCC8BA28B788B4F8B258AFD8AD48AAC8A848A5C8A348A0D89E689C0",
        INIT_69 => x"8EEF8EC08E928E638E358E078DDA8DAC8D7F8D528D268CFA8CCE8CA28C778C4B",
        INIT_6A => x"920491D0919D916B9138910690D490A290719040900F8FDE8FAE8F7E8F4E8F1F",
        INIT_6B => x"955C952594ED94B694809449941393DD93A89372933D930892D4929F926B9237",
        INIT_6C => x"98F698BB987F9844980997CF9795975B972196E796AE9675963C960495CC9594",
        INIT_6D => x"9CD09C909C519C129BD39B959B579B199ADB9A9E9A609A2399E799AA996E9932",
        INIT_6E => x"A0E6A0A3A060A01E9FDB9F999F579F159ED39E929E519E109DD09D8F9D4F9D0F",
        INIT_6F => x"A538A4F1A4AAA464A41EA3D8A393A34DA308A2C3A27EA23AA1F5A1B1A16DA12A",
        INIT_70 => x"A9C1A977A92DA8E3A89AA850A807A7BEA776A72DA6E5A69DA655A60DA5C6A57F",
        INIT_71 => x"AE80AE32ADE5AD98AD4BACFFACB2AC66AC1AABCEAB83AB37AAECAAA1AA56AA0C",
        INIT_72 => x"B371B320B2D0B280B230B1E0B191B141B0F2B0A3B054B006AFB7AF69AF1BAECD",
        INIT_73 => x"B891B83DB7EAB797B744B6F2B69FB64DB5FBB5A9B557B506B4B4B463B412B3C1",
        INIT_74 => x"BDDDBD87BD31BCDBBC86BC30BBDBBB86BB31BADDBA88BA34B9E0B98CB938B8E4",
        INIT_75 => x"C352C2F9C2A1C249C1F1C199C141C0EAC092C03BBFE4BF8DBF36BEE0BE89BE33",
        INIT_76 => x"C8ECC891C837C7DCC782C728C6CEC674C61AC5C1C567C50EC4B5C45CC403C3AA",
        INIT_77 => x"CEA8CE4CCDEFCD93CD36CCDACC7ECC22CBC6CB6ACB0FCAB3CA58C9FDC9A2C947",
        INIT_78 => x"D483D425D3C6D368D30AD2ACD24ED1F0D192D134D0D7D07AD01CCFBFCF62CF05",
        INIT_79 => x"DA79DA19D9B9D959D8F9D899D83AD7DAD77BD71BD6BCD65DD5FED59FD540D4E2",
        INIT_7A => x"E085E024DFC3DF61DF00DE9FDE3EDDDDDD7CDD1CDCBBDC5ADBFADB99DB39DAD9",
        INIT_7B => x"E6A5E643E5E0E57EE51CE4BAE457E3F5E393E331E2CFE26DE20CE1AAE148E0E7",
        INIT_7C => x"ECD5EC72EC0EEBABEB48EAE5EA82EA1FE9BCE959E8F6E893E830E7CDE76BE708",
        INIT_7D => x"F311F2ADF249F1E5F181F11DF0B9F055EFF2EF8EEF2AEEC7EE63EE00ED9CED39",
        INIT_7E => x"F954F8F0F88CF827F7C3F75FF6FAF696F632F5CEF569F505F4A1F43DF3D9F375",
        INIT_7F => x"FF9CFF37FED3FE6EFE0AFDA5FD41FCDCFC78FC13FBAFFB4AFAE6FA82FA1DF9B9"
    )
    port map
    (
        DO => LUTSine,      -- Output data, width defined by READ_WIDTH parameter
        ADDR => LUTaddr,  -- Input address, width defined by read/write port depth
        CLK => clk,    -- 1-bit input clock
        DI => (others => '0'),      -- Input data port, width defined by WRITE_WIDTH parameter
        EN => '1',      -- 1-bit input RAM enable
        REGCE => '1', -- 1-bit input output register enable
        RST => reset,    -- 1-bit input reset
        WE => "00"       -- Input write enable, width defined by write port depth
    );
    
    sine <= signed(LUTSine);
    
end implementation;
