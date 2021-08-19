xmlport 90000 SnippetXMLPort
{
    schema
    {
        textelement(NodeName1)
        {
            tableelement(NodeName2; Customer)
            {
                fieldattribute(NodeName3; NodeName2."No.")
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(Name; myInt)
                    {

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

                }
            }
        }
    }

    var
        myInt: Integer;
}