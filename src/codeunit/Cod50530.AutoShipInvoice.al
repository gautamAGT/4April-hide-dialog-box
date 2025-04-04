codeunit 50530 "Auto Ship & Invoice"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeConfirmSalesPost', '', false, false)]
    local procedure HandleSalesPostDialog(
        var SalesHeader: Record "Sales Header";
        var HideDialog: Boolean;
        var IsHandled: Boolean;
        var DefaultOption: Integer;
        var PostAndSend: Boolean)
    begin
        if SalesHeader."Document Type" = SalesHeader."Document Type"::Order then begin

            DefaultOption := 3;

            SalesHeader.Ship := true;
            SalesHeader.Invoice := true;

            HideDialog := true;

            IsHandled := false;
        end;
    end;
}
