Attribute VB_Name = "basGlobal"
Option Compare Database
Option Explicit

Private Type GUID_TYPE
    Data1 As Long
    Data2 As Integer
    Data3 As Integer
    Data4(7) As Byte
End Type

Private Const VK_SHIFT As Integer = &H10 ' shift key
Private Const VK_CONTROL As Integer = &H11 ' control key

' returns string array containing hidden form names from current database
Public Function getListOfHiddenForms() As String()
    Dim frm As Form
    Dim list() As String
    ReDim list(Forms.count)
    Dim i As Integer

    i = 0

    For Each frm In Forms
        If Not frm.Visible Then
            list(i) = frm.Name
            i = i + 1
        End If
    Next

    If i > 0 Then i = i - 1
    ReDim Preserve list(i)
    getListOfHiddenForms = list

End Function

' returns string array containing filenames of files present in given path
Public Function getListOfFilesInDir(Path As String) As Variant
    Dim files() As String
    Dim fname As String
    Dim i As Integer

    ' path must end in backslash "\"
    If Path = vbNullString Or IsNull(Path) Then
        Exit Function
'    ElseIf Right$(path, 1) <> "\" Then
'        path = path + "\"
    End If

    i = 0
    fname = Dir(Path)

    If fname = vbNullString Then
        getListOfFilesInDir = Null
        Exit Function
    End If


    Do While Len(fname) > 1
        ReDim Preserve files(i)
        files(i) = fname
        i = i + 1
        fname = Dir()
    Loop

    getListOfFilesInDir = files
End Function

' returns string containing hyphenated 2-digit years representing the Current lease term years
' based on a cutoff date supplied. If none supplied 8/5 of current year is used
' current date is used as the reference unless one is supplied
' default format is "21/22", long format is "2021 - 2022"
Public Function getCurrentYears(Optional referenceDate As Date, _
                                Optional cutoffMonth As Integer, _
                                Optional cutoffDay As Integer, _
                                Optional ByVal longFormat As Boolean = False, _
                                Optional ByVal numericFormat As Boolean = False) As Variant
    Dim firstYear As Integer
    Dim secondYear As Integer
    Dim digits As Integer
    Dim delimiter As String
    Dim refYear As Integer
    Dim cutoffDate As Date

    digits = 2
    delimiter = "/"
    If longFormat Then
        digits = 4
        delimiter = " - "
    End If

    If referenceDate = DateValue("12:00am") Then
        referenceDate = Date
    End If

    If cutoffDay = 0 And cutoffMonth = 0 Then
        cutoffDay = 5
    ElseIf cutoffDay = 0 And cutoffMonth <> 0 Then
        cutoffDay = 1
    End If

    If cutoffMonth = 0 Then cutoffMonth = 8

    cutoffDate = DateValue(cutoffMonth & "/" & cutoffDay & "/" & Year(referenceDate))

    If referenceDate < cutoffDate Then
        firstYear = Right$(Year(referenceDate) - 1, digits) ' last year
        secondYear = Right$(Year(referenceDate), digits) ' this year
    Else
        firstYear = Right$(Year(referenceDate), digits) ' this year
        secondYear = Right$(Year(referenceDate) + 1, digits) ' next year
    End If

    If numericFormat Then
        getCurrentYears = Array(firstYear, secondYear)
    Else
        getCurrentYears = firstYear & delimiter & secondYear
    End If

End Function

' returns string containing hyphenated 2-digit years representing the Current lease term years
' based on a cutoff date supplied. If none supplied 8/5 of current year is used
' current date is used as the reference unless one is supplied
' default format is "21/22", long format is "2021 - 2022"
Public Function getCurrent(Optional referenceDate As Date, _
                                Optional cutoffMonth As Integer, _
                                Optional cutoffDay As Integer) As Integer
    Dim firstYear As Integer
    Dim refYear As Integer
    Dim cutoffDate As Date

    If referenceDate = DateValue("12:00am") Then
        referenceDate = Date
    End If

    If cutoffDay = 0 And cutoffMonth = 0 Then
        cutoffDay = 5
    ElseIf cutoffDay = 0 And cutoffMonth <> 0 Then
        cutoffDay = 1
    End If

    If cutoffMonth = 0 Then cutoffMonth = 8

    cutoffDate = DateValue(cutoffMonth & "/" & cutoffDay & "/" & Year(referenceDate))

    If referenceDate < cutoffDate Then
        firstYear = Year(referenceDate) - 1 ' future year
    Else
        firstYear = Year(referenceDate) ' future year
    End If

    getCurrent = firstYear

End Function

