Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub btnHome_Click()
    tabReqType.Pages(0).SetFocus
    cmbPage = Null
End Sub

Private Sub btnSave_Click()
    Me.Dirty = False
End Sub

Private Sub cmbPage_AfterUpdate()
    If Len(cmbPage & vbNullString) > 0 Then
        tabReqType.Pages(Val(cmbPage)).Visible = True
        tabReqType.Pages(Val(cmbPage)).SetFocus
    End If
End Sub

Private Sub Form_AfterInsert()
    cmbPage.Enabled = Len(Me.ID & vbNullString) > 0
End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)
    cmbPage.Enabled = True
End Sub

Private Sub Form_Current()
    cmbPage.Enabled = Not Me.NewRecord

    tabReqType.Pages(0).SetFocus
    HideEmptyTabs
End Sub

Private Sub Form_Load()
    tabReqType.Pages(0).SetFocus
    Me.Requestor.SetFocus
End Sub

Private Sub HideEmptyTabs()
    Dim sub_forms As Variant
    Dim frm As Variant
    Dim count As Long
    Dim i As Integer

    On Error GoTo tabError

    ' must be in order of tabs as seen on screen from left to right (order by page index, skipping the first, main page)
    sub_forms = Array("frmAppliance_sub", "frmBlinds_ds", "frmPaint_ds", "frmRemodels_ds", "frmDoors_ds", "frmFurniture_ds")

    i = 1 ' the first tab (main) is skipped

    For Each frm In sub_forms
        count = Me.Controls(frm).Form.Recordset.RecordCount

        If Me.NewRecord And Not tabReqType.Value = i Then
            Me.tabReqType.Pages(i).Visible = False
        Else
            If count > 0 Then
                Me.tabReqType.Pages(i).Visible = True
            ElseIf Not tabReqType.Value = i Then
                Me.tabReqType.Pages(i).Visible = False
            End If
        End If

        i = i + 1
    Next frm

tabExit:

    Exit Sub

tabError:
    Dim msg As String
    msg = "Error hiding unused tabs"
    msg = Concat(msg, Err.Description, vbNewLine & vbNewLine)

    MsgBox msg, vbCritical + vbOKOnly, "Error"

    Resume tabExit

End Sub

Private Sub Form_Undo(Cancel As Integer)
    cmbPage.Enabled = False
End Sub

Private Sub tabReqType_Change()
    HideEmptyTabs
    Me.cmbPage = tabReqType.Value
End Sub
