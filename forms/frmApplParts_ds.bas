Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    DefaultView =2
    ViewsAllowed =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =3480
    DatasheetFontHeight =11
    ItemSuffix =2
    Right =19440
    Bottom =11865
    RecSrcDt = Begin
        0xf065b5eb727de640
    End
    RecordSource ="tblApplPart"
    DatasheetFontName ="Aptos"
    AllowFormView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =0
            FontSize =11
            FontName ="Aptos"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =60.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Aptos"
            AsianLineBreak =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =900
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1920
                    Top =120
                    Height =300
                    ColumnWidth =8910
                    Name ="applPart"
                    ControlSource ="applPart"
                    StatusBarText ="Appliance Part Number/Description"

                    LayoutCachedLeft =1920
                    LayoutCachedTop =120
                    LayoutCachedWidth =3360
                    LayoutCachedHeight =420
                    DatasheetCaption ="P/N or Description"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =120
                            Top =120
                            Width =885
                            Height =300
                            Name ="Label0"
                            Caption ="applPart"
                            LayoutCachedLeft =120
                            LayoutCachedTop =120
                            LayoutCachedWidth =1005
                            LayoutCachedHeight =420
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1920
                    Top =480
                    Height =300
                    TabIndex =1
                    Name ="qty"
                    ControlSource ="qty"
                    StatusBarText ="Quantity Required"

                    LayoutCachedLeft =1920
                    LayoutCachedTop =480
                    LayoutCachedWidth =3360
                    LayoutCachedHeight =780
                    DatasheetCaption ="Qty"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =120
                            Top =480
                            Width =360
                            Height =300
                            Name ="Label1"
                            Caption ="qty"
                            LayoutCachedLeft =120
                            LayoutCachedTop =480
                            LayoutCachedWidth =480
                            LayoutCachedHeight =780
                        End
                    End
                End
            End
        End
    End
End
