Imports System.Data.SqlClient
Imports System.IO
Imports System.Data


Partial Class RemoveImage
    Inherits System.Web.UI.Page


    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim str As String

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)

   
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If TextBox1.Text = "pipdata" Then
            Response.Redirect("pip.aspx")
        ElseIf TextBox1.Text = "piprecord" Then
            Response.Redirect("view_piprecord.aspx")
        ElseIf TextBox1.Text = "pipupdate" Then
            Response.Redirect("update.aspx")

        End If


    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        Session("ImageNo") = GridView1.DataKeys(IntIndex).Value.ToString()

        If e.CommandName = "View" Then
            Response.Redirect("ViewImage.aspx")

        End If

        If e.CommandName = "Delete" Then
            deleteimage()

        End If

    End Sub

    Public Sub deleteimage()

        conn.Open()
        str = "delete from tbl_image where imageid = '" & Session("imageno") & "'"
        com = New SqlCommand(Str, conn)
        com.ExecuteNonQuery()

        '  If MsgBox("Do you want to save record?", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
        'Response.Redirect("mainform.aspx")

        conn.Close()
        ' Else
        'do nothing
        'End If
        Label1.Text = "selected record deleted!"


    End Sub

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("strimagecontrol")

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub
End Class
