
```
- cntGalleryGrouping_2:
    Control: GroupContainer
    Variant: manualLayoutContainer
    Properties:
      BorderColor: =fxTheme.PrimaryDark
      BorderThickness: =3
      DropShadow: =DropShadow.Semibold
      Height: =276
      RadiusBottomLeft: =8
      RadiusBottomRight: =8
      RadiusTopLeft: =8
      RadiusTopRight: =8
      Width: =1246
      X: =100
      Y: =366
    Children:
    - galListing_2:
        Control: Gallery
        Variant: galleryVertical
        Properties:
          Items: =fxTables.Certificate_Table
          BorderColor: =fxTheme.PrimaryDark
          BorderThickness: =2
          DelayItemLoading: =true
          Fill: =Color.LightGray
          Height: =Parent.Height - Self.Y
          Layout: =Layout.Vertical
          LoadingSpinner: =LoadingSpinner.Data
          TemplateFill: =If(ThisItem.IsSelected, fxTheme.GallerySelectedBG, Color.White)
          TemplatePadding: =2
          TemplateSize: =50
          Width: =Parent.Width - Self.X
          X: =Abs(0)
          Y: =cntGalleryHeader_2.Height + cntGalleryHeader_2.Y
        Children:
        - lblField05_2:
            Control: Label
            Properties:
              OnSelect: =Select(Parent)
              Text: =ThisItem.UserEmail
              BorderColor: =Parent.Fill
              BorderThickness: =If(locShowGridLines, Parent.TemplatePadding, 0)
              Color: =fxTheme.PrimaryDark
              Height: =Parent.TemplateHeight
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Width: =lbl_GalleryListing_Heading05_1.Width
              X: =926
        - lblField04_2:
            Control: Label
            Properties:
              OnSelect: =Select(Parent)
              Text: =ThisItem.
              BorderColor: =Parent.Fill
              BorderThickness: =If(locShowGridLines, Parent.TemplatePadding, 0)
              Color: =fxTheme.PrimaryDark
              Height: =Parent.TemplateHeight
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Width: =lbl_GalleryListing_Heading04_1.Width
              X: =lbl_GalleryListing_Heading04_1.X
        - lblField03_2:
            Control: Label
            Properties:
              OnSelect: =Select(Parent)
              Text: =ThisItem.Status
              BorderColor: =Parent.Fill
              BorderThickness: =If(locShowGridLines, Parent.TemplatePadding, 0)
              Color: =fxTheme.PrimaryDark
              Height: =Parent.TemplateHeight
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Width: =lbl_GalleryListing_Heading03_1.Width
              X: =lbl_GalleryListing_Heading03_1.X
        - lblField02_2:
            Control: Label
            Properties:
              OnSelect: =Select(Parent)
              Text: '=ThisItem.ExpirationDate '
              BorderColor: =Parent.Fill
              BorderThickness: =If(locShowGridLines, Parent.TemplatePadding, 0)
              Color: =fxTheme.PrimaryDark
              Height: =Parent.TemplateHeight
              LineHeight: =1.3
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Width: =lbl_GalleryListing_Heading02_1.Width
              X: =lbl_GalleryListing_Heading02_1.X
        - lblField01_2:
            Control: Label
            Properties:
              OnSelect: =Select(Parent)
              Text: =ThisItem.Title
              BorderColor: =Parent.Fill
              BorderThickness: =If(locShowGridLines, Parent.TemplatePadding, 0)
              Color: =fxTheme.PrimaryDark
              Height: =Parent.TemplateHeight
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Width: =lbl_GalleryListing_Heading01_1.Width
              X: =lbl_GalleryListing_Heading01_1.X
    - cntGalleryHeader_2:
        Control: GroupContainer
        Variant: manualLayoutContainer
        Properties:
          BorderColor: =fxTheme.PrimaryDark
          Fill: =fxTheme.PrimaryDark
          Height: =galListing_2.TemplateHeight
          RadiusBottomLeft: =0
          RadiusBottomRight: =0
          RadiusTopLeft: =0
          RadiusTopRight: =0
          Width: =Parent.Width
        Children:
        - lbl_GalleryListing_Heading01_1:
            Control: Label
            Properties:
              Text: ="When"
              Tooltip: ="When"
              BorderColor: =Color.Transparent
              Color: =If(locHeadingSortText = Self.Tooltip, fxTheme.SecondaryLight, fxTheme.PrimaryDarkFont)
              FontWeight: =FontWeight.Semibold
              Height: =Parent.Height
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Size: =15
              Width: =200
        - lbl_GalleryListing_Heading02_1:
            Control: Label
            Properties:
              Text: ="SCREEN"
              Tooltip: ="ScreenName"
              BorderColor: =Color.Transparent
              Color: =If(locHeadingSortText = Self.Tooltip, fxTheme.SecondaryLight, fxTheme.PrimaryDarkFont)
              FontWeight: =FontWeight.Semibold
              Height: =Parent.Height
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Size: =15
              Width: =300
              X: =lbl_GalleryListing_Heading01_1.X + lbl_GalleryListing_Heading01_1.Width
        - lbl_GalleryListing_Heading03_1:
            Control: Label
            Properties:
              Text: ="APPLICATION"
              Tooltip: ="ApplicationName"
              Color: =If(locHeadingSortText = Self.Tooltip, fxTheme.SecondaryLight, fxTheme.PrimaryDarkFont)
              FontWeight: =FontWeight.Semibold
              Height: =Parent.Height
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Size: =15
              Width: =210
              X: =lbl_GalleryListing_Heading02_1.X + lbl_GalleryListing_Heading02_1.Width
        - lbl_GalleryListing_Heading04_1:
            Control: Label
            Properties:
              Text: ="SOURCE INFO"
              Tooltip: ="Info"
              Color: =If(locHeadingSortText = Self.Tooltip, fxTheme.SecondaryLight, fxTheme.PrimaryDarkFont)
              FontWeight: =FontWeight.Semibold
              Height: =Parent.Height
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Size: =15
              Width: =220
              X: =lbl_GalleryListing_Heading03_1.X + lbl_GalleryListing_Heading03_1.Width
        - lbl_GalleryListing_Heading05_1:
            Control: Label
            Properties:
              Text: ="USER E-MAIL"
              Tooltip: ="UserEmail"
              Color: =If(locHeadingSortText = Self.Tooltip, fxTheme.SecondaryLight, fxTheme.PrimaryDarkFont)
              FontWeight: =FontWeight.Semibold
              Height: =Parent.Height
              PaddingBottom: =0
              PaddingLeft: =15
              PaddingRight: =0
              PaddingTop: =2
              Size: =15
              Width: =Parent.Width - Self.X
              X: =lbl_GalleryListing_Heading04_1.X + lbl_GalleryListing_Heading04_1.Width
        - img_GalleryListing_SortIndicator_1:
            Control: Image
            Properties:
              Image: |-
                =If(
                    locSortDirection = SortOrder.Ascending, 
                    fxGetColoredSVG("Sort Down", "#00ff00"), 
                    fxGetColoredSVG("Sort Up", "#00ff00")
                )
              Fill: =Color.Transparent
              Height: =Parent.Height
              PaddingBottom: =Self.PaddingTop
              PaddingLeft: =Self.PaddingTop
              PaddingRight: =Self.PaddingTop
              PaddingTop: =10
              Width: =Self.Height
              X: '=locArrowX + Self.PaddingLeft '
        - ico_GalleryListing_Heading01_1:
            Control: Classic/Icon
            Variant: 3DPrinting
            Properties:
              OnSelect: |-
                =UpdateContext(
                    {
                        locHeadingSortText: lbl_GalleryListing_Heading01_1.Tooltip, 
                        locArrowX:          Self.X + Self.Width - Parent.Height * 1.2,
                        locSortDirection:   If(
                                                locSortDirection = SortOrder.Ascending, 
                                                SortOrder.Descending, 
                                                SortOrder.Ascending
                                            )
                    }
                );
              Tooltip: '=$"Currently sorting on the ""{lbl_GalleryListing_Heading01_1.Text}"" column {locSortDirection}ly" '
              BorderColor: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = lbl_GalleryListing_Heading01_1.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        10%
                    ),
                    Color.Transparent
                )
              Color: =Color.Transparent
              Fill: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = lbl_GalleryListing_Heading01_1.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        10%
                    ),
                    Color.Transparent
                )
              FocusedBorderThickness: =0
              Height: =lbl_GalleryListing_Heading01_1.Height * 85%
              Icon: =Icon.Printing3D
              Width: |-
                =If(
                    gblShowDebugging,
                    lbl_GalleryListing_Heading01_1.Width / 4,
                    lbl_GalleryListing_Heading01_1.Width - Self.Y * 1.5
                )
              X: |-
                =If(
                    gblShowDebugging,
                    Self.Y,
                    ((lbl_GalleryListing_Heading01_1.Width - Self.Width) / 2) + lbl_GalleryListing_Heading01_1.X
                )
              Y: =((lbl_GalleryListing_Heading01_1.Height - Self.Height) / 2) + lbl_GalleryListing_Heading01_1.Y
        - ico_GalleryListing_Heading02_1:
            Control: Classic/Icon
            Variant: 3DPrinting
            Properties:
              OnSelect: |-
                =UpdateContext(
                    {
                        locHeadingSortText: lbl_GalleryListing_Heading02_1.Tooltip, 
                        locArrowX:          Self.X + Self.Width - Parent.Height * 1.2,
                        locSortDirection:   If(
                                                locSortDirection = SortOrder.Ascending, 
                                                SortOrder.Descending, 
                                                SortOrder.Ascending
                                            )
                    }
                );
              Tooltip: '=$"Currently sorting on {lbl_GalleryListing_Heading02_1.Text} column {locSortDirection}ly" '
              BorderColor: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = Self.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        30%
                    ),
                    Color.Transparent
                )
              Color: =Color.Transparent
              Fill: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = lbl_GalleryListing_Heading02_1.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        15%
                    ),
                    Color.Transparent
                )
              FocusedBorderThickness: =0
              Height: =lbl_GalleryListing_Heading01_1.Height * 85%
              Icon: =Icon.Printing3D
              Width: =If(gblShowDebugging, lbl_GalleryListing_Heading02_1.Width / 4, lbl_GalleryListing_Heading02_1.Width - Self.Y * 2)
              X: |-
                =If(
                    gblShowDebugging,
                    (lbl_GalleryListing_Heading02_1.X - Self.Y),
                    ((lbl_GalleryListing_Heading02_1.Width - Self.Width) / 2) + lbl_GalleryListing_Heading02_1.X
                )
              Y: =((lbl_GalleryListing_Heading01_1.Height - Self.Height) / 2) + lbl_GalleryListing_Heading01_1.Y
        - ico_GalleryListing_Heading03_1:
            Control: Classic/Icon
            Variant: 3DPrinting
            Properties:
              OnSelect: |-
                =UpdateContext(
                    {
                        locHeadingSortText: lbl_GalleryListing_Heading03_1.Tooltip, 
                        locArrowX:          Self.X + Self.Width - Parent.Height * 1.2,
                        locSortDirection:   If(
                                                locSortDirection = SortOrder.Ascending, 
                                                SortOrder.Descending, 
                                                SortOrder.Ascending
                                            )
                    }
                );
              Tooltip: '=$"Currently sorting on {lbl_GalleryListing_Heading02_1.Text} column {locSortDirection}ly" '
              BorderColor: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = Self.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        30%
                    ),
                    Color.Transparent
                )
              Color: =Color.Transparent
              Fill: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = lbl_GalleryListing_Heading03_1.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        15%
                    ),
                    Color.Transparent
                )
              FocusedBorderThickness: =0
              Height: =lbl_GalleryListing_Heading01_1.Height * 85%
              Icon: =Icon.Printing3D
              Width: |-
                =If(
                    gblShowDebugging,
                    lbl_GalleryListing_Heading03_1.Width / 4,
                    lbl_GalleryListing_Heading03_1.Width - Self.Y * 2
                )
              X: |-
                =If(
                    gblShowDebugging,
                    (lbl_GalleryListing_Heading03_1.X - Self.Y),
                    ((lbl_GalleryListing_Heading03_1.Width - Self.Width) / 2) + lbl_GalleryListing_Heading03_1.X
                )
              Y: =((lbl_GalleryListing_Heading01_1.Height - Self.Height) / 2) + lbl_GalleryListing_Heading01_1.Y
        - ico_GalleryListing_Heading04_1:
            Control: Classic/Icon
            Variant: 3DPrinting
            Properties:
              OnSelect: |-
                =UpdateContext(
                    {
                        locHeadingSortText: lbl_GalleryListing_Heading04_1.Tooltip, 
                        locArrowX:          Self.X + Self.Width - Parent.Height * 1.2,
                        locSortDirection:   If(
                                                locSortDirection = SortOrder.Ascending, 
                                                SortOrder.Descending, 
                                                SortOrder.Ascending
                                            )
                    }
                );
              Tooltip: '=$"Currently sorting on {lbl_GalleryListing_Heading02_1.Text} column {locSortDirection}ly" '
              BorderColor: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = Self.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        30%
                    ),
                    Color.Transparent
                )
              Color: =Color.Transparent
              Fill: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = lbl_GalleryListing_Heading04_1.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        15%
                    ),
                    Color.Transparent
                )
              FocusedBorderThickness: =0
              Height: =lbl_GalleryListing_Heading01_1.Height * 85%
              Icon: =Icon.Printing3D
              Width: |-
                =If(
                    gblShowDebugging,
                    lbl_GalleryListing_Heading04_1.Width / 4,
                    lbl_GalleryListing_Heading04_1.Width - Self.Y * 2
                )
              X: |-
                =If(
                    gblShowDebugging,
                    (lbl_GalleryListing_Heading04_1.X - Self.Y),
                    ((lbl_GalleryListing_Heading04_1.Width - Self.Width) / 2) + lbl_GalleryListing_Heading04_1.X
                )
              Y: =((lbl_GalleryListing_Heading01_1.Height - Self.Height) / 2) + lbl_GalleryListing_Heading01_1.Y
        - ico_GalleryListing_Heading05_1:
            Control: Classic/Icon
            Variant: 3DPrinting
            Properties:
              OnSelect: |-
                =UpdateContext(
                    {
                        locHeadingSortText: lbl_GalleryListing_Heading05_1.Tooltip, 
                        locArrowX:          Self.X + Self.Width - Parent.Height * 1.2,
                        locSortDirection:   If(
                                                locSortDirection = SortOrder.Ascending, 
                                                SortOrder.Descending, 
                                                SortOrder.Ascending
                                            )
                    }
                );
              Tooltip: '=$"Currently sorting on {lbl_GalleryListing_Heading02_1.Text} column {locSortDirection}ly" '
              BorderColor: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = Self.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        30%
                    ),
                    Color.Transparent
                )
              Color: =Color.Transparent
              Fill: |-
                =If(
                    gblShowDebugging Or locHeadingSortText = lbl_GalleryListing_Heading05_1.Tooltip,
                    RGBA(
                        255,
                        255,
                        255,
                        15%
                    ),
                    Color.Transparent
                )
              FocusedBorderThickness: =0
              Height: =lbl_GalleryListing_Heading01_1.Height * 85%
              Icon: =Icon.Printing3D
              Width: |-
                =If(
                    gblShowDebugging,
                    lbl_GalleryListing_Heading05_1.Width / 4,
                    lbl_GalleryListing_Heading05_1.Width - Self.Y * 2
                )
              X: |-
                =If(
                    gblShowDebugging,
                    (lbl_GalleryListing_Heading05_1.X - Self.Y),
                    ((lbl_GalleryListing_Heading05_1.Width - Self.Width) / 2) + lbl_GalleryListing_Heading05_1.X
                )
              Y: =((lbl_GalleryListing_Heading01_1.Height - Self.Height) / 2) + lbl_GalleryListing_Heading01_1.Y

```