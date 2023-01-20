object frmColetor: TfrmColetor
  Left = 0
  Top = 0
  ClientHeight = 515
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPage: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 515
    Align = alClient
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object pnlNavigation: TPanel
      Left = 0
      Top = 0
      Width = 194
      Height = 515
      Margins.Bottom = 10
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnlIcon: TPanel
        Left = 0
        Top = 0
        Width = 194
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object Image1: TImage
          Left = 5
          Top = 5
          Width = 184
          Height = 55
          Align = alClient
          Stretch = True
          ExplicitLeft = 12
          ExplicitTop = 8
          ExplicitWidth = 161
          ExplicitHeight = 49
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 75
        Width = 194
        Height = 54
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cadastrar Produtos'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = Panel2Click
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 131
        Width = 194
        Height = 54
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cadastrar Controle'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = Panel4Click
      end
    end
    object pnlBody: TPanel
      AlignWithMargins = True
      Left = 197
      Top = 10
      Width = 724
      Height = 502
      Margins.Top = 10
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 15
      Padding.Top = 15
      Padding.Right = 15
      Padding.Bottom = 15
      TabOrder = 1
      object pnlButtons: TPanel
        AlignWithMargins = True
        Left = 18
        Top = 18
        Width = 688
        Height = 48
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Image2: TImage
          Left = 8
          Top = 8
          Width = 157
          Height = 34
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000009D0000
            00220802000000CAD84C21000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000002
            F54944415478DAED98B16A1B411086C79D4A09BB88205C91A8302669D2C4EE12
            D2049280F4020AD103181B0C813C40201048F003C4D82F20431A3721EE14376E
            64828A738A34310421E14AA5EF56BBB73B7BBBD2D927CE97C9FCDDDEEECDCDCE
            373BBB7B4B2FBB4D6091D312732529E64A53CC95A6982B4D31579A62AE34C55C
            698AB9D21473A529E64A53CC95A6F2717DF0F16BE37ED20AC3D6F6997F70F0F6
            E0D13AFCD96D9F7CBFE180A2F5FA53B3B95C227FAEA1FCEBF5E9BBE79B1BF0E3
            F3D1876FB30732D7025520D77F4FCC557395B1D887F656BD1A3F98D85D2A4C71
            B3A1AC881A6E0CC0153E6D44DA1F1FBE3ADE4FFBD479D26D5555438D311FEA2D
            43148961D8EAAFA85E391EB9173DED9D1EC0DAE646453F42FB8EB05393DE8E47
            95EA107F4275A989C8EFEEFEBD2B6D0A6B22989594F192708DC23192FC44D388
            94C46695DCA879EFA27D0C88EB4A5F31B38D18F6E7FA13355F5C1CED4004B582
            620A8627B5248EC8312B1123536DF8F9E6FDEFB8F1ECF1DE561D7AA7A289A723
            BAAAD2A048500549F8361113C1DF9DBE22B22736289AC3EEE1CE975271356B57
            4707547775CC286B79EB5E3CCFDAC032E276278EE3B20CB7FFA10E9C5AAF6A71
            18A19FF3ADB817C48BF674B44DD31AF604F0772D379CB328155723F592AEC013
            AF59851AE01C1B717375668C23FD7DF1F52422369594F869D9484D278174691B
            F77605339B64B8CAF0A9ADD165243F57511E2FB3739DE6D9582D23FF7430BC5A
            CAC9F07FE51A643052F47A4D19C9CAD58D2720C8153C57A3057045C79934C5F9
            FBEB0DB882BD896A9B7E6F297295D79891F73C8CC0AB2D2DD3FE2AABE5E47AE7
            610F573C3574B2C5C7729437B2CB751E9EDADFBBF36BDEB9E996B93AFE2366E3
            0AF85627372D73803E348DE46D35D37AD5A9A62E9A49F6CCBEBFBAB882E146EC
            E1493D39344549D67F68AF6679FFED8583D5C6BAFBFE0AEA7E5CFAF5CA4A29A6
            B23AC8714BC92FE6BA08A1BF2862C583FB47586162AE8B90F5D7737CCB5081B9
            521573A529E64A53CC95A6982B4D31579A62AE34750592F56655ADBB01CC0000
            000049454E44AE426082}
          OnClick = Image2Click
        end
        object Image3: TImage
          Left = 171
          Top = 9
          Width = 32
          Height = 32
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF40000000473424954080808087C0864880000000970
            485973000000DD000000DD017053A2070000001974455874536F667477617265
            007777772E696E6B73636170652E6F72679BEE3C1A000005844944415478DABD
            960B4C535718C7FFF7F605823C5681220CD0C1944D67B42D389C6F1D1486D3A8
            385F541D53B72CC6C4253359E21E6ECBB2F85C3217E7038B5BE634CEA9B4E270
            381F3308172799CFA923802BAD50EC8B47EF6D7B776E1DC639A48F89FFA439E7
            DE9E73BEDFF9CEF9BEFB513CCFE351CA29D426B11EAF9A824845815791914AF2
            735200435A86E629C6EB96314CE5761B4214D51B404E515138E71CF029C0AFA2
            298A96C9A4080F93218CB45E2F8F6E970B5DDD2C5C2C2B0CB7F314D6307ADDCE
            C702A0CE5F328E075F2A11893214F172A4A5A640919808854281044502388E83
            A9C504B3C904A3D188C6A6DB686DB71256FE380D4F49B5E19BDB2103A834DAB5
            14854FA22223E8A16929C8D5E4E299F474884514A2C3C4908969981D2C3CDE7B
            7384B9171806553F9F44B3D1443CC3DA4079E7D6EAF756060D20EC9C2C795A11
            27A7B3B354983A7D1A14F281881F28458454E41B23D8BD66EA80CBEDFDD72216
            8B05157A03EA7FBF0CABDD69A2598C387F42670918403873D6195E1F1D199131
            79E24B289851E8FB73C8A0700C948960EFF6C0D6E526ADFBFEEE1F96DBEDC6DE
            3D3AD4D55F02CB72DFD71A74AF050C4076BF592CA2578FC87C16CB4A96216370
            2C3A590FDA3B38F081ACF28F4C2D2D28DD558A8666A3703C45CCB1B2037E015E
            7CA53889F3A02939319E5EB86801B2466522E5A93098ED2C8C365710E6EFE9D7
            336750AEAF80E5AEAD897821D52F8052B368A688121DCAC95642BB7409462445
            424C53B8D2F2DFB30E442C09CD8D9F6FF079814470628DBED4D42700B9F91F87
            8749DF2BD0BC8CD933F3911E37005672DE0D6D5D411BEF51E9CE5DA8662EC203
            BEB04EAF2BEF1340AD29AE888D89CA5D307F1E722766411125C58D3B9D70BA3C
            21031C2BD7A3A2B20A5D2ED787B57ADD077E3C50DC3A3861D0A037DF5A09E5F0
            54C491B00BD5FD3DAAAB65B0FFC041586D8EF21A83AEB04F00A5A6B821314E9E
            B67C4509724665401E21C16502C0FE0F80EA73E770F08723B0393AF6D51AF6CC
            F7E78103315191738AE6CE8666EA3824C7C8D060E982B5D31D32C09143875059
            751ADD2CFB0E6328DBE8CF03EF8649A59FE54D9F8C39B35FC57045842FDD1AAD
            C187608FB66FDB4612D215902FE8A41A43D9A93E01D479DAA93CC59F508F1E89
            9215CBA18896C141329F90884291D3E1C0D6CD5BD1F897899749C4D1670FEF72
            F4ED8169CBA329497753BC3C366AD6AC1950AAD521EF5C50F9E1233879EA2C1C
            1D9DE749221AEB6FBC2F15AB0AB42534A81DE9694F63D91BAF432E978764FCDA
            D5ABD8F7DD7E18CDAD1C49425924095D0C08405056BEB682141EB9D9AAD198B7
            603EC4627150C61D763BF6EC2EC595EBB7E0F67AD73106DDFA40E6DD07189BBF
            28D903D1251211D199C332A029C8F7152281EEBCF2F84FB8D5D00C96E31A870E
            495EF7ED171F95050520485DB0783A78BA4C2A95289212E23061E278A8B3B321
            954A7B9D2C5CB85FAA4E82A9FB0DE6560BC9FD54635A72628A4422163EDADAEB
            7F345EA425145B7DB4F446400082B2A769E55E29BE24DD79F2D86890EA889463
            09BE922C3E4128C958DC319BD1423EBD6D6DED68B7DA850BC79155D60F4B4F6D
            1481DA4DE68AAC764775CB1DCB9871C9DDF55B9EBBB916ABEBAA0202E8114950
            73C98E36906E0A697D05E98345A98BE58461C2E41A72E156F65CB8C5ABDE5F68
            B33BDE168CBF10D355BDA3C83681E6790E8D96BCDE20A8BECA724159054B151E
            78553461A278A12CA79C3CBC0C7966A412C98587E33C2B6FC9F33CCD5F108CEF
            54DF1C4F093686C69152B17708BF00C16A6CE1D28C91518EAFBE56FD394530DE
            F3FE51108F1DC0A72DCA29A4263B4A7A031E7CDD1B44FF000401D17F007E2048
            8DCF510D6DEAFE05E80B227330A8E6F61FFB1FE051100951E045F4DD2703D00B
            049F1E0FEAF6DD4D4F0E40D0A631A34860AE21BDC9E4FE97C1C56DF81B0045B8
            4C4E8F07C30000000049454E44AE426082}
          OnClick = Image3Click
        end
      end
      object pnlData: TPanel
        AlignWithMargins = True
        Left = 18
        Top = 79
        Width = 688
        Height = 50
        Margins.Bottom = 15
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 87
          Height = 16
          Caption = 'Lan'#231'amento: '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 184
          Top = 16
          Width = 37
          Height = 16
          Caption = 'Data: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 360
          Top = 16
          Width = 47
          Height = 16
          Caption = 'Status: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLanc: TLabel
          Left = 113
          Top = 18
          Width = 3
          Height = 13
        end
        object lblData: TLabel
          Left = 222
          Top = 18
          Width = 3
          Height = 13
        end
        object lblStatus: TLabel
          Left = 407
          Top = 18
          Width = 3
          Height = 13
        end
      end
      object DBGrid1: TDBGrid
        Left = 15
        Top = 216
        Width = 694
        Height = 271
        Align = alClient
        DataSource = dsControleEst
        PopupMenu = PopupMenu1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CONTROLE_LANCAMENTO'
            Title.Caption = 'Lan'#231'amento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Caption = 'C'#243'd. Prod.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Title.Caption = 'Estoque'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EST_REAL'
            Visible = False
          end>
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 144
        Width = 694
        Height = 57
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 15
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          694
          57)
        object Image6: TImage
          Left = 600
          Top = 12
          Width = 87
          Height = 34
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000570000
            00220802000000A545D249000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
            A94944415478DA63F4591FC030E201E368288C86C268288C86C268288C86C268
            288C86C268288C86C2100B0567F3F905926FD76F2899371442C1B1CA23CF9203
            4DF0C3F173892F94D6070ADC25DB1B48A110DF1F10A0F26183EF8185833B1418
            4E4CD8D1B9175522C96134142806433047600B05B4C8147E3E6921435C81A400
            48EE075C3D7A86BA7327B0F00A9A76B09A1FA0B4004E5FA8D680D2080328B120
            0901F363DB23100BA49EE3C4846B0CF14616820C24244C5A8502D095EF9F4F8A
            3BB99F01258503B5C7315C833A1AAC8501E207ACA180613E4431D040DDCB301F
            22E74468A8FD2039A952A5740439E221465A0007015214617119482503383910
            0A0574331140AE7C9191C60D7050E2B66880D202B28BD1F23C988B48E8902483
            3F1430BD87965920396BA8840224B3C073324225BE50D0E9D9AC220CCFFCE0C8
            47CAF660EEDB21140A0FD12B0262428150FE1A09A1803D2F0CE95098074ADBCA
            B0DA11A52AC11E0A687901611AB46681E58E21562E20178DC08C7D59175F5A78
            84A53EFA80DA8EF8016D1DD0392D0C4F301A0AA3A1301A0AA3A1301A0AA3A130
            1A0AA3A1301A0AC40000BA2663379D4DF1030000000049454E44AE426082}
          OnClick = Image6Click
          ExplicitLeft = 609
        end
        object Label4: TLabel
          Left = 12
          Top = 10
          Width = 82
          Height = 13
          Caption = 'C'#243'digo de Barras'
        end
        object Label5: TLabel
          Left = 204
          Top = 10
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object Image7: TImage
          Left = 319
          Top = 16
          Width = 59
          Height = 34
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000003B0000
            002208020000006E9E36B7000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
            254944415478DA6364E8D9C530A400E3A88B475D3CEAE251178FBA7850805117
            8FBA98262EEE8E712D1187F33EF5F49E2C8571E2FDEC16A832ACDF7128E82AB2
            083BC3CB878C4B6E0D888BD5CE14CB1B7F7D9530E3E24224079D3DB3DBE42036
            17DB9BFF37E183CB0E808BC1A18B12A86882282ED6D67FEE21C670FBAAE4A667
            148411252EC6E5022471848B194082121424066AB81814C5ECC8691406C04905
            EC38988B5FC879404528742E452EC6CC553020B52E433B900194B81920F90C04
            D013CFE076F1D79F2FB8D9259032E8C0B898945471284804544ABCA038DB51E6
            629272DE55F4826F205C4C6AE906492DDC3FB1450BBD5C8C598340EA3F9C3508
            867AFABB18E14A1820504B43AA3D060A1C3D225B42A32E1E75F1808351178FBA
            78D4C5030100ADE00B7E1868BBAE0000000049454E44AE426082}
          OnClick = Image7Click
        end
        object edtCodBarra: TEdit
          Left = 12
          Top = 25
          Width = 173
          Height = 21
          TabOrder = 0
          OnKeyPress = edtCodBarraKeyPress
        end
        object edtQuantidade: TEdit
          Left = 204
          Top = 29
          Width = 109
          Height = 21
          TabOrder = 1
          OnKeyPress = edtQuantidadeKeyPress
        end
      end
    end
  end
  object qryControleEst: TFDQuery
    Connection = dmConexao.fbConnection
    SQL.Strings = (
      
        'SELECT ICE.CONTROLE_LANCAMENTO, ICE.PRO_CODIGO, ICE.ESTOQUE, P.E' +
        'STOQUE AS EST_REAL'
      'FROM ITEM_CONTROLE_ESTOQUE ICE'
      'INNER JOIN PRODUTO P ON P.PRO_CODIGO = ICE.PRO_CODIGO')
    Left = 676
    Top = 18
    object qryControleEstCONTROLE_LANCAMENTO: TIntegerField
      FieldName = 'CONTROLE_LANCAMENTO'
      Origin = 'CONTROLE_LANCAMENTO'
    end
    object qryControleEstPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      Required = True
    end
    object qryControleEstESTOQUE: TSingleField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object qryControleEstEST_REAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'EST_REAL'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsControleEst: TDataSource
    DataSet = qryControleEst
    Left = 753
    Top = 18
  end
  object PopupMenu1: TPopupMenu
    Left = 808
    Top = 288
    object Estornarlanamento1: TMenuItem
      Caption = 'Estornar lan'#231'amento'
      OnClick = Estornarlanamento1Click
    end
  end
end
