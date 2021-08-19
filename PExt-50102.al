pageextension 50102 CustPExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Customer Ext"; "Customer Ext")
            {
                caption = 'Customer Extension Code';
                Visible = true;
                Enabled = true;
                Editable = true;

                trigger onvalidate();
                begin
                    if "Customer Ext" = 'TEST' then
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