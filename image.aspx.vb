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

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        'Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())


        ' If e.CommandName = "View" Then
        ' Response.Redirect("ViewImagepage.aspx")

        '  End If

        If e.CommandName = "Dwn" Then

            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Session("imageno") = GridView1.DataKeys(index).Value.ToString()

            Dim row As GridViewRow = GridView1.Rows(index)

            Dim fName As String = row.Cells(1).Text

            Response.ContentType = "application/octet-stream"

            Response.AddHeader("Content-Disposition", "attachment;filename=" & fName)

            Response.TransmitFile(Server.MapPath("~/Images/" & fName))

            Response.[End]()

        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("strimagecontrol")
        If Label2.Text = "" Then
            Label2.Visible = False
            Label3.Visible = False
        Else
            Label2.Visible = True
            Label3.Visible = True
            Label2.Text = Session("emplname")
            Label4.Text = Session("name")
            Label5.Text = Session("emplevel")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ' If TextBox1.Text = "pipdata" Then
        'Response.Redirect("pip.aspx")
        ' ElseIf TextBox1.Text = "piprecord" Then
        'Response.Redirect("view_piprecord.aspx")
        'ElseIf TextBox1.Text = "pipupdate" Then
        'Response.Redirect("update.aspx")

        'End If
        Response.Redirect("viewapprovpage.aspx")
    End Sub
End Class
