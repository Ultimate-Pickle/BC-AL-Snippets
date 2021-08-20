page 90000 SnippetPage
{
    Caption = 'Snippet Page';
    PageType = Card;//PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sales Header";
    SourceTableView = where("Document Type" = const(Invoice));
    Editable = true;
    InsertAllowed = false;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'Invoice No.';
                }
                part(Lines; "Sales Invoice Subform")
                {
                    SubPageLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}