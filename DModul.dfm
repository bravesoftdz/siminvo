object MastData: TMastData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 490
  Width = 664
  object invConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=root;DATAB' +
      'ASE=svatrading;PORT=3306;COLUMN_SIZE_S32=1"'
    ConnectionTimeout = 6000
    LoginPrompt = False
    AfterConnect = invConnectionAfterConnect
    Left = 24
    Top = 8
  end
  object DSMTable: TDataSource
    DataSet = ADOQuery1
    Left = 152
    Top = 8
  end
  object DSMJenis: TDataSource
    DataSet = MJenis
    Left = 152
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Connection = invConnection
    CommandTimeout = 3000
    Parameters = <>
    Left = 96
    Top = 8
  end
  object MJenis: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * From svinmjns')
    Left = 96
    Top = 56
    object MJenisJNS: TStringField
      FieldName = 'JNS'
      Size = 10
    end
    object MJenisKET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object MJenisTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object MGolongan: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MGolonganNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmgol')
    Left = 96
    Top = 104
    object MGolonganGol: TStringField
      FieldName = 'Gol'
      Size = 10
    end
    object MGolonganKet: TStringField
      FieldName = 'Ket'
      Size = 30
    end
    object MGolonganTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object DSMGolongan: TDataSource
    DataSet = MGolongan
    Left = 152
    Top = 104
  end
  object DSMMerek: TDataSource
    DataSet = MMerek
    Left = 152
    Top = 152
  end
  object MMerek: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MMerekNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmmrk')
    Left = 96
    Top = 152
    object MMerekMRK: TStringField
      FieldName = 'MRK'
      Size = 10
    end
    object MMerekKET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object MMerekTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object DSMSize: TDataSource
    DataSet = MSize
    Left = 152
    Top = 200
  end
  object MSize: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MSizeNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmsize')
    Left = 96
    Top = 200
    object MSizeSIZE: TStringField
      FieldName = 'SIZE'
      Size = 10
    end
    object MSizeKET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object MSizeTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object DSMWarna: TDataSource
    DataSet = MWarna
    Left = 152
    Top = 248
  end
  object MWarna: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MWarnaNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmwrn')
    Left = 96
    Top = 248
    object MWarnaWRN: TStringField
      FieldName = 'WRN'
      Size = 10
    end
    object MWarnaKET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object MWarnaTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object DSMKualitas: TDataSource
    DataSet = MKualitas
    Left = 152
    Top = 296
  end
  object MKualitas: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MKualitasNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmkualitas')
    Left = 96
    Top = 296
    object MKualitasKUALI: TStringField
      FieldName = 'KUALI'
      Size = 10
    end
    object MKualitasKET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object MKualitasTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object DSMMotif: TDataSource
    DataSet = MMotif
    Left = 152
    Top = 344
  end
  object MMotif: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MMotifNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * From svinmmotif')
    Left = 96
    Top = 344
    object MMotifMTF: TStringField
      FieldName = 'MTF'
      Size = 10
    end
    object MMotifKET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object MMotifTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object DSMBarang: TDataSource
    DataSet = MBarang
    Left = 152
    Top = 392
  end
  object MBarang: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MBarangNewRecord
    OnPostError = MBarangPostError
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmbrg')
    Left = 96
    Top = 392
    object MBarangBRG: TStringField
      FieldName = 'BRG'
      Size = 30
    end
    object MBarangNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
    object MBarangNama2: TStringField
      FieldName = 'Nama2'
      Size = 100
    end
    object MBarangJenis: TStringField
      FieldName = 'Jenis'
      Size = 10
    end
    object MBarangStn1: TStringField
      FieldName = 'Stn1'
      Size = 5
    end
    object MBarangStn2: TStringField
      FieldName = 'Stn2'
      Size = 5
    end
    object MBarangStn3: TStringField
      FieldName = 'Stn3'
      Size = 5
    end
    object MBarangMaxi: TFMTBCDField
      FieldName = 'Maxi'
      Precision = 18
    end
    object MBarangMini: TFMTBCDField
      FieldName = 'Mini'
      Precision = 18
    end
    object MBarangIsi1: TFMTBCDField
      FieldName = 'Isi1'
      Precision = 18
    end
    object MBarangIsi2: TFMTBCDField
      FieldName = 'Isi2'
      Precision = 18
    end
    object MBarangHpp: TFMTBCDField
      FieldName = 'Hpp'
      Precision = 28
    end
    object MBaranghbeli: TFMTBCDField
      FieldName = 'hbeli'
      Precision = 28
    end
    object MBaranghjual1: TFMTBCDField
      FieldName = 'hjual1'
      Precision = 28
    end
    object MBaranghjual2: TFMTBCDField
      FieldName = 'hjual2'
      Precision = 28
    end
    object MBaranghjual3: TFMTBCDField
      FieldName = 'hjual3'
      Precision = 28
    end
    object MBaranglks: TStringField
      FieldName = 'lks'
      Size = 10
    end
    object MBarangsup: TStringField
      FieldName = 'sup'
      Size = 10
    end
    object MBaranggol: TStringField
      FieldName = 'gol'
      Size = 10
    end
    object MBarangmerek: TStringField
      FieldName = 'merek'
      Size = 10
    end
    object MBarangtype: TStringField
      FieldName = 'type'
      Size = 10
    end
    object MBarangmodel: TStringField
      FieldName = 'model'
      Size = 5
    end
    object MBarangklink: TStringField
      FieldName = 'klink'
      Size = 5
    end
    object MBarangstatus: TSmallintField
      FieldName = 'status'
    end
    object MBarangbarcode: TStringField
      FieldName = 'barcode'
      Size = 50
    end
    object MBarangnamabar: TStringField
      FieldName = 'namabar'
      Size = 30
    end
    object MBarangberat: TFMTBCDField
      FieldName = 'berat'
      Precision = 28
    end
    object MBarangvol: TFMTBCDField
      FieldName = 'vol'
      Precision = 28
    end
    object MBarangslevel: TFMTBCDField
      FieldName = 'slevel'
      Precision = 28
    end
    object MBarangkuali: TStringField
      FieldName = 'kuali'
      Size = 10
    end
    object MBarangwrn: TStringField
      FieldName = 'wrn'
      Size = 10
    end
    object MBarangmtf: TStringField
      FieldName = 'mtf'
      Size = 10
    end
    object MBarangsize: TStringField
      FieldName = 'size'
      Size = 10
    end
    object MBarangtglu: TDateTimeField
      FieldName = 'tglu'
    end
    object MBaranglNonkonsinyasi: TStringField
      FieldName = 'lNonkonsinyasi'
      FixedChar = True
      Size = 5
    end
    object MBaranglAktif: TStringField
      FieldName = 'lAktif'
      FixedChar = True
      Size = 2
    end
    object MBarangcab: TStringField
      FieldName = 'cab'
      Size = 10
    end
    object MBaranglstatAll: TBooleanField
      FieldName = 'lstatAll'
    end
    object MBarangRak: TStringField
      FieldName = 'Rak'
      Size = 10
    end
    object MBarangKdHarga: TStringField
      FieldName = 'KdHarga'
      Size = 5
    end
    object MBaranghppjual: TFMTBCDField
      FieldName = 'hppjual'
      Precision = 28
    end
    object MBarangpersentjual: TFMTBCDField
      FieldName = 'persentjual'
      Precision = 18
    end
    object MBarangpersentnilai: TFMTBCDField
      FieldName = 'persentnilai'
      Precision = 28
    end
    object MBarangNMJenis: TStringField
      FieldKind = fkLookup
      FieldName = 'NMJenis'
      LookupDataSet = MJenis
      LookupKeyFields = 'JNS'
      LookupResultField = 'KET'
      KeyFields = 'Jenis'
      Lookup = True
    end
    object MBarangNMGolongan: TStringField
      FieldKind = fkLookup
      FieldName = 'NMGolongan'
      LookupDataSet = MGolongan
      LookupKeyFields = 'Gol'
      LookupResultField = 'Ket'
      KeyFields = 'gol'
      Lookup = True
    end
    object MBarangNMMerek: TStringField
      FieldKind = fkLookup
      FieldName = 'NMMerek'
      LookupDataSet = MMerek
      LookupKeyFields = 'MRK'
      LookupResultField = 'KET'
      KeyFields = 'merek'
      Lookup = True
    end
    object MBarangNMType: TStringField
      FieldKind = fkLookup
      FieldName = 'NMType'
      LookupDataSet = MType
      LookupKeyFields = 'Type'
      LookupResultField = 'Ket'
      KeyFields = 'type'
      Lookup = True
    end
    object MBarangNMKualitas: TStringField
      FieldKind = fkLookup
      FieldName = 'NMKualitas'
      LookupDataSet = MKualitas
      LookupKeyFields = 'KUALI'
      LookupResultField = 'KET'
      KeyFields = 'kuali'
      Size = 0
      Lookup = True
    end
    object MBarangNMWarna: TStringField
      FieldKind = fkLookup
      FieldName = 'NMWarna'
      LookupDataSet = MWarna
      LookupKeyFields = 'WRN'
      LookupResultField = 'KET'
      KeyFields = 'wrn'
      Lookup = True
    end
    object MBarangNMSize: TStringField
      FieldKind = fkLookup
      FieldName = 'NMSize'
      LookupDataSet = MSize
      LookupKeyFields = 'SIZE'
      LookupResultField = 'KET'
      KeyFields = 'size'
      Lookup = True
    end
    object MBarangNMMotif: TStringField
      FieldKind = fkLookup
      FieldName = 'NMMotif'
      LookupDataSet = MMotif
      LookupKeyFields = 'MTF'
      LookupResultField = 'KET'
      KeyFields = 'mtf'
      Lookup = True
    end
    object MBarangNMHRG: TStringField
      FieldKind = fkLookup
      FieldName = 'NMHRG'
      LookupDataSet = MHRGJual
      LookupKeyFields = 'Hrg'
      LookupResultField = 'Ket'
      KeyFields = 'KdHarga'
      Lookup = True
    end
  end
  object QCari: TADOQuery
    Connection = invConnection
    CommandTimeout = 3000
    Parameters = <>
    Left = 24
    Top = 56
  end
  object DSMType: TDataSource
    DataSet = MType
    Left = 152
    Top = 440
  end
  object MType: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmtype')
    Left = 96
    Top = 440
    object MTypeType: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object MTypeKet: TStringField
      FieldName = 'Ket'
      Size = 30
    end
    object MTypeTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object DSMHRGJual: TDataSource
    DataSet = MHRGJual
    Left = 272
    Top = 56
  end
  object MHRGJual: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svarmhrg')
    Left = 216
    Top = 56
    object MHRGJualHrg: TStringField
      FieldName = 'Hrg'
      Size = 5
    end
    object MHRGJualKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object MHRGJualVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object MHRGJualTglu: TDateTimeField
      FieldName = 'Tglu'
    end
  end
  object DSMSUP: TDataSource
    DataSet = MSUPP
    Left = 272
    Top = 104
  end
  object MSUPP: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * From svapmsup')
    Left = 216
    Top = 104
    object MSUPPSUP: TStringField
      FieldName = 'SUP'
      Size = 10
    end
    object MSUPPNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object MSUPPAL1: TStringField
      FieldName = 'AL1'
      Size = 30
    end
    object MSUPPAL2: TStringField
      FieldName = 'AL2'
      Size = 30
    end
    object MSUPPTelp: TStringField
      FieldName = 'Telp'
      Size = 30
    end
    object MSUPPPerso: TStringField
      FieldName = 'Perso'
      Size = 30
    end
    object MSUPPNPWP: TStringField
      FieldName = 'NPWP'
      Size = 15
    end
    object MSUPPTerm: TSmallintField
      FieldName = 'Term'
    end
    object MSUPPKlink: TStringField
      FieldName = 'Klink'
      Size = 10
    end
    object MSUPPcab: TStringField
      FieldName = 'cab'
      Size = 10
    end
    object MSUPPval: TStringField
      FieldName = 'val'
      Size = 5
    end
    object MSUPPTglU: TDateTimeField
      FieldName = 'TglU'
    end
    object MSUPPwil: TStringField
      FieldName = 'wil'
      Size = 10
    end
    object MSUPPFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
  end
  object DSMRAK: TDataSource
    DataSet = MRAK
    Left = 272
    Top = 152
  end
  object MRAK: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmrak')
    Left = 216
    Top = 152
    object MRAKRak: TStringField
      FieldName = 'Rak'
      Size = 10
    end
    object MRAKKet: TStringField
      FieldName = 'Ket'
      Size = 30
    end
    object MRAKTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object DSMMBRGG: TDataSource
    DataSet = MBARANGG
    Left = 272
    Top = 200
  end
  object MBARANGG: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    BeforeInsert = MBARANGGBeforeInsert
    BeforeEdit = MBARANGGBeforeEdit
    OnNewRecord = MBARANGGNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from vsvinmbrgg')
    Left = 216
    Top = 200
    object MBARANGGBrg: TStringField
      FieldName = 'Brg'
      Size = 30
    end
    object MBARANGGKet: TMemoField
      FieldName = 'Ket'
      BlobType = ftMemo
    end
    object MBARANGGTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object MBARANGGGbr: TMemoField
      FieldName = 'Gbr'
      BlobType = ftMemo
    end
    object MBARANGGNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
  end
  object sp_input_gambar: TADOStoredProc
    Connection = invConnection
    CommandTimeout = 6000
    ProcedureName = 'sp_input_gambar'
    Parameters = <
      item
        Name = 'pathtemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'tempketerangan'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'tempbrgID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Prepared = True
    Left = 336
    Top = 8
  end
  object DSMGudang: TDataSource
    DataSet = MGudang
    Left = 272
    Top = 248
  end
  object MGudang: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmgdg')
    Left = 216
    Top = 248
    object MGudangGdg: TStringField
      FieldName = 'Gdg'
      Size = 3
    end
    object MGudangNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object MGudangTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object DSMKonfBarang: TDataSource
    DataSet = MKonfBarangHeader
    Left = 272
    Top = 296
  end
  object MKonfBarangHeader: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    AfterScroll = MKonfBarangHeaderAfterScroll
    CommandTimeout = 3000
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select Brg,Nama1 From svinmbrg'
      'where type = '#39'02'#39
      'Group by Brg')
    Left = 216
    Top = 296
    object MKonfBarangHeaderBRG: TStringField
      FieldName = 'BRG'
      Size = 30
    end
    object MKonfBarangHeaderNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
  end
  object DSMKonfBarangDetail: TDataSource
    DataSet = MKonfBarangDetail
    Left = 272
    Top = 344
  end
  object MKonfBarangDetail: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    BeforeInsert = MKonfBarangDetailBeforeInsert
    BeforeEdit = MKonfBarangDetailBeforeEdit
    OnNewRecord = MKonfBarangDetailNewRecord
    CommandTimeout = 3000
    DataSource = DSMKonfBarang
    Parameters = <
      item
        Name = 'Brg_'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From svinmkbrg where Brg=:Brg_')
    Left = 216
    Top = 344
    object MKonfBarangDetailBRG: TStringField
      FieldName = 'BRG'
      Size = 30
    end
    object MKonfBarangDetailNOUR: TSmallintField
      FieldName = 'NOUR'
    end
    object MKonfBarangDetailBRGD: TStringField
      FieldName = 'BRGD'
    end
    object MKonfBarangDetailGD: TStringField
      FieldName = 'GD'
      Size = 2
    end
    object MKonfBarangDetailSTN3: TStringField
      FieldName = 'STN3'
      Size = 5
    end
    object MKonfBarangDetailQTY: TFMTBCDField
      FieldName = 'QTY'
      Precision = 18
    end
    object MKonfBarangDetailHSATUAN: TFMTBCDField
      FieldName = 'HSATUAN'
      Precision = 28
    end
    object MKonfBarangDetailTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
    object MKonfBarangDetailCab: TStringField
      FieldName = 'Cab'
      Size = 5
    end
  end
  object DSMPXSetup: TDataSource
    DataSet = PXSetup
    Left = 272
    Top = 392
  end
  object PXSetup: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svlmpsys')
    Left = 216
    Top = 392
    object PXSetupNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object PXSetupCompany: TStringField
      FieldName = 'Company'
      Size = 50
    end
    object PXSetupAlamat1: TStringField
      FieldName = 'Alamat1'
      Size = 50
    end
    object PXSetupAlamat2: TStringField
      FieldName = 'Alamat2'
      Size = 50
    end
    object PXSetupTelp: TStringField
      FieldName = 'Telp'
      Size = 30
    end
    object PXSetupNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object PXSetupGDGU: TStringField
      FieldName = 'GDGU'
      Size = 2
    end
    object PXSetupSTNU: TSmallintField
      FieldName = 'STNU'
    end
    object PXSetupVALU: TStringField
      FieldName = 'VALU'
      Size = 5
    end
    object PXSetupMTDP: TSmallintField
      FieldName = 'MTDP'
    end
    object PXSetupJBLT: TSmallintField
      FieldName = 'JBLT'
    end
    object PXSetupNBLT1: TFMTBCDField
      FieldName = 'NBLT1'
      Precision = 18
    end
    object PXSetupNBLT2: TFMTBCDField
      FieldName = 'NBLT2'
      Precision = 18
    end
    object PXSetupLKGL: TBooleanField
      FieldName = 'LKGL'
    end
    object PXSetupTGLP: TDateTimeField
      FieldName = 'TGLP'
    end
    object PXSetupLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object PXSetupLOGOLAP: TBlobField
      FieldName = 'LOGOLAP'
    end
    object PXSetupTPLOGO: TBooleanField
      FieldName = 'TPLOGO'
    end
    object PXSetupTPNAMA: TBooleanField
      FieldName = 'TPNAMA'
    end
    object PXSetupJUALO: TSmallintField
      FieldName = 'JUALO'
    end
    object PXSetupfiledbSys1: TMemoField
      FieldName = 'filedbSys1'
      BlobType = ftMemo
    end
    object PXSetupfiledbSys2: TMemoField
      FieldName = 'filedbSys2'
      BlobType = ftMemo
    end
    object PXSetuptglInstall: TDateTimeField
      FieldName = 'tglInstall'
    end
    object PXSetuplnoaktif: TBooleanField
      FieldName = 'lnoaktif'
    end
    object PXSetupcopyright: TStringField
      FieldName = 'copyright'
      Size = 50
    end
    object PXSetupmsaktif: TIntegerField
      FieldName = 'msaktif'
    end
    object PXSetupaktif: TIntegerField
      FieldName = 'aktif'
    end
    object PXSetupCab: TStringField
      FieldName = 'Cab'
      Size = 10
    end
    object PXSetuplfifoaveg: TBooleanField
      FieldName = 'lfifoaveg'
    end
    object PXSetuphrgu: TStringField
      FieldName = 'hrgu'
      Size = 5
    end
    object PXSetupprefiksltahu: TStringField
      FieldName = 'prefiksltahu'
      Size = 1
    end
    object PXSetupprefikslbulan: TStringField
      FieldName = 'prefikslbulan'
      Size = 1
    end
    object PXSetupprefiksltgl: TStringField
      FieldName = 'prefiksltgl'
      Size = 1
    end
    object PXSetupdisctingkat: TStringField
      FieldName = 'disctingkat'
      Size = 1
    end
  end
  object DSMBarangNonKonf: TDataSource
    DataSet = MBarangNonKonf
    Left = 272
    Top = 440
  end
  object MBarangNonKonf: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MBarangNewRecord
    OnPostError = MBarangPostError
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmbrg'
      'Where Type ='#39'01'#39)
    Left = 216
    Top = 440
    object MBarangNonKonfBRG: TStringField
      FieldName = 'BRG'
      Size = 30
    end
    object MBarangNonKonfNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
    object MBarangNonKonfNama2: TStringField
      FieldName = 'Nama2'
      Size = 100
    end
    object MBarangNonKonfJenis: TStringField
      FieldName = 'Jenis'
      Size = 10
    end
    object MBarangNonKonfStn1: TStringField
      FieldName = 'Stn1'
      Size = 5
    end
    object MBarangNonKonfStn2: TStringField
      FieldName = 'Stn2'
      Size = 5
    end
    object MBarangNonKonfStn3: TStringField
      FieldName = 'Stn3'
      Size = 5
    end
    object MBarangNonKonfMaxi: TFMTBCDField
      FieldName = 'Maxi'
      Precision = 18
    end
    object MBarangNonKonfMini: TFMTBCDField
      FieldName = 'Mini'
      Precision = 18
    end
    object MBarangNonKonfIsi1: TFMTBCDField
      FieldName = 'Isi1'
      Precision = 18
    end
    object MBarangNonKonfIsi2: TFMTBCDField
      FieldName = 'Isi2'
      Precision = 18
    end
    object MBarangNonKonfHpp: TFMTBCDField
      FieldName = 'Hpp'
      Precision = 28
    end
    object MBarangNonKonfhbeli: TFMTBCDField
      FieldName = 'hbeli'
      Precision = 28
    end
    object MBarangNonKonfhjual1: TFMTBCDField
      FieldName = 'hjual1'
      Precision = 28
    end
    object MBarangNonKonfhjual2: TFMTBCDField
      FieldName = 'hjual2'
      Precision = 28
    end
    object MBarangNonKonfhjual3: TFMTBCDField
      FieldName = 'hjual3'
      Precision = 28
    end
    object MBarangNonKonflks: TStringField
      FieldName = 'lks'
      Size = 10
    end
    object MBarangNonKonfsup: TStringField
      FieldName = 'sup'
      Size = 10
    end
    object MBarangNonKonfgol: TStringField
      FieldName = 'gol'
      Size = 10
    end
    object MBarangNonKonfmerek: TStringField
      FieldName = 'merek'
      Size = 10
    end
    object MBarangNonKonftype: TStringField
      FieldName = 'type'
      Size = 10
    end
    object MBarangNonKonfmodel: TStringField
      FieldName = 'model'
      Size = 5
    end
    object MBarangNonKonfklink: TStringField
      FieldName = 'klink'
      Size = 5
    end
    object MBarangNonKonfstatus: TSmallintField
      FieldName = 'status'
    end
    object MBarangNonKonfbarcode: TStringField
      FieldName = 'barcode'
      Size = 50
    end
    object MBarangNonKonfnamabar: TStringField
      FieldName = 'namabar'
      Size = 30
    end
    object MBarangNonKonfberat: TFMTBCDField
      FieldName = 'berat'
      Precision = 28
    end
    object MBarangNonKonfvol: TFMTBCDField
      FieldName = 'vol'
      Precision = 28
    end
    object MBarangNonKonfslevel: TFMTBCDField
      FieldName = 'slevel'
      Precision = 28
    end
    object MBarangNonKonfkuali: TStringField
      FieldName = 'kuali'
      Size = 10
    end
    object MBarangNonKonfwrn: TStringField
      FieldName = 'wrn'
      Size = 10
    end
    object MBarangNonKonfmtf: TStringField
      FieldName = 'mtf'
      Size = 10
    end
    object MBarangNonKonfsize: TStringField
      FieldName = 'size'
      Size = 10
    end
    object MBarangNonKonftglu: TDateTimeField
      FieldName = 'tglu'
    end
    object MBarangNonKonflNonkonsinyasi: TStringField
      FieldName = 'lNonkonsinyasi'
      FixedChar = True
      Size = 5
    end
    object MBarangNonKonflAktif: TStringField
      FieldName = 'lAktif'
      FixedChar = True
      Size = 2
    end
    object MBarangNonKonfcab: TStringField
      FieldName = 'cab'
      Size = 10
    end
    object MBarangNonKonflstatAll: TBooleanField
      FieldName = 'lstatAll'
    end
    object MBarangNonKonfRak: TStringField
      FieldName = 'Rak'
      Size = 10
    end
    object MBarangNonKonfKdHarga: TStringField
      FieldName = 'KdHarga'
      Size = 5
    end
    object MBarangNonKonfhppjual: TFMTBCDField
      FieldName = 'hppjual'
      Precision = 28
    end
    object MBarangNonKonfpersentjual: TFMTBCDField
      FieldName = 'persentjual'
      Precision = 18
    end
    object MBarangNonKonfpersentnilai: TFMTBCDField
      FieldName = 'persentnilai'
      Precision = 28
    end
  end
  object DSMAPVal: TDataSource
    DataSet = MAPVal
    Left = 392
    Top = 56
  end
  object MAPVal: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MAPValNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svapmval')
    Left = 336
    Top = 56
    object MAPValVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object MAPValKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object MAPValTukar: TFMTBCDField
      FieldName = 'Tukar'
      DisplayFormat = '###0,###'
      Precision = 18
    end
    object MAPValTglu: TDateTimeField
      FieldName = 'Tglu'
    end
  end
  object DSMAPSup: TDataSource
    DataSet = MAPSup
    Left = 392
    Top = 104
  end
  object MAPSup: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    BeforeInsert = MAPSupBeforeInsert
    BeforeEdit = MAPSupBeforeEdit
    OnNewRecord = MAPSupNewRecord
    OnPostError = MAPSupPostError
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svapmsup')
    Left = 336
    Top = 104
    object MAPSupSUP: TStringField
      FieldName = 'SUP'
      Size = 10
    end
    object MAPSupNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object MAPSupAL1: TStringField
      FieldName = 'AL1'
      Size = 30
    end
    object MAPSupAL2: TStringField
      FieldName = 'AL2'
      Size = 30
    end
    object MAPSupTelp: TStringField
      FieldName = 'Telp'
      Size = 30
    end
    object MAPSupPerso: TStringField
      FieldName = 'Perso'
      Size = 30
    end
    object MAPSupNPWP: TStringField
      FieldName = 'NPWP'
      Size = 15
    end
    object MAPSupTerm: TSmallintField
      FieldName = 'Term'
    end
    object MAPSupKlink: TStringField
      FieldName = 'Klink'
      Size = 10
    end
    object MAPSupcab: TStringField
      FieldName = 'cab'
      Size = 10
    end
    object MAPSupval: TStringField
      FieldName = 'val'
      Size = 5
    end
    object MAPSupTglU: TDateTimeField
      FieldName = 'TglU'
    end
    object MAPSupwil: TStringField
      FieldName = 'wil'
      Size = 10
    end
    object MAPSupFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object MAPSupNMWilayah: TStringField
      FieldKind = fkLookup
      FieldName = 'NMWilayah'
      LookupDataSet = MWilayah
      LookupKeyFields = 'Wil'
      LookupResultField = 'Nama'
      KeyFields = 'wil'
      Lookup = True
    end
    object MAPSupNMValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'NMValuta'
      LookupDataSet = MAPVal
      LookupKeyFields = 'Val'
      LookupResultField = 'Ket'
      KeyFields = 'val'
      Lookup = True
    end
    object MAPSupNMCabang: TStringField
      FieldKind = fkLookup
      FieldName = 'NMCabang'
      LookupDataSet = MCabang
      LookupKeyFields = 'cab'
      LookupResultField = 'Ket'
      KeyFields = 'cab'
      Lookup = True
    end
  end
  object DSMWilayah: TDataSource
    DataSet = MWilayah
    Left = 392
    Top = 152
  end
  object MWilayah: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svmwilayah')
    Left = 336
    Top = 152
    object MWilayahWil: TStringField
      FieldName = 'Wil'
      Size = 10
    end
    object MWilayahNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object MWilayahTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object DSMCabang: TDataSource
    DataSet = MCabang
    Left = 392
    Top = 200
  end
  object MCabang: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svinmcbg')
    Left = 336
    Top = 200
    object MCabangcab: TStringField
      FieldName = 'cab'
      Size = 10
    end
    object MCabangKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object MCabangtglU: TDateTimeField
      FieldName = 'tglU'
    end
  end
  object MARVal: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MARValNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svarmval')
    Left = 336
    Top = 248
    object MARValVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object MARValKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object MARValTukar: TFMTBCDField
      FieldName = 'Tukar'
      DisplayFormat = '###0,###'
      Precision = 18
    end
    object MARValTglu: TDateTimeField
      FieldName = 'Tglu'
    end
  end
  object DSMARVal: TDataSource
    DataSet = MARVal
    Left = 392
    Top = 248
  end
  object DSMARSales: TDataSource
    DataSet = MARSales
    Left = 392
    Top = 296
  end
  object MARSales: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    BeforeInsert = MARSalesBeforeInsert
    BeforeEdit = MARSalesBeforeEdit
    OnNewRecord = MARSalesNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svarmsales')
    Left = 336
    Top = 296
    object MARSalesSales: TStringField
      FieldName = 'Sales'
      Size = 10
    end
    object MARSalesNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object MARSalesPersen: TFMTBCDField
      FieldName = 'Persen'
      DisplayFormat = '###0,###'
      Precision = 28
    end
    object MARSalesCompany: TStringField
      FieldName = 'Company'
      Size = 10
    end
    object MARSalesTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object MARSalesNamaCabang: TStringField
      FieldKind = fkLookup
      FieldName = 'NamaCabang'
      LookupDataSet = MCabang
      LookupKeyFields = 'cab'
      LookupResultField = 'Ket'
      KeyFields = 'Company'
      Lookup = True
    end
  end
  object DSMARHrg: TDataSource
    DataSet = MARHrg
    Left = 392
    Top = 344
  end
  object MARHrg: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    BeforeInsert = MARHrgBeforeInsert
    BeforeEdit = MARHrgBeforeEdit
    OnNewRecord = MARHrgNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'select * from svarmhrg')
    Left = 336
    Top = 344
    object MARHrgHrg: TStringField
      FieldName = 'Hrg'
      Size = 5
    end
    object MARHrgKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object MARHrgVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object MARHrgTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object MARHrgNamaVal: TStringField
      FieldKind = fkLookup
      FieldName = 'NamaVal'
      LookupDataSet = MARVal
      LookupKeyFields = 'Val'
      LookupResultField = 'Ket'
      KeyFields = 'Val'
      Lookup = True
    end
  end
  object DSMARCust: TDataSource
    DataSet = MARCust
    Left = 392
    Top = 392
  end
  object MARCust: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MARCustNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svarmcust')
    Left = 336
    Top = 392
    object MARCustCust: TStringField
      FieldName = 'Cust'
      Size = 10
    end
    object MARCustNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object MARCustAl1: TStringField
      FieldName = 'Al1'
      Size = 30
    end
    object MARCustAl2: TStringField
      FieldName = 'Al2'
      Size = 30
    end
    object MARCustAl3: TStringField
      FieldName = 'Al3'
      Size = 30
    end
    object MARCustTelp: TStringField
      FieldName = 'Telp'
      Size = 30
    end
    object MARCustPerso: TStringField
      FieldName = 'Perso'
      Size = 30
    end
    object MARCustNpwp: TStringField
      FieldName = 'Npwp'
      Size = 15
    end
    object MARCustTerm: TSmallintField
      FieldName = 'Term'
    end
    object MARCustLimit: TFMTBCDField
      FieldName = 'Limit'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object MARCustPkp: TBooleanField
      FieldName = 'Pkp'
    end
    object MARCustWil: TStringField
      FieldName = 'Wil'
      Size = 10
    end
    object MARCustKlink: TStringField
      FieldName = 'Klink'
      Size = 10
    end
    object MARCustCab: TStringField
      FieldName = 'Cab'
      Size = 10
    end
    object MARCustSales: TStringField
      FieldName = 'Sales'
      Size = 10
    end
    object MARCustVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object MARCustKdHarga: TStringField
      FieldName = 'KdHarga'
      Size = 5
    end
    object MARCustAlkirim1: TStringField
      FieldName = 'Alkirim1'
      Size = 30
    end
    object MARCustAlkirim2: TStringField
      FieldName = 'Alkirim2'
      Size = 30
    end
    object MARCustAlkirim3: TStringField
      FieldName = 'Alkirim3'
      Size = 30
    end
    object MARCustDiscNota1: TFMTBCDField
      FieldName = 'DiscNota1'
      Precision = 28
    end
    object MARCustDiscNota2: TFMTBCDField
      FieldName = 'DiscNota2'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object MARCustDiscItem1: TFMTBCDField
      FieldName = 'DiscItem1'
      Precision = 28
    end
    object MARCustDiscItem2: TFMTBCDField
      FieldName = 'DiscItem2'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object MARCustBlacklist: TBooleanField
      FieldName = 'Blacklist'
    end
    object MARCustSaldo: TFMTBCDField
      FieldName = 'Saldo'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object MARCustSaldoS: TFMTBCDField
      FieldName = 'SaldoS'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object MARCustEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object MARCustWeb: TStringField
      FieldName = 'Web'
      Size = 50
    end
    object MARCustHp: TStringField
      FieldName = 'Hp'
    end
    object MARCustKetBlack: TStringField
      FieldName = 'KetBlack'
      Size = 50
    end
    object MARCustBolehOver: TSmallintField
      FieldName = 'BolehOver'
    end
    object MARCustTglU: TDateTimeField
      FieldName = 'TglU'
    end
    object MARCustMember: TStringField
      FieldName = 'Member'
    end
    object MARCustValiddate: TDateTimeField
      FieldName = 'Validdate'
    end
    object MARCustfax: TStringField
      FieldName = 'fax'
      Size = 30
    end
    object MARCustGiroM: TFMTBCDField
      FieldName = 'GiroM'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
      Size = 0
    end
    object MARCustNMWilayah: TStringField
      FieldKind = fkLookup
      FieldName = 'NMWilayah'
      LookupDataSet = MWilayah
      LookupKeyFields = 'Wil'
      LookupResultField = 'Nama'
      KeyFields = 'Wil'
      Size = 0
      Lookup = True
    end
    object MARCustNMCabang: TStringField
      FieldKind = fkLookup
      FieldName = 'NMCabang'
      LookupDataSet = MCabang
      LookupKeyFields = 'cab'
      LookupResultField = 'Ket'
      KeyFields = 'Cab'
      Lookup = True
    end
    object MARCustNMSales: TStringField
      FieldKind = fkLookup
      FieldName = 'NMSales'
      LookupDataSet = MARSales
      LookupKeyFields = 'Sales'
      LookupResultField = 'Nama'
      KeyFields = 'Sales'
      Lookup = True
    end
    object MARCustNMValuta: TStringField
      FieldKind = fkLookup
      FieldName = 'NMValuta'
      LookupDataSet = MARVal
      LookupKeyFields = 'Val'
      LookupResultField = 'Ket'
      KeyFields = 'Val'
      Lookup = True
    end
    object MARCustNMHarga: TStringField
      FieldKind = fkLookup
      FieldName = 'NMHarga'
      LookupDataSet = MARHrg
      LookupKeyFields = 'Hrg'
      LookupResultField = 'Ket'
      KeyFields = 'KdHarga'
      Lookup = True
    end
  end
  object ADOTable1: TADOTable
    Connection = invConnection
    Left = 216
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 272
    Top = 8
  end
  object MARPerson: TADOTable
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MARPersonNewRecord
    IndexFieldNames = 'Cust'
    MasterFields = 'Cust'
    MasterSource = DSMARCust
    TableName = 'svarmperson'
    Left = 336
    Top = 440
    object MARPersonContac: TStringField
      FieldName = 'Contac'
      Size = 10
    end
    object MARPersonCust: TStringField
      FieldName = 'Cust'
      Size = 10
    end
    object MARPersonNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object MARPersonTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object MARPersonjabatan: TStringField
      FieldName = 'jabatan'
      Size = 50
    end
    object MARPersonAlamat: TStringField
      FieldName = 'Alamat'
      Size = 50
    end
  end
  object DSMARPerson: TDataSource
    DataSet = MARPerson
    Left = 392
    Top = 440
  end
  object MARCustRek: TADOTable
    Connection = invConnection
    CursorType = ctStatic
    IndexFieldNames = 'Cust'
    MasterFields = 'Cust'
    MasterSource = DSMARCust
    TableName = 'svarmrek'
    Left = 456
    Top = 56
    object MARCustReknorek: TStringField
      FieldName = 'norek'
      Size = 50
    end
    object MARCustRekCust: TStringField
      FieldName = 'Cust'
      Size = 10
    end
    object MARCustRekket: TStringField
      FieldName = 'ket'
      Size = 50
    end
    object MARCustRektglU: TDateTimeField
      FieldName = 'tglU'
    end
    object MARCustRekBank: TStringField
      FieldName = 'Bank'
      Size = 10
    end
  end
  object DSMARCustRek: TDataSource
    DataSet = MARCustRek
    Left = 512
    Top = 56
  end
  object DSMARHJual: TDataSource
    DataSet = MARHJual
    Left = 512
    Top = 104
  end
  object MARHJual: TADOQuery
    Connection = invConnection
    CursorType = ctStatic
    OnNewRecord = MARHJualNewRecord
    CommandTimeout = 3000
    Parameters = <>
    SQL.Strings = (
      'Select * from svarmhjbrg')
    Left = 456
    Top = 104
    object MARHJualCab: TStringField
      FieldName = 'Cab'
      Size = 10
    end
    object MARHJualHrg: TStringField
      FieldName = 'Hrg'
      Size = 5
    end
    object MARHJualBrg: TStringField
      FieldName = 'Brg'
      Size = 30
    end
    object MARHJualHpp: TFMTBCDField
      FieldName = 'Hpp'
      Precision = 28
    end
    object MARHJualProfit: TFMTBCDField
      FieldName = 'Profit'
      Precision = 18
    end
    object MARHJualProfitnilai: TFMTBCDField
      FieldName = 'Profitnilai'
      Precision = 28
    end
    object MARHJualH1: TFMTBCDField
      FieldName = 'H1'
      Precision = 28
    end
    object MARHJualH2: TFMTBCDField
      FieldName = 'H2'
      Precision = 28
    end
    object MARHJualH3: TFMTBCDField
      FieldName = 'H3'
      Precision = 28
    end
    object MARHJualTglU: TDateTimeField
      FieldName = 'TglU'
    end
    object MARHJualCreate_id: TStringField
      FieldName = 'Create_id'
      Size = 10
    end
    object MARHJualModify_id: TStringField
      FieldName = 'Modify_id'
      Size = 10
    end
    object MARHJualCreate_Tgl: TDateTimeField
      FieldName = 'Create_Tgl'
    end
  end
  object sp_input_hjual: TADOStoredProc
    Connection = invConnection
    CommandTimeout = 3000
    ProcedureName = 'sp_inputTempbrghjual'
    Parameters = <
      item
        Name = 'tempbrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = '0'
      end
      item
        Name = 'temphpp'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
        Value = '0'
      end
      item
        Name = 'stattransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ''
      end
      item
        Name = 'tempcab'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'temphrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'tempprofit'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
        Value = '0'
      end
      item
        Name = 'tempnilaiprofit'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
        Value = '0'
      end
      item
        Name = 'temph1'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
        Value = '0'
      end
      item
        Name = 'temph2'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
        Value = '0'
      end
      item
        Name = 'temph3'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
        Value = '0'
      end>
    Left = 392
    Top = 8
  end
end
