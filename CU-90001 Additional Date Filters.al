codeunit 90001 "Additional Date Filters"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Filter Tokens", 'OnResolveDateFilterToken', '', true, true)]
    procedure MyFilters(DateToken: Text; var FromDate: Date; var ToDate: Date; var Handled: Boolean)
    begin
        //Filter code for additional automatic date filters
        case DateToken.ToLower() of

            'party':
                begin
                    FromDate := today + 10;
                    ToDate := Today + 12;
                    Handled := true;
                end;
            'christmas':
                begin
                    FromDate := CalcDate('<CY - 7>', Today);
                    ToDate := CalcDate('<CY-6>', Today);
                    Handled := true;
                end;
        end;
    end;

    var
        myInt: Integer;
}