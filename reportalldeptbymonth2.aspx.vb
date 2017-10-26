Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Imports System.Configuration
Imports System.IO

Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts

Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser


Partial Class reportalldeptbymonth2
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)


    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        'Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        ' Session("pip_no") = GridView1.DataKeys(IntIndex).Value.ToString()

        'If e.CommandName = "View" Then
        'Response.Redirect("searchallapprovview.aspx")
        ' End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("summaryreport.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("emplname")
        Label9.Text = Session("name")
        Label10.Text = Session("emplevel")
        reportallbymonth()
        'Label1.Text = Session("month")
        Label7.Text = DateTime.Today.ToString("MMM")
        Label8.Text = DateTime.Today.ToString("yyyy")
    End Sub

    Private Sub reportallbymonth()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        Label7.Text = DateTime.Today.ToString("MMM")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_month  = '" & Label7.Text & "' AND pip_status != 'PENDING'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            Label6.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    

    Public Overloads Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    End Sub






  
End Class
