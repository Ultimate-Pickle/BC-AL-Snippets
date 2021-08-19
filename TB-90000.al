table 90000 SnippetTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField1; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; MyField2; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; MyField3; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(4; MyField4; Option)
        {
            OptionMembers = " ","1","2","3";
            DataClassification = ToBeClassified;

        }
        field(5; MyField5; Text[80])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6; MyField6; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            MinValue = 1.00;
            MaxValue = 100.00;
            DecimalPlaces = 2;
        }
    }

    keys
    {
        key(Key1; MyField1)
        {
            Clustered = true;
        }
        key(Key2; MyField2, MyField3)
        {

        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}