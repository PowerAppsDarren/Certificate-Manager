- Label14_1:
    Control: Label
    Properties:
      Text: ="adsfasdfs"
      Fill: =RGBA(255, 184, 174, 1)
      PaddingBottom: =10
      PaddingLeft: =10
      PaddingRight: =10
      PaddingTop: =10
- Label14:
    Control: Label
    Properties:
      Text: ="adsfasdfs"
      Fill: =RGBA(255, 184, 174, 1)
      PaddingBottom: =10
      PaddingLeft: =10
      PaddingRight: =10
      PaddingTop: =10
      Width: =Parent.Width - 40
      X: =24
      Y: =72
- lblHeaderLabel:
    Control: Label
    Properties:
        Text: ="Edit Customer Record"
        X: =20
        Y: =20
        Width: =Parent.Width - 40
        Height: =40
        Size: =24
        FontWeight: =FontWeight.Bold
- lblCustomerIdLabel:
    Control: Label
    Properties: 
        Text: ="Edit Customer Record"
        X: =Parent.Width - 150
        Y: =20
        Height: =40
        Color: =RGBA(100, 100, 100, 1)

EditForm As Form:
    DataSource: =Customers
    X: =20
    Y: =80
    Width: =Parent.Width - 40
    Height: =Parent.Height - 160
    
    FirstNameCard As Card:
        X: =0
        Y: =0
        Width: =(Parent.Width / 2) - 10
        DataField: ="FirstName"
        Default: =ThisItem.FirstName

    LastNameCard As Card:
        X: =(Parent.Width / 2) + 10
        Y: =0
        Width: =(Parent.Width / 2) - 10
        DataField: ="LastName"
        Default: =ThisItem.LastName

    EmailCard As Card:
        X: =0
        Y: =100
        Width: =Parent.Width
        DataField: ="Email"
        Default: =ThisItem.Email

    PhoneCard As Card:
        X: =0
        Y: =200
        Width: =Parent.Width
        DataField: ="Phone"
        Default: =ThisItem.Phone

    CompanyCard As Card:
        X: =0
        Y: =300
        Width: =Parent.Width
        DataField: ="Company"
        Default: =ThisItem.Company

    StatusCard As Card:
        X: =0
        Y: =400
        Width: =Parent.Width
        DataField: ="Status"
        Default: =ThisItem.Status
        
    NotesCard As Card:
        X: =0
        Y: =500
        Width: =Parent.Width
        Height: =150
        DataField: ="Notes"
        Default: =ThisItem.Notes

ErrorMessage As Label:
    Visible: =!IsBlank(EditForm.Error)
    Text: =EditForm.Error
    Color: =RGBA(209, 0, 0, 1)
    X: =20
    Y: =Parent.Height - 140
    Width: =Parent.Width - 40

ButtonContainer As group:
    CancelButton As Button:
        Text: ="Cancel"
        X: =Parent.Width - 200
        Y: =Parent.Height - 60
        Width: =80
        Height: =40
        Fill: =RGBA(241, 241, 241, 1)
        Color: =RGBA(51, 51, 51, 1)
        OnSelect: |
            =Back()

    SaveButton As Button:
        Text: ="Save"
        X: =Parent.Width - 100
        Y: =Parent.Height - 60
        Width: =80
        Height: =40
        Fill: =RGBA(0, 120, 212, 1)
        Color: =RGBA(255, 255, 255, 1)
        OnSelect: |
            =SubmitForm(EditForm);
            If(
                !IsBlank(EditForm.Error),
                Notify(
                    "Error saving customer record: " & EditForm.Error,
                    NotificationType.Error
                ),
                Navigate(
                    CustomerListScreen,
                    ScreenTransition.None
                )
            )
```