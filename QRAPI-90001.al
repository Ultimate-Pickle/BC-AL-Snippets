query 90001 SnippetQueryAPI
{
    QueryType = API;
    APIPublisher = 'PublisherName';
    APIGroup = 'GroupName';
    APIVersion = 'v1.0';
    EntityName = 'EntityName';
    EntitySetName = 'EntitySetName';

    elements
    {
        dataitem(DataItemName; Customer)
        {
            column(CustomerNo; "No.")
            {

            }
            filter(LocationFilter; "Location Code")
            {

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}