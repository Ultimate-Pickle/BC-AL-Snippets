report 90000 SnippetReport
{
    UsageCategory = Administration;
    ApplicationArea = All;

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            column(ColumnName; "No.")
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field("Boolean On Request Page"; GbooTestBoolean)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        myInt: Integer;
                    begin

                    end;
                }
            }
        }
    }

    var
        GbooTestBoolean: Boolean;
}