object dmTriWay: TdmTriWay
  OldCreateOrder = False
  OnCreate = DataModuleSetUp
  Height = 409
  Width = 696
  object conTriWayDatabase: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=TriWay Transport.md' +
      'b;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:System da' +
      'tabase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password' +
      '="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Je' +
      't OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transact' +
      'ions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Syste' +
      'm Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39 +
      't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica' +
      ' Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 344
    Top = 16
  end
  object qryUsers: TADOQuery
    Connection = conTriWayDatabase
    Parameters = <>
    Left = 344
    Top = 104
  end
  object qryDriver: TADOQuery
    Connection = conTriWayDatabase
    Parameters = <>
    Left = 344
    Top = 176
  end
  object qryAdmin: TADOQuery
    Connection = conTriWayDatabase
    Parameters = <>
    Left = 344
    Top = 320
  end
  object dscUsers: TDataSource
    DataSet = qryUsers
    Left = 624
    Top = 104
  end
  object dscDriver: TDataSource
    DataSet = qryDriver
    Left = 624
    Top = 176
  end
  object dscDeliveries: TDataSource
    DataSet = qryDeliveries
    Left = 616
    Top = 256
  end
  object dscAdmin: TDataSource
    DataSet = qryAdmin
    Left = 624
    Top = 328
  end
  object qryDeliveries: TADOQuery
    Connection = conTriWayDatabase
    Parameters = <>
    Left = 344
    Top = 248
  end
  object qryVehicles: TADOQuery
    Connection = conTriWayDatabase
    Parameters = <>
    Left = 192
    Top = 216
  end
  object dscVehicles: TDataSource
    DataSet = qryVehicles
    Left = 216
    Top = 312
  end
end
