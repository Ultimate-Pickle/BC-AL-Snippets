query 90000 SnippetQuery
{
    QueryType = Normal;

    elements
    {
        dataitem(DataItemName; Customer)
        {
            column(CustomerNo; "No.")
            {
                Caption = 'Customer No.';
            }
            filter(LocationFilter; "Location Code")
            {
                Caption = 'Location Filter';
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}