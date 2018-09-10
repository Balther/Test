pageextension 123456701 "CSD ResourceListExt" extends "Resource List"

// CSD1.00 - 2018-01-01 - D. E. Veloper

{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
   
    trigger OnOpenPage();
    begin
        Filtergroup(3);
        ShowType := (Getfilter(Type)='');
        ShowMaxField := (GetFilter(Type) = Format(Type::Machine));
        FilterGroup(0);
    end;

    var
       [InDataSet]
       ShowType:Boolean;
       ShowMaxField:Boolean;
}