' returns string containing hyphenated 2-digit years representing the Future lease term years
' based on a cutoff date supplied. If none supplied 8/5 of current year is used
' current date is used as the reference unless one is supplied
' default format is "21/22", long format is "2021 - 2022"
Public Function getFutureYears(Optional referenceDate As Date, _
                                Optional cutoffMonth As Integer, _
                                Optional cutoffDay As Integer, _
                                Optional ByVal longFormat As Boolean = False, _
                                Optional ByVal numericFormat As Boolean = False) As Variant
    Dim firstYear As Integer
    Dim secondYear As Integer
    Dim digits As Integer
    Dim delimiter As String
    Dim cutoffDate As Date

    digits = 2
    delimiter = "/"
    If longFormat Then
        digits = 4
        delimiter = " - "
    End If

    If referenceDate = DateValue("12:00am") Then referenceDate = Date

    If cutoffDay = 0 And cutoffMonth = 0 Then
        cutoffDay = 5
    ElseIf cutoffDay = 0 And cutoffMonth <> 0 Then
        cutoffDay = 1
    End If

    If cutoffMonth = 0 Then cutoffMonth = 8

    cutoffDate = DateValue(cutoffMonth & "/" & cutoffDay & "/" & Year(referenceDate))


    If referenceDate < cutoffDate Then
        firstYear = Right$(Year(referenceDate), digits) ' this year
        secondYear = Right$(Year(referenceDate) + 1, digits) ' next year
    Else
        firstYear = Right$(Year(referenceDate) + 1, digits) ' next year
        secondYear = Right$(Year(referenceDate) + 2, digits) ' two years
    End If

    If numericFormat Then
        getFutureYears = Array(firstYear, secondYear)
    Else
        getFutureYears = firstYear & delimiter & secondYear
    End If

End Function

' returns string containing hyphenated 2-digit years representing the Future lease term years
' based on a cutoff date supplied. If none supplied 8/5 of current year is used
' current date is used as the reference unless one is supplied
' default format is "21/22", long format is "2021 - 2022"
Public Function getFuture(Optional referenceDate As Date, _
                                Optional cutoffMonth As Integer, _
                                Optional cutoffDay As Integer) As Integer
    Dim firstYear As String
    Dim cutoffDate As Date

    If referenceDate = DateValue("12:00am") Then referenceDate = Date

    If cutoffDay = 0 And cutoffMonth = 0 Then
        cutoffDay = 5
    ElseIf cutoffDay = 0 And cutoffMonth <> 0 Then
        cutoffDay = 1
    End If

    If cutoffMonth = 0 Then cutoffMonth = 8

    cutoffDate = DateValue(cutoffMonth & "/" & cutoffDay & "/" & Year(referenceDate))


    If referenceDate < cutoffDate Then
        firstYear = Year(referenceDate) ' current year
    Else
        firstYear = Year(referenceDate) + 1 ' current year
    End If

    getFuture = firstYear

End Function

' return the filename portion of the path
Public Function getFilenameFromPath(ByVal strPath As String) As String
' Returns the rightmost characters of a string upto but not including the rightmost '\'
' e.g. 'c:\winnt\win.ini' returns 'win.ini'

    If Right$(strPath, 1) <> "\" And Len(strPath) > 0 Then
        getFilenameFromPath = getFilenameFromPath(Left$(strPath, Len(strPath) - 1)) + Right$(strPath, 1)
    End If
End Function

' return the path portion of the filepath
Public Function getPathFromFilePath(ByVal strPath As String) As String
' Returns the leftmost characters of a string upto and including the rightmost '\'
' e.g. 'c:\winnt\win.ini' returns 'c:\winnt\'

    If Right$(strPath, 1) <> "\" And Len(strPath) > 0 Then
        getPathFromFilePath = getPathFromFilePath(Left$(strPath, Len(strPath) - 1))
    Else
        getPathFromFilePath = strPath
    End If
End Function

