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
        Label6.Text = DateTime.Now.ToString("yyyy")
        LinkButton1.Text = DateTime.Today.ToString("MMM")
        LinkButton2.Text = DateTime.Today.ToString("MMM")
        Session("Year") = Label6.Text
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        'Dim mydate1 = LinkButton1.Text
        ' Dim mydate2 As Date = TextBox2.Text

        Session("VRmonth") = LinkButton1.Text
        Response.Redirect("reportalldeptbymonth2.aspx")
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("VRmonth") = LinkButton1.Text
        Response.Redirect("reportalldeptbymonth2.aspx")
       
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click

        Response.Redirect("bymonthbydept.aspx")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Response.Redirect("totalperperson.aspx")
    End Sub
End Class
