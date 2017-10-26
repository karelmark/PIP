Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Partial Class allpendingadmin
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim com As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        Session("empid") = GridView1.DataKeys(IntIndex).Value.ToString()

        If e.CommandName = "ACCEPT" Then

            updatestat()



        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("emplname")
        Label4.Text = Session("name")
        Label1.Text = Session("emplevel")


        Label5.Visible = True
    End Sub
    Public Sub updatestat()
        Dim str4 As String

        con.Open()
        str4 = "update tbl_employeerecord set empstatus = '" & "PASSED" & "'WHERE empid = '" & Session("empid") & "'"
        com = New SqlCommand(str4, con)
        com.ExecuteNonQuery()

        con.Close()


        
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly Approved thank you...');if(alert){ window.location='emailpip.aspx';}</script>")
    End Sub

   
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("user.aspx")
    End Sub
   
    
   
End Class