' split function that ignores delimiters inside quotes
' quotes will not be re-placed in output
Public Function QuotedSplit(ByVal TextToSplit As String, _
                     Optional ByVal delimiter As String = ",", _
                     Optional ByVal RemoveDuplicates As Boolean = False, _
                     Optional ByVal Compare As VbCompareMethod = vbBinaryCompare) As String()

  Dim X As Long, QuoteDelimited() As String, WorkingArray() As String

  ' split text on double-quote characters
  QuoteDelimited = Split(TextToSplit, """")

  ' replace the delimiter characters (comma by default) everywhere that was not inside the quotes
  ' with a chr$(1) character
  For X = 0 To UBound(QuoteDelimited) Step 2
    QuoteDelimited(X) = Replace$(QuoteDelimited(X), delimiter, Chr$(1), , , Compare)
  Next

'  TextToSplit = Join(QuoteDelimited, """") ' re-join text, re-placing double-quote characters
  TextToSplit = Join(QuoteDelimited, vbNullString) ' re-join text, without the double-quote characters

  If RemoveDuplicates Then
    ' remove duplicate delimiters
    Do While InStr(1, TextToSplit, Chr$(1) & Chr$(1), Compare)
      TextToSplit = Replace$(TextToSplit, Chr$(1) & Chr$(1), Chr$(1), , , Compare)
    Loop
  End If

  ' re-split text using the new delimiter (chr$(1))
  WorkingArray = Split(TextToSplit, Chr$(1))

  QuotedSplit = WorkingArray
End Function

' returns count of the number of times a given search character appears inside the searchText
Public Function countOfCharInString(ByVal searchText As String, ByVal searchChar As String) As Integer
    If Len(searchChar) < 1 Then Exit Function
    If Len(searchText) = 0 Then
        countOfCharInString = 0
        Exit Function
    End If

    Dim i As Integer, c As Integer

    i = InStr(searchText, searchChar)

    If i > 0 Then
        c = countOfCharInString(Right$(searchText, Len(searchText) - i), searchChar) + 1
    End If

    countOfCharInString = c

End Function

' merges multiple arrays into a single array
' ParamArray is an array listing other arrays
Public Function MergeArrays(ParamArray Arrays() As Variant) As Variant

    Dim i As Long, j As Long, UBoundArr As Long, OldUBoundArray As Long
    Dim arr() As Variant

    For j = LBound(Arrays) To UBound(Arrays)
        UBoundArr = UBoundArr + UBound(Arrays(j))
    Next j

    ReDim arr(0 To UBoundArr + 1)

    For j = LBound(Arrays) To UBound(Arrays)
        For i = LBound(Arrays(j)) To UBound(Arrays(j))
            arr(i + OldUBoundArray) = Arrays(j)(i)
        Next i
        OldUBoundArray = OldUBoundArray + UBound(Arrays(j)) + 1
    Next j

    MergeArrays = arr

End Function

' opens a plain text csv file and parses into rows of fields
' specifically handles files that contain CR + LF inside quoted field data within a record
' also handles quoted field data that contains delimiters (",") via the QuotedSplit function
Public Function parseApplicationCSV(ByVal filename As String) As Variant
    Dim filenum As Integer, i As Integer
    Dim wholefile As String
    Dim lines() As String, recs() As Variant, flds() As String

    On Error GoTo parseError

    'read contents of file
    filenum = FreeFile
    Open filename For Input As #filenum
    wholefile = Input$(LOF(filenum), filenum)


    ' fix records that are split with CRLF in the middle
    ' replace SPACE + CR + LF with vertical bar character
    wholefile = Replace(wholefile, Chr$(32) & Chr$(13) & Chr$(10), Chr$(124))

    ' split into 'records' (file lines)
    lines = Split(wholefile, vbCrLf)

    ' split each 'record' (line) into fields (skips header line)
    For i = 1 To UBound(lines)
        If Len(lines(i)) > 0 Then
            flds = basGlobal.QuotedSplit(lines(i), ",")
            ReDim Preserve recs(i - 1)
            recs(i - 1) = flds
        End If
    Next

    parseApplicationCSV = recs

parseEnd:
    Close filenum
    Exit Function

parseError:
    MsgBox "Error parsing CSV" & vbCrLf & Err.Description, vbCritical + vbOKOnly, "CSV Parse Error"
    parseApplicationCSV = recs

End Function

' add text criteria for a single field to where clause of SQL statement
Public Sub AddToWhere(fieldValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer, _
        Optional ExactText As Boolean = False, _
        Optional invertValue As Boolean = False)

    Dim operator As String, fv As String
    operator = " LIKE "

    '  Create criteria for WHERE clause.
    If fieldValue <> vbNullString Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " AND "
            End If

            ' enclose octothorpes (#) in square brackets for use in SQL
            fieldValue = Replace(fieldValue, "#", "[#]")

            If ExactText And Not invertValue Then
                operator = " = "
            ElseIf invertValue Then
                operator = " NOT LIKE "
            Else
                operator = " LIKE "
            End If

            fv = Chr$(34) & fieldValue & Chr$(34)


            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & fv)

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

' addToWhere for a range of dates using the Between keyword
Public Sub DateRangeToWhere(startValue As Variant, _
        endValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer)

    Dim range As String

    '  Create criteria for WHERE clause.
    If startValue <> vbNullString And endValue <> vbNullString Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " and "
            End If

            range = " between #" & startValue & "# and #" & endValue & "#"

            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & range)

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

Public Sub showTableLinks()
    Dim td As TableDef
    Dim pp As Variant

    On Error Resume Next

    Screen.MousePointer = 11

    For Each td In CurrentDb.TableDefs
        If LCase$(Left$(td.Name, 4)) <> "msys" Then
            Debug.Print td.Name, td.SourceTableName, td.Connect
        End If
'        td.RefreshLink
    Next td

    Set td = Nothing

    Screen.MousePointer = 0

End Sub

Public Sub recoverToolbar()
  DoCmd.ShowToolbar "Ribbon", acToolbarYes
End Sub

Public Function arrayContains(arr As Variant, searchString As String) As Boolean
    arrayContains = UBound(Filter(arr, searchString)) > -1
End Function

' AddToWhere for numbers using Equals (=) operator for exact matches
Public Sub AddNumberToWhere(fieldValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer)

    Dim operator, fv As String
    operator = " = "

    '  Create criteria for WHERE clause.
    If fieldValue <> "" Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " and "
            End If

            fv = fieldValue

            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & fv)

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

