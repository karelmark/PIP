Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Partial Class mainpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("emplname")
        Label4.Text = Session("name")
        Label5.Text = Session("emplevel")
        Label1.Text = DateTime.Today.ToString("MMM-dd-yyyy")
        ' Label6.Text = DateTime.Today.ToString("MMM")

        
    End Sub

   
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("Vmonth") = DropDownList1.Text
        
        GridView1.Visible = True
        'If Session("Vmonth") = "April" Then
        'GridView1.Visible = True
        ' End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("summaryreport.aspx")
    End Sub
End Class
