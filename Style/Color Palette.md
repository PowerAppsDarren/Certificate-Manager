
```
Set(
    gblTempTheme,
    {                                                               // Blue Theme 🎨 <<==
        Key: "BLUE-THEME",
        Name: "Blue Theme",
        MenuBackcolor: ColorValue("#FFFFFF"),
        MenuForecolor: ColorValue("#004A87"),

        PrimaryDark: ColorValue("#004A87"),
        PrimaryDarkFont: ColorValue("#EAEEF2"),

        PrimaryLight: ColorValue("#f5f5f5"),
        PrimaryLightFont: ColorValue("#004A87"),

        SecondaryDark: ColorValue("#103959"),
        SecondaryDarkFont: ColorValue("#EAEEF2"),

        SecondaryLight: ColorValue("#CEDF00"),
        SecondaryLightFont: ColorValue("#004A87"),

        BodyBackground: ColorValue("#EAEEF2"),
        BodyBackgroundFont: ColorValue("#004A87"),
        
        GallerySelectedBG: ColorFade(
            ColorValue("#D2D7E1"),
            40%
        ),
        ControlHoverColor: ColorFade(ColorValue("#D2D7E1"), 70%),
        Spinner: 'Graphics-Spinner-Blue'
    }
);
UpdateContext({locResetMenu: !locResetMenu});
```