Public Function FindTermInMacros(sSearchTerm As String)
    On Error GoTo Error_Handler
    Dim oFrm                  As Object
    Dim frm                   As Access.Form
    Dim oRpt                  As Object
    Dim rpt                   As Access.Report
    Dim ctl                   As Access.control
    Dim oMcr                  As Object
    Dim prp                   As DAO.Property
    Dim sFile                 As String
    Dim sMcr                  As String
    Dim intChannel            As Integer
    Dim sLine                 As String

    Access.Application.Echo False
    Debug.Print "Search Results for the Term '" & sSearchTerm & "'"
    Debug.Print "Object Type", "Object Name", "Control Name", "Event Name"
    Debug.Print String(80, "-")

    'Search Forms
    For Each oFrm In Application.CurrentProject.AllForms
        DoCmd.OpenForm oFrm.Name, acDesign
        Set frm = Forms(oFrm.Name).Form
        With frm
            'Form Properties
            For Each prp In .Properties
                If InStr(prp.Name, "EmMacro") > 0 Then
                    If Len(prp.Value) > 0 Then
                        'Search for the Search Term we are looking for
                        If InStr(prp.Value, sSearchTerm) > 0 Then
                            Debug.Print "Form:", frm.Name, , Replace(prp.Name, "EmMacro", "")  ', prp.Value
                        End If
                    End If
                End If
            Next prp
            'Form Control Properties
            For Each ctl In frm.Controls
                For Each prp In ctl.Properties
                    If InStr(prp.Name, "EMMacro") > 0 Then
                        If Len(prp.Value) > 0 Then
                            If InStr(prp.Value, sSearchTerm) > 0 Then
                                Debug.Print "Form", frm.Name, ctl.Name, Replace(prp.Name, "EmMacro", "")
                            End If
                        End If
                    End If
                Next prp
            Next ctl
        End With
        DoCmd.Close acForm, oFrm.Name, acSaveNo
    Next oFrm

    'Search Reports
    For Each oRpt In Application.CurrentProject.AllReports
        DoCmd.OpenReport oRpt.Name, acDesign
        Set rpt = Reports(oRpt.Name).Report
        With rpt
            'Report Properties
            For Each prp In .Properties
                If InStr(prp.Name, "EmMacro") > 0 Then
                    If Len(prp.Value) > 0 Then
                        'Search for the Search Term we are looking for
                        If InStr(prp.Value, sSearchTerm) > 0 Then
                            Debug.Print "Report:", rpt.Name, , Replace(prp.Name, "EmMacro", "")  ', prp.Value
                        End If
                    End If
                End If
            Next prp
            'Report Control Properties
            For Each ctl In rpt.Controls
                For Each prp In ctl.Properties
                    If InStr(prp.Name, "EMMacro") > 0 Then
                        If Len(prp.Value) > 0 Then
                            If InStr(prp.Value, sSearchTerm) > 0 Then
                                Debug.Print "Form", frm.Name, ctl.Name, Replace(prp.Name, "EmMacro", "")
                            End If
                        End If
                    End If
                Next prp
            Next ctl
        End With
        DoCmd.Close acReport, oRpt.Name, acSaveNo
    Next oRpt

    'Search Standard Macros
    'There appears to be no way to simply read/access a macro's commands through VBA, so
    'we have to export the object to a text file and then read and search the resulting
    'file.  It's just the way it is, thank MS for not giving us any mean to interact with
    'macros!
    For Each oMcr In Application.CurrentProject.AllMacros
        sFile = Access.Application.CurrentProject.Path & "\Macro_" & oMcr.Name & ".txt"
        'Export the Macro to a Text file so we can review it
        Access.Application.SaveAsText acMacro, oMcr.Name, sFile
        'Read the text file
        sMcr = ""
        intChannel = FreeFile
        Open sFile For Input Access Read As #intChannel
        Do Until EOF(intChannel)
            Line Input #intChannel, sLine
            If Trim(sLine) Like "Comment =""_AXL:<?xml version=*" Then _
               Exit Do
            sMcr = sMcr & sLine
        Loop
        Close #intChannel
        'Delete the text file now that we have the content in memory
        Kill sFile
        'Search for the Search Term we are looking for
        If InStr(sMcr, sSearchTerm) > 0 Then
            Debug.Print "Macro:", oMcr.Name
        End If
    Next oMcr

    Debug.Print String(80, "-")
    Debug.Print "Search Completed"

Error_Handler_Exit:
    On Error Resume Next
    Access.Application.Echo True
    If Not oMcr Is Nothing Then Set oMcr = Nothing
    If Not prp Is Nothing Then Set prp = Nothing
    If Not ctl Is Nothing Then Set ctl = Nothing
    If Not rpt Is Nothing Then Set rpt = Nothing
    If Not oRpt Is Nothing Then Set oRpt = Nothing
    If Not frm Is Nothing Then Set frm = Nothing
    If Not oFrm Is Nothing Then Set oFrm = Nothing
    Exit Function

Error_Handler:
    MsgBox "The following error has occurred" & vbCrLf & vbCrLf & _
           "Error Number: " & Err.Number & vbCrLf & _
           "Error Source: FindTermInMacros" & vbCrLf & _
           "Error Description: " & Err.Description & _
           Switch(Erl = 0, "", Erl <> 0, vbCrLf & "Line No: " & Erl) _
           , vbOKOnly + vbCritical, "An Error has Occurred!"
    Resume Error_Handler_Exit
End Function

Public Function getCurrentUsername() As String
    getCurrentUsername = UCase(Environ("username"))
End Function

