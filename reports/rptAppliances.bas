Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    TabularFamily =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =10800
    DatasheetFontHeight =11
    ItemSuffix =75
    RecSrcDt = Begin
        0x89d533b4eb7ee640
    End
    RecordSource ="tblAppliance"
    DatasheetFontName ="Aptos"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
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
        Begin Line
            BorderLineStyle =0
            BorderThemeColorIndex =0
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
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Aptos"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            ControlSource ="applID"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =3000
            Name ="GroupHeader0"
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2400
                    Top =555
                    Width =2040
                    Height =315
                    TabIndex =1
                    Name ="applType"
                    ControlSource ="applType"
                    StatusBarText ="Appliance Type"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =2400
                    LayoutCachedTop =555
                    LayoutCachedWidth =4440
                    LayoutCachedHeight =870
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =780
                            Top =555
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label1"
                            Caption ="Appliance Type"
                            GroupTable =2
                            LayoutCachedLeft =780
                            LayoutCachedTop =555
                            LayoutCachedWidth =2340
                            LayoutCachedHeight =870
                            RowStart =1
                            RowEnd =1
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5655
                    Top =555
                    Width =2100
                    Height =315
                    TabIndex =2
                    Name ="make"
                    ControlSource ="make"
                    StatusBarText ="Appliance Brand"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =5655
                    LayoutCachedTop =555
                    LayoutCachedWidth =7755
                    LayoutCachedHeight =870
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =4500
                            Top =555
                            Width =1095
                            Height =315
                            LeftMargin =43
                            Name ="Label2"
                            Caption ="Brand"
                            GroupTable =2
                            LayoutCachedLeft =4500
                            LayoutCachedTop =555
                            LayoutCachedWidth =5595
                            LayoutCachedHeight =870
                            RowStart =1
                            RowEnd =1
                            ColumnStart =2
                            ColumnEnd =2
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2400
                    Top =930
                    Width =2040
                    Height =315
                    TabIndex =3
                    Name ="model"
                    ControlSource ="model"
                    StatusBarText ="Appliance Model"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =2400
                    LayoutCachedTop =930
                    LayoutCachedWidth =4440
                    LayoutCachedHeight =1245
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =780
                            Top =930
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label3"
                            Caption ="Model"
                            GroupTable =2
                            LayoutCachedLeft =780
                            LayoutCachedTop =930
                            LayoutCachedWidth =2340
                            LayoutCachedHeight =1245
                            RowStart =2
                            RowEnd =2
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5655
                    Top =930
                    Width =2100
                    Height =315
                    TabIndex =4
                    Name ="serial"
                    ControlSource ="serial"
                    StatusBarText ="Appliance Serial Number"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =5655
                    LayoutCachedTop =930
                    LayoutCachedWidth =7755
                    LayoutCachedHeight =1245
                    RowStart =2
                    RowEnd =2
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =4500
                            Top =930
                            Width =1095
                            Height =315
                            LeftMargin =43
                            Name ="Label4"
                            Caption ="Serial Number"
                            GroupTable =2
                            LayoutCachedLeft =4500
                            LayoutCachedTop =930
                            LayoutCachedWidth =5595
                            LayoutCachedHeight =1245
                            RowStart =2
                            RowEnd =2
                            ColumnStart =2
                            ColumnEnd =2
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin EmptyCell
                    Left =4500
                    Top =180
                    Width =1095
                    Height =315
                    Name ="EmptyCell31"
                    GroupTable =2
                    LayoutCachedLeft =4500
                    LayoutCachedTop =180
                    LayoutCachedWidth =5595
                    LayoutCachedHeight =495
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =5655
                    Top =180
                    Width =2100
                    Height =315
                    Name ="EmptyCell32"
                    GroupTable =2
                    LayoutCachedLeft =5655
                    LayoutCachedTop =180
                    LayoutCachedWidth =7755
                    LayoutCachedHeight =495
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =7815
                    Top =180
                    Width =2100
                    Height =315
                    Name ="EmptyCell36"
                    GroupTable =2
                    LayoutCachedLeft =7815
                    LayoutCachedTop =180
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =495
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2400
                    Top =1305
                    Width =2040
                    Height =315
                    TabIndex =5
                    Name ="color"
                    ControlSource ="color"
                    StatusBarText ="Appliance Color"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =2400
                    LayoutCachedTop =1305
                    LayoutCachedWidth =4440
                    LayoutCachedHeight =1620
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =780
                            Top =1305
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label37"
                            Caption ="Color"
                            GroupTable =2
                            LayoutCachedLeft =780
                            LayoutCachedTop =1305
                            LayoutCachedWidth =2340
                            LayoutCachedHeight =1620
                            RowStart =3
                            RowEnd =3
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5655
                    Top =1305
                    Width =2100
                    Height =315
                    TabIndex =6
                    Name ="maxWidth"
                    ControlSource ="maxWidth"
                    StatusBarText ="Max Appliance Width"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =5655
                    LayoutCachedTop =1305
                    LayoutCachedWidth =7755
                    LayoutCachedHeight =1620
                    RowStart =3
                    RowEnd =3
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =4500
                            Top =1305
                            Width =1095
                            Height =315
                            LeftMargin =43
                            Name ="Label50"
                            Caption ="Max Width"
                            GroupTable =2
                            LayoutCachedLeft =4500
                            LayoutCachedTop =1305
                            LayoutCachedWidth =5595
                            LayoutCachedHeight =1620
                            RowStart =3
                            RowEnd =3
                            ColumnStart =2
                            ColumnEnd =2
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2400
                    Top =1680
                    Width =2040
                    Height =315
                    TabIndex =7
                    Name ="maxHeight"
                    ControlSource ="maxHeight"
                    StatusBarText ="Max Appliance Height"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =2400
                    LayoutCachedTop =1680
                    LayoutCachedWidth =4440
                    LayoutCachedHeight =1995
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =780
                            Top =1680
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label55"
                            Caption ="Max Height"
                            GroupTable =2
                            LayoutCachedLeft =780
                            LayoutCachedTop =1680
                            LayoutCachedWidth =2340
                            LayoutCachedHeight =1995
                            RowStart =4
                            RowEnd =4
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5655
                    Top =1680
                    Width =2100
                    Height =315
                    TabIndex =8
                    Name ="maxDepth"
                    ControlSource ="maxDepth"
                    StatusBarText ="Max Appliance Depth"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =5655
                    LayoutCachedTop =1680
                    LayoutCachedWidth =7755
                    LayoutCachedHeight =1995
                    RowStart =4
                    RowEnd =4
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =4500
                            Top =1680
                            Width =1095
                            Height =315
                            LeftMargin =43
                            Name ="Label60"
                            Caption ="Max Depth"
                            GroupTable =2
                            LayoutCachedLeft =4500
                            LayoutCachedTop =1680
                            LayoutCachedWidth =5595
                            LayoutCachedHeight =1995
                            RowStart =4
                            RowEnd =4
                            ColumnStart =2
                            ColumnEnd =2
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    EnterKeyBehavior = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2400
                    Top =2055
                    Width =7515
                    Height =855
                    TabIndex =9
                    Name ="otherInfo"
                    ControlSource ="otherInfo"
                    StatusBarText ="Voltage/Door Handing/Sleeve Required"
                    GroupTable =2
                    ShowDatePicker =1

                    LayoutCachedLeft =2400
                    LayoutCachedTop =2055
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =2910
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =780
                            Top =2055
                            Width =1560
                            Height =855
                            LeftMargin =43
                            Name ="Label65"
                            Caption ="Other Information"
                            GroupTable =2
                            LayoutCachedLeft =780
                            LayoutCachedTop =2055
                            LayoutCachedWidth =2340
                            LayoutCachedHeight =2910
                            RowStart =5
                            RowEnd =5
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2400
                    Top =180
                    Width =2040
                    Height =315
                    Name ="billTo"
                    ControlSource ="billTo"
                    StatusBarText ="Tenant/Owner Charge"
                    GroupTable =2

                    LayoutCachedLeft =2400
                    LayoutCachedTop =180
                    LayoutCachedWidth =4440
                    LayoutCachedHeight =495
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeThemeColorIndex =2
                    ForeTint =100.0
                    ForeShade =50.0
                    GroupTable =2
                    Begin
                        Begin Label
                            TextAlign =1
                            TextFontFamily =34
                            Left =780
                            Top =180
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label0"
                            Caption ="Charge To"
                            GroupTable =2
                            LayoutCachedLeft =780
                            LayoutCachedTop =180
                            LayoutCachedWidth =2340
                            LayoutCachedHeight =495
                            LayoutGroup =1
                            GroupTable =2
                        End
                    End
                End
                Begin EmptyCell
                    Left =7815
                    Top =930
                    Width =2100
                    Height =315
                    Name ="EmptyCell53"
                    GroupTable =2
                    LayoutCachedLeft =7815
                    LayoutCachedTop =930
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =1245
                    RowStart =2
                    RowEnd =2
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =7815
                    Top =555
                    Width =2100
                    Height =315
                    Name ="EmptyCell55"
                    GroupTable =2
                    LayoutCachedLeft =7815
                    LayoutCachedTop =555
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =870
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =7815
                    Top =1680
                    Width =2100
                    Height =315
                    Name ="EmptyCell65"
                    GroupTable =2
                    LayoutCachedLeft =7815
                    LayoutCachedTop =1680
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =1995
                    RowStart =4
                    RowEnd =4
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =7815
                    Top =1305
                    Width =2100
                    Height =315
                    Name ="EmptyCell67"
                    GroupTable =2
                    LayoutCachedLeft =7815
                    LayoutCachedTop =1305
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =1620
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin Line
                    Top =60
                    Width =10800
                    Name ="Line74"
                    LayoutCachedTop =60
                    LayoutCachedWidth =10800
                    LayoutCachedHeight =60
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Name ="Detail"
            BackThemeColorIndex =1
            Begin
                Begin Subform
                    OldBorderStyle =0
                    Left =1080
                    Top =120
                    Width =9353
                    Height =1259
                    Name ="rptApplParts"
                    SourceObject ="Report.rptApplParts"
                    LinkChildFields ="applID"
                    LinkMasterFields ="applID"
                    GroupTable =3
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    BottomPadding =0

                    LayoutCachedLeft =1080
                    LayoutCachedTop =120
                    LayoutCachedWidth =10433
                    LayoutCachedHeight =1379
                    LayoutGroup =2
                    GroupTable =3
                End
            End
        End
    End
End
