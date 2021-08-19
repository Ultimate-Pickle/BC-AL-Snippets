tableextension 50100 CustTExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50101; "Customer Ext"; Text[20])
        {

            DataClassification = ToBeClassified;
            FieldClass = Normal;
            Enabled = true;
            Editable = true;

        }
    }

    var
        myInt: Integer;
}