Public Function getActiveItem() As String
    Dim a_Itm As String

    On Error Resume Next
    a_Itm = Screen.ActiveDatasheet.Name

    If Err <> 0 Then
        Err = 0
        a_Itm = Screen.ActiveForm.Name
    End If

    getActiveItem = a_Itm

End Function

Public Function getCurrentDB() As String
    On Error Resume Next
    getCurrentDB = CurrentDb.Name
End Function

' AddToWhere for dates using Equals (=) operator for exact matches
Public Sub AddExactDateToWhere(fieldValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer)

    Dim operator, fv As String
    operator = " = "

    '  Create criteria for WHERE clause.
    If fieldValue <> "" Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " and "
            End If

            fv = fieldValue

            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & "#" & fv & "#")

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

' AddToWhere for dates where operator is optional
Public Sub AddDateToWhere(fieldValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer, _
        Optional operator As String = "=")

    Dim fv As String
    operator = " " & operator & " "

    '  Create criteria for WHERE clause.
    If fieldValue <> "" Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " and "
            End If

            fv = fieldValue

            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & "#" & fv & "#")

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

' transposes the dimensions of a two-dimensional array
' array(a, b) -> array(b, a)
Public Function TransposeArray(myarray As Variant) As Variant
    Dim X As Long
    Dim Y As Long
    Dim Xupper As Long
    Dim Yupper As Long
    Dim tempArray As Variant

    Xupper = UBound(myarray, 2)
    Yupper = UBound(myarray, 1)
    ReDim tempArray(Xupper, Yupper)

    For X = 0 To Xupper
        For Y = 0 To Yupper
            tempArray(X, Y) = myarray(Y, X)
        Next Y
    Next X

    TransposeArray = tempArray
End Function

' add Boolean criteria for a single field to where clause of SQL statement
Public Sub BooleanToWhere(fieldValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer)

    Dim operator As String, fv As String
    operator = " = "

    '  Create criteria for WHERE clause.
    If fieldValue <> vbNullString Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " and "
            End If

            fv = fieldValue

            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & fv)

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

Public Function countDecrement(ByRef fld As Variant, Optional lowerLimit As Variant = 0, Optional decrement As Variant = 1)
    If Val(Nz(fld, 0)) > lowerLimit Then
        fld.Value = Nz(fld, 0) - decrement
    End If

    fld.SetFocus
End Function

Public Function countIncrement(ByRef fld As Variant, Optional upperLimit As Variant = 500, Optional increment As Variant = 1)
    If Val(Nz(fld, 0)) < upperLimit Then
        fld.Value = Nz(fld, 0) + increment
    End If

    fld.SetFocus
End Function

Public Function longColorToRGB(color As Long, Optional cssStyle As Boolean = False) As String
    If cssStyle Then
        longColorToRGB = "RGB(" & color Mod 256 & _
                            ", " & (color \ 256) Mod 256 & _
                            ", " & (color \ 256 ^ 2) Mod 256 & ")"
    Else
        longColorToRGB = "#" & Hex(color Mod 256) & _
                            Hex((color \ 256) Mod 256) & _
                            Hex((color \ 256 ^ 2) Mod 256)
    End If
End Function

Public Function rgbColorToLong(rgb As String) As Double
    Dim r As String, g As String, b As String
    Dim lR As Long, lG As Long, lB As Long

    rgb = Replace(rgb, "#", "")

    If Len(rgb) > 6 Then
        rgbColorToLong = 0
        Exit Function
    End If

    r = Left$(rgb, 2)
    b = Right$(rgb, 2)
    g = Mid$(rgb, 3, 2)

    lR = CLng("&H" & r)
    lG = CLng("&H" & g)
    lB = CLng("&H" & b)

    rgbColorToLong = (lB * 65536) + (lG * 256) + lR

End Function

Public Function LockForm(isLocked As Boolean, controlsToLock As Variant)
    Dim control As Variant

    Const STANDARD_BORDER = 10921638 ' RGB(&HA6, &HA6, &HA6) #A6A6A6
    Const HIGHLIGHT_BORDER = 6740479 ' RGB(&HFF, &HD9, &H66) #FFD966


    For Each control In controlsToLock
        control.Locked = isLocked
        If isLocked Then
            control.BorderColor = STANDARD_BORDER
        Else
            control.BorderColor = HIGHLIGHT_BORDER
        End If
    Next

    LockForm = isLocked
End Function

' recursive function to add business days to a date
' business days exclude Saturdays and Sundays
Public Function addBusinessDaysTo(ByVal dtStart As Date, days As Integer) As Date
    Dim dayNum As Integer
    Dim nextDay As Date

    On Error GoTo bdError

    ' base case
    If days = 0 Then
        addBusinessDaysTo = dtStart
        Exit Function
    End If

    ' add a day to the date argument
    nextDay = dtStart + 1
    dayNum = Weekday(nextDay)

    ' check to see if day plus one is a saturday(7) or sunday(1)
    ' only decrement the days counter if it's a weekday
    If dayNum <> 1 And dayNum <> 7 Then
        days = days - 1
    End If

    ' call next frame
    addBusinessDaysTo = addBusinessDaysTo(nextDay, days)

exitBD:
    Exit Function

