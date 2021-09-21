object Dataque: TDataque
  OldCreateOrder = False
  Height = 321
  Width = 643
  object MyConnection1: TMyConnection
    Database = 'queuedb'
    Username = '19zan72'
    LoginPrompt = False
    Left = 283
    Top = 80
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object queQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from que')
    Left = 64
    Top = 64
    object queQqueID: TIntegerField
      FieldName = 'queID'
    end
    object queQtype: TStringField
      FieldName = 'type'
      Size = 4
    end
    object queQnumber: TIntegerField
      FieldName = 'number'
    end
    object queQdate: TDateField
      FieldName = 'date'
    end
    object queQtime: TTimeField
      FieldName = 'time'
    end
    object queQcode: TStringField
      FieldName = 'code'
      Size = 10
    end
    object queQgroupno: TIntegerField
      FieldName = 'groupno'
    end
  end
  object publisherQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from publichers')
    Left = 56
    Top = 120
    object publisherQentry: TIntegerField
      FieldName = 'entry'
    end
    object publisherQcode: TStringField
      FieldName = 'code'
      Size = 4
    end
    object publisherQdate: TDateField
      FieldName = 'date'
    end
    object publisherQtime: TTimeField
      FieldName = 'time'
    end
  end
  object manageinQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from managein')
    Left = 64
    Top = 184
    object manageinQidIn: TIntegerField
      FieldName = 'idIn'
    end
    object manageinQtype: TStringField
      FieldName = 'type'
      Size = 4
    end
    object manageinQnumber: TIntegerField
      FieldName = 'number'
    end
    object manageinQdate: TDateField
      FieldName = 'date'
    end
    object manageinQtime: TTimeField
      FieldName = 'time'
    end
    object manageinQcode: TStringField
      FieldName = 'code'
      Size = 10
    end
  end
  object manageOutQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from manageout')
    Left = 144
    Top = 56
    object manageOutQentry: TIntegerField
      FieldName = 'entry'
    end
    object manageOutQtype: TStringField
      FieldName = 'type'
      Size = 4
    end
    object manageOutQnumber: TIntegerField
      FieldName = 'number'
    end
    object manageOutQdate: TDateField
      FieldName = 'date'
    end
    object manageOutQtime: TTimeField
      FieldName = 'time'
    end
    object manageOutQcode: TStringField
      FieldName = 'code'
      Size = 10
    end
    object manageOutQqueid: TIntegerField
      FieldName = 'queid'
    end
    object manageOutQgroupno: TIntegerField
      FieldName = 'groupno'
    end
    object manageOutQexecutedby: TStringField
      FieldName = 'executedby'
      Size = 35
    end
    object manageOutQDepartment: TStringField
      FieldName = 'Department'
      Size = 10
    end
    object manageOutQuserid: TStringField
      FieldName = 'userid'
      Size = 10
    end
    object manageOutQcounter: TStringField
      FieldName = 'counter'
      Size = 25
    end
    object manageOutQidIn: TIntegerField
      FieldName = 'idIn'
    end
  end
end
