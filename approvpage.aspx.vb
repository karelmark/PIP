Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Partial Class approvpage
    Inherits System.Web.UI.Page

    Dim cmd As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)





    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        Session("pip_no") = GridView1.DataKeys(IntIndex).Value.ToString()

        If e.CommandName = "View" Then
            Response.Redirect("viewapprovpage.aspx")
        
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Label2.Text = "" Then
            Label3.Visible = False
            Label2.Visible = False
            Response.Redirect("gallery.aspx")
        Else
            Label2.Visible = True
            Label3.Visible = True
            Response.Redirect("user.aspx")
        End If
        If True Then
            Session.Abandon()
        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Label2.Text = "" Then
            Label2.Visible = False
            Label3.Visible = False
        Else
            Label2.Visible = True
            Label3.Visible = True
            Label2.Text = Session("emplname")
            Label4.Text = Session("name")
            Label1.Text = Session("emplevel")
        End If
    End Sub
End Class
