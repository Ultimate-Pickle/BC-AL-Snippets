pageextension 90000 CustPExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Customer Ext"; rec."Customer Ext")
            {
                caption = 'Customer Extension Code';
                Visible = true;
                Enabled = true;
                Editable = true;

                trigger onvalidate();
                begin
                    if rec."Customer Ext" = 'TEST' then
                        message('This is a Test!');
                end;
            }
        }


    }

    actions
    {
        // Add changes to page actions here

    }

    var
        myInt: Integer;
}