bdError:
    MsgBox "Error calculating next business day" & vbCrLf & _
            vbCrLf & Err.Description, vbCritical + vbOKOnly, "Recursion Error"
    Resume exitBD

End Function

Public Function findQueriesWithString(searchString As String)
    Dim qdf As DAO.QueryDef
    Dim strSQL As String
    On Error GoTo ErrorHandler

    For Each qdf In CurrentDb.QueryDefs
        Application.Echo True, qdf.Name
        strSQL = qdf.sql
        If InStr(1, strSQL, searchString) > 0 Then
            Debug.Print qdf.Name
        End If
    Next qdf

    Set qdf = Nothing
    MsgBox "Search Completed"

    Exit Function
ErrorHandler:
    If Err.Number = 3258 Then
        strSQL = vbNullString
        Resume
    End If
End Function

Public Function findTablesWithString(searchString As String)
    Dim td As DAO.TableDef
    Dim fld As Field
    Dim strFld As String
    On Error GoTo ErrorHandler

    For Each td In CurrentDb.TableDefs
        Application.Echo True, td.Name
        For Each fld In td.Fields
            strFld = fld.Name
            If InStr(1, strFld, searchString) > 0 Then
                Debug.Print td.Name & ": " & fld.Name
            End If
        Next fld
    Next td

    Set td = Nothing
    MsgBox "Search Completed"

    Exit Function
ErrorHandler:
    If Err.Number = 3258 Then
        strFld = vbNullString
        Resume
    End If
End Function

Public Function TextPart(sIn As String) As String
    Dim L As Long, LL As Long
    Dim sCh As String

    If IsNull(sIn) Then
        TextPart = ""
        Exit Function
    End If

    sIn = Replace(sIn, "#", "")
    TextPart = ""

    For L = 1 To Len(sIn)
        sCh = Mid(sIn, L, 1)
        If sCh Like "[a-zA-Z]" Then
            TextPart = TextPart & sCh
        End If
    Next L
End Function

Public Function NumberPart(sIn As String) As Long
    Dim L As Long, LL As Long
    Dim sCh As String, temp As String

    If IsNull(sIn) Then
        NumberPart = 0
        Exit Function
    End If

    sIn = Replace(sIn, "#", "")

    For L = 1 To Len(sIn)
        sCh = Mid(sIn, L, 1)
        If sCh Like "[a-zA-Z]" Then
        Else
            temp = temp & sCh
        End If
    Next L

    NumberPart = CLng(temp)
End Function

Public Function SplitAddress(Address As String) As Collection
    Dim output As New Collection
    Dim addr As Variant
    Dim a As Variant

    addr = Split(Address, " ")

    For Each a In addr
        output.Add a
    Next

    Set SplitAddress = output
End Function

Public Function getNumberFromAddress(Address As Variant) As Long
    Dim addr As Variant
    Dim cleanAddress As String

    If IsNull(Address) Or Address = vbNullString Then
        getNumberFromAddress = 0
        Exit Function
    End If

    cleanAddress = Replace(Address, "#", "")

    addr = Split(cleanAddress, " ")

    getNumberFromAddress = Val(addr(0))

End Function

Public Function getStreetFromAddress(Address As Variant) As String
    Dim addr As Variant
    Dim directions As Variant
    Dim position As Integer

    directions = Array("s", "s.", "south", "n", "n.", "north", "w", "w.", "west", "e", "e.", "east")

    If IsNull(Address) Or Address = vbNullString Then
        getStreetFromAddress = ""
        Exit Function
    End If

    addr = Split(Address, " ")

    position = 0
    Do Until Val(addr(position)) = 0
        position = position + 1
    Loop

    If arrayContains(directions, LCase(addr(position))) Then
        getStreetFromAddress = addr(position + 1)
    Else
        getStreetFromAddress = addr(position) & " " & addr(position + 1)
    End If
End Function

Public Function textPartOfUnit(Unit As Variant) As String
    Dim cleanUnit As String

    If IsNull(Unit) Then
        textPartOfUnit = 0
        Exit Function
    End If

    cleanUnit = Replace(Unit, "#", "")

    If Not IsNumeric(cleanUnit) Then
        textPartOfUnit = Asc(cleanUnit)
    Else
        textPartOfUnit = 0
    End If

End Function

Public Function numPartOfUnit(Unit As Variant) As Long
    Dim cleanUnit As String
    Dim ascii As Long
    Dim numChar As String

    If IsNull(Unit) Then
        numPartOfUnit = 0
        Exit Function
    End If

    cleanUnit = Replace(Unit, "#", "")

    If Not IsNumeric(cleanUnit) Then
        ascii = Asc(cleanUnit)
        numChar = Replace(cleanUnit, Chr$(ascii), "")
    Else
        numChar = cleanUnit
    End If

    numPartOfUnit = Val(numChar)

End Function

Public Function makeEmptySQLFromSQL(strSQL As String) As String
    Dim rs As Recordset

    Set rs = CurrentDb.OpenRecordset(strSQL, dbOpenSnapshot)

    makeEmptySQLFromSQL = makeEmptySQLFromRecordset(rs)

End Function

