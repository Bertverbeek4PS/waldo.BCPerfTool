table 62102 "PerfTool Log Entry WPT"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; Identifier; Guid)
        {
            Caption = 'Identifier';
            DataClassification = CustomerContent;
        }

        field(10; "Message"; Text[2048])
        {
            Caption = 'Message';
            DataClassification = CustomerContent;
        }

        field(20; StartTime; DateTime)
        {
            Caption = 'StartTime';
            DataClassification = CustomerContent;
        }
        field(21; StopTime; DateTime)
        {
            Caption = 'StopTime';
            DataClassification = CustomerContent;
        }
        field(22; TestDuration; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        Field(30; SqlRowsRead; Integer)
        {
            Caption = 'SQL Rows Read';
            DataClassification = CustomerContent;
        }
        Field(31; SqlStatementsExecuted; Integer)
        {
            Caption = 'Sql Statements Executed';
            DataClassification = CustomerContent;
        }
        Field(40; AppInsightsEventId; Text[50])
        {
            Caption = 'App Insights Event Id';
            DataClassification = CustomerContent;
        }

    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
        key(Identifier; Identifier) { }
        key(Time; StartTime) { }
    }

    procedure LogToAppInsights()
    var
        PerfToolLogAppInsMethWPT: Codeunit "PerfTool LogAppIns Meth WPT";
    begin
        PerfToolLogAppInsMethWPT.LogAppInsights(Rec);
    end;
}