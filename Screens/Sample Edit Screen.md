

```YAML
'Header Container' As group:
    HeaderLabel As label:
        Text: ="Edit Customer Record"
        X: =20
        Y: =20
        Size: =24
        FontWeight: =FontWeight.Bold
    CustomerIDLabel As label:
        Text: ="ID: " & ThisItem.CustomerID
        X: =600
        Y: =20
        Color: =RGBA(100, 100, 100, 1)
'Form Container' As group:
    CustomerEditForm As form:
        DataSource: Customers
        X: =20
        Y: =80
        Width: =Parent.Width - 40
        Height: =Parent.Height - 140        
        FirstNameInput As textInput:
            Default: =ThisItem.FirstName
            Label: ="First Name"
            X: =20
            Y: =20
            Width: =(Parent.Width/2) - 30
            Required: =true            
        LastNameInput As textInput:
            Default: =ThisItem.LastName
            Label: ="Last Name"
            X: =(Parent.Width/2) + 10
            Y: =20
            Width: =(Parent.Width/2) - 30
            Required: =true            
        EmailInput As textInput:
            Default: =ThisItem.Email
            Label: ="Email Address"
            X: =20
            Y: =120
            Width: =Parent.Width - 40
            Required: =true            
        PhoneInput As textInput:
            Default: =ThisItem.Phone
            Label: ="Phone Number"
            X: =20
            Y: =220
            Width: =Parent.Width - 40            
        CompanyInput As textInput:
            Default: =ThisItem.Company
            Label: ="Company"
            X: =20
            Y: =320
            Width: =Parent.Width - 40            
        StatusDropdown As dropdown:
            Default: =ThisItem.Status
            Label: ="Status"
            X: =20
            Y: =420
            Width: =Parent.Width - 40
            Items: =["Active", "Inactive", "Pending"]            
        NotesInput As textArea:
            Default: =ThisItem.Notes
            Label: ="Notes"
            X: =20
            Y: =520
            Width: =Parent.Width - 40
            Height: =150
            Mode: =TextMode.MultiLine
'Button Container' As group:
    CancelButton As button:
        Text: ="Cancel"
        X: =Parent.Width - 200
        Y: =Parent.Height - 60
        Width: =80
        Fill: =RGBA(241, 241, 241, 1)
        Color: =RGBA(51, 51, 51, 1)
        OnSelect: =Back()
    SaveButton As button:
        Text: ="Save"
        X: =Parent.Width - 100
        Y: =Parent.Height - 60
        Width: =80
        Fill: =RGBA(0, 120, 212, 1)
        Color: =RGBA(255, 255, 255, 1)
        OnSelect: |-
            SubmitForm(CustomerEditForm);
            If(
                !IsEmpty(CustomerEditForm.Error),
                Notify(
                    "Error saving customer record: " & CustomerEditForm.Error,
                    NotificationType.Error
                ),
                Navigate(
                    Screen_CustomerList,
                    ScreenTransition.None
                )
            )
    ErrorMessage As label:
        Visible: =!IsEmpty(CustomerEditForm.Error)
        Text: =CustomerEditForm.Error
        Color: =RGBA(209, 0, 0, 1)
        X: =20
        Y: =80
        Width: =Parent.Width - 40
```