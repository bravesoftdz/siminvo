inherited infbrggform: Tinfbrggform
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form Keterangan Barang'
  ClientHeight = 455
  ClientWidth = 507
  KeyPreview = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  ExplicitWidth = 513
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 507
    Height = 455
    ExplicitWidth = 507
    ExplicitHeight = 455
    inherited PageControl1: TPageControl
      Width = 499
      Height = 406
      ExplicitWidth = 499
      ExplicitHeight = 406
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 491
        ExplicitHeight = 378
        object Label1: TLabel
          Left = -1
          Top = 15
          Width = 84
          Height = 16
          Caption = 'Nama Barang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = -1
          Top = 42
          Width = 69
          Height = 16
          Caption = 'Keterangan'
          FocusControl = DBMKet
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = -1
          Top = 239
          Width = 49
          Height = 16
          Caption = 'Gambar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnopen: TSpeedButton
          Left = 88
          Top = 348
          Width = 53
          Height = 25
          Caption = '&Open'
          OnClick = btnopenClick
        end
        object btnclear: TSpeedButton
          Left = 141
          Top = 348
          Width = 52
          Height = 25
          Caption = '&Clear'
          OnClick = btnclearClick
        end
        object img1: TImage
          Left = 88
          Top = 233
          Width = 105
          Height = 114
          Picture.Data = {
            0A544A504547496D61676591090000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080082008803012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD30
            A28A2BEB0F1C28A28A0028A28A0028AB7A2E8779E23D463B3B1B696EAE653854
            4193F53E83DCF02BD7BC15FB2C462249F5EBC6673CFD9AD8E02FB339EBF4007D
            4D635B110A7F1B2E14E52D91E2D5ADA5F80F5BD6E357B4D2751B88DF90EB6EC5
            0FFC0B18AFA73C3DF0E742F0A05361A5DA40E8722429BE41FF00036CB7EB5AB7
            F04975633C514CD6F2C91B2A4AA013192301803D7079AE09E67FCB1FBCE88E13
            BB3E40D574AB9D0F5096D2EE1782E21203C6DF794E3383F81AAF5B9E3CF036A9
            E05D65E0D4E362D292C9382592E39E583773EA0F233CD61D7A7092924D3B9CB2
            56760A28A2A8414514500145145001451450014514500157FC31E1DB9F16EBF6
            9A6DA286B8BB7D8B9E8A3A963EC0024FB0AA15E9DFB2BD82DC78EAF2E19726DA
            CDB69C742CEA33F967F3ACABD4E4A6E5D8AA71E69247AF7C3DF871A77C39D205
            BD9A079DC033DCB0FDE4EDEFE807651C0F73927A0A28AF9A9CDC9F349DD9EAC6
            292B20A28A2A4651F12786ACBC5BA4CB63A85BA5C5BCBD8F553D981EC47A8AF9
            97E297C3C9BE1BF89DEC99DA6B6957CDB6948E5D09C60FFB40F07F3EE2BEA8AF
            28FDAC34F597C2FA55D919782E9A207D03A127FF004015DF80AD28D450E8CE7C
            44138DFB1E15451457BA79E1451450014514500145145001451450015EB1FB27
            480789756427E66B6523F07FFEBD793D7A87ECA736DF1CDFC793F3D8B1FCA44F
            F1AE6C62FDCC8D683F7D1EF9451457CE1E985145140057997ED567FE280B21DC
            EA09FF00A2E4AF4DAF2BFDABE60BE12D3232465EF0B63BF08DFE35D383FE344C
            ABFC0CF07A28A2BE8CF3028A28A0028A28A0028A28A0028A28A002BDDFF6538A
            D9BC27A84821845E25D1569768F30A1452173D719078AF08AF5AFD953C496F61
            ABEA7A6CD288E6BE58DE053C0729BF701EF820E3D01AE4C745BA2EC6D87769AB
            9EE5451457CF1E9051451400571DF1EA3B6FF855BAA4B7104533448BE517504C
            6ECEAA187A1E7B57635E63FB5178920B2F05C3A68997ED77B3ABF940FCDE5AE4
            963E837003DFF035BE1A2DD58A5DCCEABB419E03451457D29E58514514005145
            14005145140051451400569783B5D3E19F1569DA873B6D2E124603A9507E61F8
            8C8ACDA29495D598276D4FB2D245951595832B0C820E411EB4B5C0FECEDE377F
            1678205ACE3FD23482B6E5BFBE98F90FD7008FF80E7BD77D5F31569B849C1F43
            D684B9926828A28ACCA0AF9ABF685F10AEBFF13AF15183C5A7AADA291EABCB0F
            C1D987E15EF5F11FC5A7C0DE0BBFD4D6312C96E8046A7A17660AB9F604E4FB03
            5F295D5CC97B7324D2BB492CCC5DD8F25989C927F1AF572CA5ABA9F2393153D1
            448E8A28AF5CE20A28A2800A28A2800A28A2800A28A2800A28A7DBDBBDDDC471
            44A5E495822A8EAC49C0145C0F73FD93ECFCBF0B6A9718C79B7423CFFBA80FFE
            CD5EAD59DE15F0AD8F837478ECAC2048215F99B6E72ED800B1CF52702B46BE67
            11514EA39AEA7AB4E3CB14828A28AC4B390F8F368D79F09B5855196448E4FC16
            4463FA035F3157D8DA8E9F06AD6335ADCC4935BCEA52446190C0F515F2BFC4EF
            0EA7853C7DAAD8448228619898901242A300CA39F4522BD8CB2A2B3A7F338B15
            1D548C1A28A2BD439028A28A0028A28A0028A29C88D2BAA22B3331C0006493E9
            400DA2BBEF06FECEBAFF008A364B751AE936AD83BAE01F308F641CE7FDEDB5EA
            BE0FFD9F3C3DE15D92CD01D52E97FE5A5D61901F64FBBF9E48F5AE4AD8DA50D2
            F77E46D0A139791E15E10F867ADF8E5D4E9F632BC04E0CEFF242BCF3F31E0E3D
            064FB57B07C39FD9B6D7C2F7D6DA86A776D7B7B6CEB2C71C436C31B039072796
            C1C1EDF435E9A88B1A2AAA855518000C003D296BCCAD8FA93D1688EAA7878C75
            7A8514515C2740514514005711F13FE0769FF11EE7ED82796CB5154082550191
            C0E9B97BFD411F8D76F455D3A9283E68BB32651525667CC3E33F825E20F056F9
            25B4377689CFDA2DB32201EA47DE5FC463DCD7235F66572DE31F837E1FF1A979
            2E6C960BA7FF00978B7C47213EA71C31FF00781AF4E8E67D2A2FB8E59E17F959
            F2E515E9DE31FD98756D1C3CDA54D1EA902F3E59C47301F43C37E0413E95E71A
            869D71A4DDBDBDD4135B4F19C3472A1465FA835E952AD0A8AF07739670947744
            1451456849B3E05F04DEF8FF00C41169F64A0330DD248DF76141D58FF9E4915F
            467C3FF849A47C3CB7436D089EF7187BB9403231EF8FEE8F61DBAE7AD51F829F
            0BA5F867A2DD25E3DB4D7D772EE792124A8403E55C900F5DC7A77AED6BC2C662
            DCE5CB17A7E67A1428A8ABBDC28A28AE03A028A28A0028A28A0028A28A0028A2
            8A0028A28A002B23C5DE05D2FC73606DF52B48E70061241F2C917BAB0E47D3A1
            EE0D6BD1551934EE84D27A33E61F8B1F09EEBE196AA80BB5CE9D724FD9E7C60F
            BA30ECC3F22391DC02BE81F891E0D5F1E7836F34DFDDACD2AEE81DFA4720E54E
            70481D891D89A2BDAC363A2E1FBC76670D5C3B52F75686ED14515E19DE145145
            00145145001451450014514500145145001451450014514500145145007FFFD9}
          Proportional = True
        end
        object DBMKet: TDBMemo
          Left = 88
          Top = 36
          Width = 394
          Height = 194
          DataField = 'Ket'
          DataSource = MastData.DSMMBRGG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBLBarang: TDBLookupComboBox
          Left = 88
          Top = 12
          Width = 199
          Height = 23
          DataField = 'Brg'
          DataSource = MastData.DSMMBRGG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'BRG'
          ListField = 'Nama1'
          ListSource = MastData.DSMBarang
          ParentFont = False
          TabOrder = 0
          OnCloseUp = DBLBarangCloseUp
          OnEnter = DBLBarangEnter
          OnExit = DBLBarangExit
        end
        object DBENMBARANG: TEdit
          Left = 288
          Top = 12
          Width = 194
          Height = 23
          Color = 13750737
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = 'DBENMBARANG'
        end
        object Edit1: TEdit
          Left = 208
          Top = 236
          Width = 274
          Height = 21
          TabOrder = 3
          Text = 'Edit1'
          Visible = False
        end
      end
      inherited TabSheet2: TTabSheet
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 491
        ExplicitHeight = 378
      end
    end
    inherited Panel2: TPanel
      Top = 408
      Width = 499
      ExplicitTop = 408
      ExplicitWidth = 499
      inherited btnCancel: TButton
        Left = 420
        ExplicitLeft = 420
      end
      inherited btnsimpan: TButton
        Left = 345
        ExplicitLeft = 345
      end
    end
  end
  object op: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 672
    Top = 48
  end
end
