



```PowerFx
- Home Screen:
    Control: Screen
    Properties:
      OnVisible: |+
        =Set(
            gblShowSpinner,
            true
        );
        UpdateContext({locShowGridLines: true});
        Patch(
            ScreenUse,
            Defaults(ScreenUse),
            {
                ApplicationName: fxAppGlobals.ApplicationName,
                Title: App.ActiveScreen.Name & " - " & Now(),
                ScreenName: App.ActiveScreen.Name,
                AppVersion: fxAppGlobals.AppVersion,
                UserEmail: Lower(User().Email), 
                Info: "Screen.OnVisible",
                SessionString: fxSessionTimeStamp,                      When: Now()
            }
        );
        Select(icoResetFilter);
        Set(
            gblShowSpinner,
            false
        );
      Fill: =fxTheme.BodyBackground
    Children:
    - SPINNER GROUP_6:
        Control: Group
        Children:
        - imgSpinner_6:
            Control: Image
            Properties:
              Image: =fxTheme.Spinner
              BorderColor: =Color.White
              BorderStyle: =BorderStyle.Dashed
              Height: =206
              Visible: =gblShowSpinner
              Width: =206
              X: =Parent.Width / 2 - Self.Width / 2
              Y: =321
        - recSpinner_6:
            Control: Rectangle
            Properties:
              BorderColor: =Self.Fill
              BorderThickness: =2
              Fill: =RGBA(255, 255, 255, 0.85)
              Height: =768
              Visible: =gblShowSpinner
              Width: =1366
    - icoResetFilter_1:
        Control: Classic/Icon
        Variant: 3DPrinting
        Properties:
          OnSelect: |-
            =UpdateContext(
                {
                    locHeadingSortText: lbl_GalleryListing_Heading01_1.Tooltip, 
                    locArrowX:          lbl_GalleryListing_Heading01_1.X + lbl_GalleryListing_Heading01_1.Width - Parent.Height,
                    locSortDirection:   SortOrder.Ascending
                }
            );
          Color: =fxTheme.PrimaryDark
          Height: =32
          Icon: =Icon.Reset
          PaddingBottom: =4
          PaddingLeft: =4
          PaddingRight: =4
          PaddingTop: =4
          Visible: =gblShowDebugging
          Width: =32
          X: =1314
          Y: =114
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
                  Tooltip: ="Title"
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
                  Tooltip: ="ExpirationDate"
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
                  Tooltip: ="Status"
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
    - Image6_1:
        Control: Image
        Properties:
          Image: =fxBadge("App Version", "v" & fxAppGlobals.AppVersion, "Blue")
          Height: =35
          ImagePosition: =ImagePosition.Fill
          RadiusBottomLeft: =6
          RadiusBottomRight: =6
          RadiusTopLeft: =6
          RadiusTopRight: =6
          Width: =280
          X: =1066
          Y: =717
    - SIDE NAV_6:
        Control: Component
        ComponentName: compSideNavMenu
        Properties:
          AutoRefreshColors: =false
          BackgroundColor: =fxTheme.MenuBackcolor
          ForegroundColor: =fxTheme.MenuForecolor
          GroupsUserIsIn: =fxUserRoles
          HighLightBackcolor: =Color.LightYellow
          HoverFill: =RGBA(0, 0, 0, 10%)
          IconsOrImages: =fxMenuSettings.IconsOrImages
          MenuItems: =fxNavMenuItems
          ScreenTransition: |+
            =With(
                {
                    RandomNumber: RandBetween(1, 5)
                }, 
                Switch(
                    RandomNumber, 
                    1, ScreenTransition.Cover,
                    2, ScreenTransition.CoverRight,
                    3, ScreenTransition.Fade,
                    4, ScreenTransition.UnCover,
                    5, ScreenTransition.UnCoverRight,
                    ScreenTransition.None
                )    
            )



          ShowDottedOutline: =fxMenuSettings.ShowDottedOutline
          ShowSideBars: =true
          Fill: ='SIDE NAV_6'.BackgroundColor
          Height: =668
          Width: =If('SIDE NAV_6'.IsExpanded, 450, 80)
          Y: =100
    - SPACER GROUP 99_2:
        Control: Group
        Children:
        - Rectangle5_30:
            Control: Rectangle
            Properties:
              Fill: =fxTheme.SecondaryDark
              Height: =20
              Visible: =gblShowDebugging
              Width: =20
              X: =80
              Y: =160
        - Rectangle5_31:
            Control: Rectangle
            Properties:
              Fill: =fxTheme.SecondaryDark
              Height: =20
              Visible: =gblShowDebugging
              Width: =20
              X: =80
              Y: =748
        - Rectangle5_32:
            Control: Rectangle
            Properties:
              Fill: =fxTheme.SecondaryDark
              Height: =20
              Visible: =gblShowDebugging
              Width: =20
              X: =1346
              Y: =748
        - Rectangle5_33:
            Control: Rectangle
            Properties:
              Fill: =fxTheme.SecondaryDark
              Height: =20
              Visible: =gblShowDebugging
              Width: =20
              X: =1346
              Y: =160
    - HtmlText3:
        Control: HtmlViewer
        Properties:
          HtmlText: |-
            =$"<div style='line-height:1.6;padding-left:10px;padding-right:30px;padding-top:10px;padding-bottom:10px;'>

                Congrats on getting your copy of this <strong>ULTIMATE JumpStart Kit</strong>! This is version 1.5 
                ({fxAppGlobals.AppVersion}) of this template, which contains many improvements over 1.0. 
                To always access the latest version of this template, head over to 
                our <a href='https://www.skool.com/power-apps-community/classroom/b0248ad1?md=c7c490cc888248d194640501fddf814b'
                target='_blank'>Skool community in the Classroom tab</a> and you'll find the releases there!
            </div>"
          Color: =fxTheme.PrimaryDark
          Fill: =RGBA(245, 245, 245, 0)
          Height: =141
          PaddingBottom: =0
          PaddingLeft: =0
          PaddingRight: =0
          PaddingTop: =0
          Size: =15
          Width: =1246
          X: =100
          Y: =180
    - Label1_6:
        Control: Label
        Properties:
          Text: ="Testing..."
          BorderColor: =fxTheme.PrimaryDark
          BorderStyle: =BorderStyle.Dotted
          BorderThickness: =1
          Color: =fxTheme.PrimaryDark
          Fill: =Color.LightYellow
          Visible: =gblShowDebugging
          Width: =100
          X: =fxAppGlobals.DebugButton_X - Self.Width - 10
          Y: =fxAppGlobals.DebugButton_Y + 4
    - icoShowDebug_1:
        Control: Classic/Icon
        Variant: Add
        Properties:
          OnSelect: =Set(gblShowDebugging, !gblShowDebugging);
          Color: =If(gblShowDebugging, fxTheme.PrimaryLight, ColorFade(fxTheme.PrimaryDark, 10%))
          Height: =45
          Icon: =Icon.Printing3D
          Visible: =fxIsTester
          Width: =45
          X: =fxAppGlobals.DebugButton_X
          Y: =fxAppGlobals.DebugButton_Y
    - APP HEADER_12:
        Control: Component
        ComponentName: compAppHeader
        Properties:
          ApplicationName: =fxAppGlobals.ApplicationName
          ColorPrimaryDark: =fxTheme.PrimaryDark
          ColorPrimaryDarkFont: =fxTheme.SecondaryLight
          HeadingFont: =Font.'Dancing Script'
          LogoImage: =fxAppGlobals.ApplicationLogo
          ProfileForeColor: =Color.White
          ProfileLine1: =fxUser.FullName
          ProfileLine2: =fxUser.Email
          ProfilePhoto: =fxUser.Photo
          Fill: ='APP HEADER_12'.ColorPrimaryDark
          Height: =100
          Width: =1366
    - compHome_ScreenHeader:
        Control: Component
        ComponentName: compScreenHeader
        Properties:
          BackgroundColor: =fxTheme.PrimaryLight
          BarText: =App.ActiveScreen.Name
          Forecolor: =fxTheme.PrimaryLightFont
          Icon: |-
            =LookUp(
                fxNavMenuItems, 
                ScreenToGoTo = App.ActiveScreen, 
                MenuIcon
            )
          ImageToDisplay: =SampleImage
          PaddingLeft: =90
          PaddingRight: =100
          ShowImage: =false
          Fill: =compHome_ScreenHeader.BackgroundColor
          Height: =60
          Width: =1366
          Y: =100
    - Rectangle7:
        Control: Rectangle
        Properties:
          Fill: =RGBA(245, 245, 245, 1)
          Height: =126
          Visible: =false
          Width: =1286
          X: =80
          Y: =642
    - Image1:
        Control: Image
        Properties:
          Image: ='SPL-logo.ai - Copy'
          Height: =567
          ImagePosition: =ImagePosition.Fill
          Transparency: =0.9
          Width: =546
          X: =667
          Y: =170

```