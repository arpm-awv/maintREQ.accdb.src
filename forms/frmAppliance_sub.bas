Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    DefaultView =0
    ViewsAllowed =1
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =14580
    DatasheetFontHeight =11
    ItemSuffix =93
    Right =19440
    Bottom =11865
    RecSrcDt = Begin
        0xb5c7954e707de640
    End
    RecordSource ="tblAppliance"
    DatasheetFontName ="Aptos"
    AllowDatasheetView =0
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
        Begin CommandButton
            TextFontFamily =0
            FontSize =11
            FontWeight =400
            FontName ="Aptos"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
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
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =780
            BackColor =14013909
            Name ="FormHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =93
                    TextFontFamily =34
                    Left =144
                    Top =84
                    Width =10590
                    Height =630
                    FontSize =26
                    ControlGroup =1
                    LeftMargin =72
                    Name ="lblGrey"
                    Caption ="Appliances"
                    FontName ="Arial Rounded MT Bold"
                    LayoutCachedLeft =144
                    LayoutCachedTop =84
                    LayoutCachedWidth =10734
                    LayoutCachedHeight =714
                    ThemeFontIndex =-1
                End
                Begin Label
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =120
                    Top =60
                    Width =10590
                    Height =630
                    FontSize =26
                    ControlGroup =1
                    LeftMargin =72
                    ForeColor =683236
                    Name ="lblOrange"
                    Caption ="Appliances"
                    FontName ="Arial Rounded MT Bold"
                    LayoutCachedLeft =120
                    LayoutCachedTop =60
                    LayoutCachedWidth =10710
                    LayoutCachedHeight =690
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =83
                    PictureType =2
                    Left =13560
                    Top =120
                    Width =576
                    Height =576
                    FontSize =12
                    Name ="btnSave"
                    Caption ="&Save"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Save Record"
                    Picture ="save-xsm"
                    UnicodeAccessKey =83
                    LeftPadding =105
                    TopPadding =60
                    RightPadding =120
                    BottomPadding =165
                    HorizontalAnchor =1

                    LayoutCachedLeft =13560
                    LayoutCachedTop =120
                    LayoutCachedWidth =14136
                    LayoutCachedHeight =696
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    Bevel =1
                    Gradient =0
                    BackColor =7960953
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderThemeColorIndex =9
                    BorderTint =100.0
                    HoverColor =2689663
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedColor =4408131
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                    HoverForeThemeColorIndex =1
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =1
                    PressedForeTint =100.0
                    Shadow =-1
                    QuickStyle =42
                    QuickStyleMask =-52
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =4320
            BackColor =14013909
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1950
                    Top =120
                    Width =2040
                    Height =315
                    Name ="billTo"
                    ControlSource ="billTo"
                    RowSourceType ="Value List"
                    RowSource ="\"Tenant\";\"Owner\""
                    StatusBarText ="Tenant/Owner Charge"
                    GroupTable =1
                    AllowValueListEdits =0

                    LayoutCachedLeft =1950
                    LayoutCachedTop =120
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =435
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =330
                            Top =120
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label0"
                            Caption ="Charge To"
                            GroupTable =1
                            LayoutCachedLeft =330
                            LayoutCachedTop =120
                            LayoutCachedWidth =1890
                            LayoutCachedHeight =435
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1950
                    Top =495
                    Width =2040
                    Height =315
                    TabIndex =1
                    Name ="applType"
                    ControlSource ="applType"
                    StatusBarText ="Appliance Type"
                    GroupTable =1

                    LayoutCachedLeft =1950
                    LayoutCachedTop =495
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =810
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =330
                            Top =495
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label1"
                            Caption ="Appliance Type"
                            GroupTable =1
                            LayoutCachedLeft =330
                            LayoutCachedTop =495
                            LayoutCachedWidth =1890
                            LayoutCachedHeight =810
                            RowStart =1
                            RowEnd =1
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5205
                    Top =495
                    Width =2100
                    Height =315
                    TabIndex =2
                    Name ="make"
                    ControlSource ="make"
                    StatusBarText ="Appliance Brand"
                    GroupTable =1

                    LayoutCachedLeft =5205
                    LayoutCachedTop =495
                    LayoutCachedWidth =7305
                    LayoutCachedHeight =810
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =4050
                            Top =495
                            Width =1095
                            Height =315
                            LeftMargin =43
                            Name ="Label2"
                            Caption ="Brand"
                            GroupTable =1
                            LayoutCachedLeft =4050
                            LayoutCachedTop =495
                            LayoutCachedWidth =5145
                            LayoutCachedHeight =810
                            RowStart =1
                            RowEnd =1
                            ColumnStart =3
                            ColumnEnd =3
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8565
                    Top =495
                    Width =1980
                    Height =315
                    TabIndex =3
                    Name ="model"
                    ControlSource ="model"
                    StatusBarText ="Appliance Model"
                    GroupTable =1

                    LayoutCachedLeft =8565
                    LayoutCachedTop =495
                    LayoutCachedWidth =10545
                    LayoutCachedHeight =810
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =7365
                            Top =495
                            Width =1140
                            Height =315
                            LeftMargin =43
                            Name ="Label3"
                            Caption ="Model"
                            GroupTable =1
                            LayoutCachedLeft =7365
                            LayoutCachedTop =495
                            LayoutCachedWidth =8505
                            LayoutCachedHeight =810
                            RowStart =1
                            RowEnd =1
                            ColumnStart =5
                            ColumnEnd =5
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =12135
                    Top =495
                    Width =2100
                    Height =315
                    TabIndex =4
                    Name ="serial"
                    ControlSource ="serial"
                    StatusBarText ="Appliance Serial Number"
                    GroupTable =1

                    LayoutCachedLeft =12135
                    LayoutCachedTop =495
                    LayoutCachedWidth =14235
                    LayoutCachedHeight =810
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =10605
                            Top =495
                            Width =1470
                            Height =315
                            LeftMargin =43
                            Name ="Label4"
                            Caption ="Serial Number"
                            GroupTable =1
                            LayoutCachedLeft =10605
                            LayoutCachedTop =495
                            LayoutCachedWidth =12075
                            LayoutCachedHeight =810
                            RowStart =1
                            RowEnd =1
                            ColumnStart =7
                            ColumnEnd =7
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =4050
                    Top =120
                    Width =1095
                    Height =315
                    Name ="EmptyCell31"
                    GroupTable =1
                    LayoutCachedLeft =4050
                    LayoutCachedTop =120
                    LayoutCachedWidth =5145
                    LayoutCachedHeight =435
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =3
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =5205
                    Top =120
                    Width =2100
                    Height =315
                    Name ="EmptyCell32"
                    GroupTable =1
                    LayoutCachedLeft =5205
                    LayoutCachedTop =120
                    LayoutCachedWidth =7305
                    LayoutCachedHeight =435
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =3
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =7365
                    Top =120
                    Width =1140
                    Height =315
                    Name ="EmptyCell33"
                    GroupTable =1
                    LayoutCachedLeft =7365
                    LayoutCachedTop =120
                    LayoutCachedWidth =8505
                    LayoutCachedHeight =435
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =3
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =8565
                    Top =120
                    Width =1980
                    Height =315
                    Name ="EmptyCell34"
                    GroupTable =1
                    LayoutCachedLeft =8565
                    LayoutCachedTop =120
                    LayoutCachedWidth =10545
                    LayoutCachedHeight =435
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =3
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10605
                    Top =120
                    Width =1470
                    Height =315
                    Name ="EmptyCell35"
                    GroupTable =1
                    LayoutCachedLeft =10605
                    LayoutCachedTop =120
                    LayoutCachedWidth =12075
                    LayoutCachedHeight =435
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =3
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12135
                    Top =120
                    Width =2100
                    Height =315
                    Name ="EmptyCell36"
                    GroupTable =1
                    LayoutCachedLeft =12135
                    LayoutCachedTop =120
                    LayoutCachedWidth =14235
                    LayoutCachedHeight =435
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =3
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1950
                    Top =870
                    Width =2040
                    Height =315
                    TabIndex =5
                    Name ="color"
                    ControlSource ="color"
                    StatusBarText ="Appliance Color"
                    GroupTable =1

                    LayoutCachedLeft =1950
                    LayoutCachedTop =870
                    LayoutCachedWidth =3990
                    LayoutCachedHeight =1185
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =330
                            Top =870
                            Width =1560
                            Height =315
                            LeftMargin =43
                            Name ="Label37"
                            Caption ="Color"
                            GroupTable =1
                            LayoutCachedLeft =330
                            LayoutCachedTop =870
                            LayoutCachedWidth =1890
                            LayoutCachedHeight =1185
                            RowStart =2
                            RowEnd =2
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5205
                    Top =870
                    Width =2100
                    Height =315
                    TabIndex =6
                    Name ="maxWidth"
                    ControlSource ="maxWidth"
                    StatusBarText ="Max Appliance Width"
                    GroupTable =1

                    LayoutCachedLeft =5205
                    LayoutCachedTop =870
                    LayoutCachedWidth =7305
                    LayoutCachedHeight =1185
                    RowStart =2
                    RowEnd =2
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =4050
                            Top =870
                            Width =1095
                            Height =315
                            LeftMargin =43
                            Name ="Label50"
                            Caption ="Max Width"
                            GroupTable =1
                            LayoutCachedLeft =4050
                            LayoutCachedTop =870
                            LayoutCachedWidth =5145
                            LayoutCachedHeight =1185
                            RowStart =2
                            RowEnd =2
                            ColumnStart =3
                            ColumnEnd =3
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8565
                    Top =870
                    Width =1980
                    Height =315
                    TabIndex =7
                    Name ="maxHeight"
                    ControlSource ="maxHeight"
                    StatusBarText ="Max Appliance Height"
                    GroupTable =1

                    LayoutCachedLeft =8565
                    LayoutCachedTop =870
                    LayoutCachedWidth =10545
                    LayoutCachedHeight =1185
                    RowStart =2
                    RowEnd =2
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =7365
                            Top =870
                            Width =1140
                            Height =315
                            LeftMargin =43
                            Name ="Label55"
                            Caption ="Max Height"
                            GroupTable =1
                            LayoutCachedLeft =7365
                            LayoutCachedTop =870
                            LayoutCachedWidth =8505
                            LayoutCachedHeight =1185
                            RowStart =2
                            RowEnd =2
                            ColumnStart =5
                            ColumnEnd =5
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =12135
                    Top =870
                    Width =2100
                    Height =315
                    TabIndex =8
                    Name ="maxDepth"
                    ControlSource ="maxDepth"
                    StatusBarText ="Max Appliance Depth"
                    GroupTable =1

                    LayoutCachedLeft =12135
                    LayoutCachedTop =870
                    LayoutCachedWidth =14235
                    LayoutCachedHeight =1185
                    RowStart =2
                    RowEnd =2
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =10605
                            Top =870
                            Width =1470
                            Height =315
                            LeftMargin =43
                            Name ="Label60"
                            Caption ="Max Depth"
                            GroupTable =1
                            LayoutCachedLeft =10605
                            LayoutCachedTop =870
                            LayoutCachedWidth =12075
                            LayoutCachedHeight =1185
                            RowStart =2
                            RowEnd =2
                            ColumnStart =7
                            ColumnEnd =7
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1950
                    Top =1245
                    Width =12285
                    Height =855
                    TabIndex =9
                    Name ="otherInfo"
                    ControlSource ="otherInfo"
                    StatusBarText ="Voltage/Door Handing/Sleeve Required"
                    GroupTable =1

                    LayoutCachedLeft =1950
                    LayoutCachedTop =1245
                    LayoutCachedWidth =14235
                    LayoutCachedHeight =2100
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =8
                    LayoutGroup =3
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =330
                            Top =1245
                            Width =1560
                            Height =855
                            LeftMargin =43
                            Name ="Label65"
                            Caption ="Other Information"
                            GroupTable =1
                            LayoutCachedLeft =330
                            LayoutCachedTop =1245
                            LayoutCachedWidth =1890
                            LayoutCachedHeight =2100
                            RowStart =3
                            RowEnd =3
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =3
                            GroupTable =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =120
                    Top =120
                    Width =144
                    Height =315
                    Name ="EmptyCell78"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =120
                    LayoutCachedTop =120
                    LayoutCachedWidth =264
                    LayoutCachedHeight =435
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =120
                    Top =495
                    Width =144
                    Height =315
                    Name ="EmptyCell79"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =120
                    LayoutCachedTop =495
                    LayoutCachedWidth =264
                    LayoutCachedHeight =810
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =120
                    Top =870
                    Width =144
                    Height =315
                    Name ="EmptyCell80"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =120
                    LayoutCachedTop =870
                    LayoutCachedWidth =264
                    LayoutCachedHeight =1185
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =120
                    Top =1245
                    Width =144
                    Height =855
                    Name ="EmptyCell81"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =120
                    LayoutCachedTop =1245
                    LayoutCachedWidth =264
                    LayoutCachedHeight =2100
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14295
                    Top =120
                    Width =144
                    Height =315
                    Name ="EmptyCell82"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =14295
                    LayoutCachedTop =120
                    LayoutCachedWidth =14439
                    LayoutCachedHeight =435
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14295
                    Top =495
                    Width =144
                    Height =315
                    Name ="EmptyCell83"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =14295
                    LayoutCachedTop =495
                    LayoutCachedWidth =14439
                    LayoutCachedHeight =810
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14295
                    Top =870
                    Width =144
                    Height =315
                    Name ="EmptyCell84"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =14295
                    LayoutCachedTop =870
                    LayoutCachedWidth =14439
                    LayoutCachedHeight =1185
                    RowStart =2
                    RowEnd =2
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14295
                    Top =1245
                    Width =144
                    Height =855
                    Name ="EmptyCell85"
                    GroupTable =1
                    HorizontalAnchor =2
                    LayoutCachedLeft =14295
                    LayoutCachedTop =1245
                    LayoutCachedWidth =14439
                    LayoutCachedHeight =2100
                    RowStart =3
                    RowEnd =3
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =3
                    WidthStretch =50
                    GroupTable =1
                End
                Begin Subform
                    OverlapFlags =85
                    Left =270
                    Top =2640
                    Width =13920
                    Height =1620
                    TabIndex =10
                    Name ="frmApplParts_ds"
                    SourceObject ="Form.frmApplParts_ds"
                    LinkChildFields ="applID"
                    LinkMasterFields ="applID"
                    GroupTable =2
                    VerticalAnchor =2

                    LayoutCachedLeft =270
                    LayoutCachedTop =2640
                    LayoutCachedWidth =14190
                    LayoutCachedHeight =4260
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =4
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =93
                    TextFontFamily =34
                    Left =324
                    Top =2184
                    Width =13830
                    Height =432
                    FontSize =18
                    ControlGroup =2
                    LeftMargin =72
                    Name ="lblPartGrey"
                    Caption ="Parts"
                    FontName ="Arial Rounded MT Bold"
                    HorizontalAnchor =2
                    LayoutCachedLeft =324
                    LayoutCachedTop =2184
                    LayoutCachedWidth =14154
                    LayoutCachedHeight =2616
                    ThemeFontIndex =-1
                End
                Begin Label
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =300
                    Top =2160
                    Width =13830
                    Height =432
                    FontSize =18
                    ControlGroup =2
                    LeftMargin =72
                    ForeColor =13020235
                    Name ="lblPartCyan"
                    Caption ="Parts"
                    FontName ="Arial Rounded MT Bold"
                    HorizontalAnchor =2
                    LayoutCachedLeft =300
                    LayoutCachedTop =2160
                    LayoutCachedWidth =14130
                    LayoutCachedHeight =2592
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin EmptyCell
                    Left =60
                    Top =2640
                    Width =144
                    Height =1620
                    Name ="EmptyCell90"
                    GroupTable =2
                    HorizontalAnchor =2
                    VerticalAnchor =2
                    LayoutCachedLeft =60
                    LayoutCachedTop =2640
                    LayoutCachedWidth =204
                    LayoutCachedHeight =4260
                    LayoutGroup =4
                    WidthStretch =50
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =14250
                    Top =2640
                    Width =144
                    Height =1620
                    Name ="EmptyCell91"
                    GroupTable =2
                    HorizontalAnchor =2
                    VerticalAnchor =2
                    LayoutCachedLeft =14250
                    LayoutCachedTop =2640
                    LayoutCachedWidth =14394
                    LayoutCachedHeight =4260
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =4
                    WidthStretch =50
                    GroupTable =2
                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =14013909
            Name ="FormFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
        End
    End
End
CodeBehindForm
' See "frmAppliance_sub.cls"
