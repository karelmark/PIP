Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Imports System.web.Mail

Partial Class sendmail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("emplname")
        Label4.Text = Session("name")
        Label5.Text = Session("emplevel")
        Label1.Text = DateTime.Today.ToString("MMM-dd-yyyy")

    End Sub



    
End Class
