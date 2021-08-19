tableextension 90000 CustTExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(90000; "Customer Ext"; Text[20])
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