Public Function makeEmptySQLFromRecordset(rs As Recordset) As String
    Dim fld As Variant
    Dim sql As String

    On Error GoTo sqlError

    For Each fld In rs.Fields
        sql = sql & "NULL AS [" & fld.Name & "],"
    Next

    makeEmptySQLFromRecordset = "SELECT " & Left(sql, Len(sql) - 1)

exitSQL:
    On Error Resume Next

    rs.Close
    Set rs = Nothing

    Exit Function

sqlError:
    MsgBox "Error creating Empty SQL statement" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Empty SQL Error"
    Resume exitSQL

End Function

Public Function makeSQLFromRecordset(rs As Recordset) As String
    Dim fld As Variant
    Dim sql As String

    On Error GoTo sqlError

    For Each fld In rs.Fields
        sql = sql & "[" & fld.Name & "],"
    Next

    makeSQLFromRecordset = "SELECT " & Left(sql, Len(sql) - 1) & " FROM " & rs.Name

exitSQL:
    On Error Resume Next

    rs.Close
    Set rs = Nothing

    Exit Function

sqlError:
    MsgBox "Error creating Empty SQL statement" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Empty SQL Error"
    Resume exitSQL

End Function

Public Function makeEmptySQLFromTable(tblName As String) As String
    Dim rs As Recordset
    Dim fld As Variant
    Dim sql As String

    On Error Resume Next

    If CurrentDb.TableDefs(tblName).Name <> tblName Then
        MsgBox "Table Not Found" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Table Error"
        GoTo exitRS
    End If

    If Err <> 0 Then
        MsgBox "Table Not Found" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Table Error"
        GoTo exitRS
    End If

    On Error GoTo rsError

    Set rs = CurrentDb.OpenRecordset(tblName, dbOpenSnapshot)

    makeEmptySQLFromTable = makeEmptySQLFromRecordset(rs)

exitRS:
    On Error Resume Next

    rs.Close
    Set rs = Nothing

    Exit Function

rsError:
    MsgBox "Error creating Empty SQL statement" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Empty SQL Error"
    Resume exitRS

End Function

Public Function makeSQLFromTable(tblName As String) As String
    Dim rs As Recordset
    Dim fld As Variant
    Dim sql As String

    On Error Resume Next

    If CurrentDb.TableDefs(tblName).Name <> tblName Then
        MsgBox "Table Not Found" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Table Error"
        GoTo exitRS
    End If

    If Err <> 0 Then
        MsgBox "Table Not Found" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Table Error"
        GoTo exitRS
    End If

    On Error GoTo rsError

    Set rs = CurrentDb.OpenRecordset(tblName, dbOpenSnapshot)

    makeSQLFromTable = makeSQLFromRecordset(rs)

exitRS:
    On Error Resume Next

    rs.Close
    Set rs = Nothing

    Exit Function

rsError:
    MsgBox "Error creating Empty SQL statement" & vbCrLf & _
                vbCrLf & Err.Description, vbCritical + vbOKOnly, "Empty SQL Error"
    Resume exitRS

End Function

Public Sub OrToWhere(fieldValue As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer, _
        Optional ExactText As Boolean = False)

    Dim operator As String, fv As String
    operator = " Like "

    '  Create criteria for WHERE clause.
    If fieldValue <> vbNullString Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " OR "
            End If

            ' enclose octothorpes (#) in square brackets for use in SQL
            fieldValue = Replace(fieldValue, "#", "[#]")

            If ExactText Then
                operator = " = "
                fv = Chr$(34) & fieldValue & Chr$(34)
            Else
'                fv = Chr$(34) & Chr$(42) & fieldValue & Chr$(42) & Chr$(34)
                fv = Chr$(34) & LCase(fieldValue) & Chr$(34)
            End If

            '  Append criterion to existing criteria.
            '  Enclose FieldValue and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & fv)

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

Public Sub AddSetToWhere(setOfValues As Variant, _
        fieldName As String, _
        myCriteria As String, _
        argCount As Integer)

    Dim operator As String, fv As String
    operator = " IN "

    '  Create criteria for WHERE clause.
    If setOfValues <> vbNullString Then
            '  Add "and" if other criterion exists.
            If argCount > 0 Then
                myCriteria = myCriteria & " AND "
            End If

            ' enclose octothorpes (#) in square brackets for use in SQL
            setOfValues = Replace(setOfValues, "#", "[#]")

            fv = LCase(setOfValues)

            '  Append criterion to existing criteria.
            '  Enclose setOfValues and asterisk in quotation marks.
            myCriteria = (myCriteria & fieldName & operator & fv)

            '  Increase argument count.
            argCount = argCount + 1
    End If

End Sub

Public Function firstPaymentDue(leaseStartDate As Date) As Date
    Dim monthNum As Integer
    Dim dayNum As Integer
    Dim yearNum As Integer

    monthNum = Month(leaseStartDate)
    dayNum = Day(leaseStartDate)
    yearNum = Year(leaseStartDate)

    If dayNum > 25 Then
        monthNum = monthNum + 1
    End If

    firstPaymentDue = DateSerial(yearNum, monthNum, 1)

End Function

