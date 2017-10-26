Imports System.Data.SqlClient
Imports System.IO
Imports System.Data


Partial Class image
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim str As String

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)

   
   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("strimagecontrol")

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ' If TextBox1.Text = "pipdata" Then
        'Response.Redirect("pip.aspx")
        ' ElseIf TextBox1.Text = "piprecord" Then
        'Response.Redirect("view_piprecord.aspx")
        'ElseIf TextBox1.Text = "pipupdate" Then
        'Response.Redirect("update.aspx")

        'End If
        Response.Redirect("searchallapprovview.aspx")
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        ' If e.CommandName = "Download" Then
        ' Dim myPath = Server.MapPath(e.CommandArgument)
        ' ForceDownload(HttpContext.Current, myPath)
        ' End If
    End Sub
End Class
