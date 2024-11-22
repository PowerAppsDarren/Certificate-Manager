- txtTitle:
    Control: TextInput
    Properties:
      AccessibleLabel: ="Certificate Name is Required"
      Appearance: ='TextInputCanvas.Appearance'.Outline
      BasePaletteColor: =fxTheme.SecondaryDark
      BorderStyle: =BorderStyle.Solid
      BorderThickness: =If(locShowValidation, 2, 1)
      FontColor: =fxTheme.SecondaryDark
      Value: =If(locNewRecord, "", locRecord.Title)
      Width: =400
      X: =20
      Y: =50

- txtServerName:
    Control: TextInput
    Properties:
      Appearance: ='TextInputCanvas.Appearance'.Outline
      BasePaletteColor: =fxTheme.SecondaryDark
      FontColor: =fxTheme.SecondaryDark
      Value: |+
        =If(locNewRecord, "", locRecord.ServerName)
      Width: =400
      X: =20
      Y: =120




      BorderColor: |-
        =If(
            fxRequiredIsSatisfied(
                txtTitle.Value,
                3
            ),
            Color.Transparent,
            fxContstants.ValidationRed
        )