Public Function FileExists(ByVal FileToTest As String, Optional isDirectory As Boolean = False) As Boolean
    If isDirectory Then
        FileExists = (Dir(FileToTest, vbDirectory) <> "")
    Else
        FileExists = (Dir(FileToTest) <> "")
    End If
End Function

Public Sub DeleteFile(ByVal FileToDelete As String)
   If FileExists(FileToDelete) Then 'See above
      ' First remove readonly attribute, if set
      SetAttr FileToDelete, vbNormal
      ' Then delete the file
      Kill FileToDelete
   End If
End Sub

Public Function lastNameOfFullName(fullName As String) As Variant
    Dim aryName As Variant

    If IsNull(fullName) Then
        lastNameOfFullName = Null
    End If

    aryName = Split(fullName, " ")
    lastNameOfFullName = aryName(UBound(aryName))

End Function

Public Sub QuickSort(vArray As Variant, inLow As Long, inHi As Long)
  Dim pivot   As Variant
  Dim tmpSwap As Variant
  Dim tmpLow  As Long
  Dim tmpHi   As Long

  tmpLow = inLow
  tmpHi = inHi

  pivot = vArray((inLow + inHi) \ 2)

  While (tmpLow <= tmpHi)
     While (vArray(tmpLow) < pivot And tmpLow < inHi)
        tmpLow = tmpLow + 1
     Wend

     While (pivot < vArray(tmpHi) And tmpHi > inLow)
        tmpHi = tmpHi - 1
     Wend

     If (tmpLow <= tmpHi) Then
        tmpSwap = vArray(tmpLow)
        vArray(tmpLow) = vArray(tmpHi)
        vArray(tmpHi) = tmpSwap
        tmpLow = tmpLow + 1
        tmpHi = tmpHi - 1
     End If
  Wend

  If (inLow < tmpHi) Then QuickSort vArray, inLow, tmpHi
  If (tmpLow < inHi) Then QuickSort vArray, tmpLow, inHi
End Sub

Public Function getLabelFromURLField(urlField As Variant) As Variant
    If IsNull(urlField) Then getLabelFromURLField = Null

    getLabelFromURLField = HyperlinkPart(urlField, acDisplayText)

End Function

Public Function getURLFromURLField(urlField As Variant) As Variant
    If IsNull(urlField) Then getURLFromURLField = Null

    getURLFromURLField = HyperlinkPart(urlField, acFullAddress)

End Function

Public Function DCsv(Expression As String, Domain As String, Optional criteria As String, Optional strDelim As String = ",") As Variant
    'Returns a delimited string of all the records in the SELECT SQL statement

    Dim rs As DAO.Recordset
    Dim strCSV As String
    Dim strSQL As String

    On Error GoTo domainError

    strSQL = "SELECT " & Expression & " FROM " & Domain & ""
    If criteria <> vbNullString Then
        strSQL = strSQL & " WHERE " & criteria
    End If

    Set rs = CurrentDb.OpenRecordset(strSQL, dbOpenSnapshot)

    'Concatenate the first (and should be the only one) field from the SQL statement
    With rs
        Do While Not .EOF
            If Not IsNull(.Fields(0)) Then
                strCSV = strCSV & strDelim & .Fields(0)
            End If
            .MoveNext
        Loop
        .Close
    End With

    'Remove the leading delimiter and return the result
    If strCSV = vbNullString Then
        DCsv = Null
    Else
        DCsv = Mid$(strCSV, Len(strDelim) + 1)
    End If

exitDomain:
    Set rs = Nothing

    Exit Function

domainError:
    MsgBox "Error Evaluating Domain CSV Function" & vbNewLine & _
            vbNewLine & Err.Description, vbCritical + vbOKOnly, "Error"
    Resume exitDomain

End Function

Function trimCHAR(ByVal S As String, char As String)
'similar to TRIM function except can specify character(s) to TRIM
  Dim RE As Object
  Dim i As Long

    Set RE = CreateObject("vbscript.regexp")
    With RE
        .Global = True
        .MultiLine = True

    'need to do separately, otherwise multiple chars within will
    'be removed
            .Pattern = char & "*$"
            S = .Replace(S, "") 'Remove extra chars at end of string
            .Pattern = char & "*([^" & char & "]" & char & ")*"
            S = .Replace(S, "$1") 'Remove extra chars at start of string or within
    End With
    trimCHAR = S

End Function

' Format string using the .NET way
Public Function StringFormat(ByVal strValue As String, ParamArray arrParames() As Variant) As String
    Dim i As Integer
    ' Replace parameters
    For i = LBound(arrParames()) To UBound(arrParames())
        strValue = Replace(strValue, "{" & CStr(i) & "}", CStr(Nz(arrParames(i), "")))
    Next

    ' Get the value
    StringFormat = strValue
End Function

' concatenates two strings without needing to strip off the leading/trailing delimiter
Public Function Concat(StartText As Variant, NextVal As Variant, _
                      Optional delimiter As String = ", ") As String
    If Len(Nz(StartText)) = 0 Then
        Concat = Nz(NextVal)
    ElseIf Len(Nz(NextVal)) = 0 Then
        Concat = StartText
    Else
        Concat = StartText & delimiter & NextVal
    End If
End Function
