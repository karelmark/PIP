Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Partial Class approvpage
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
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
            Response.Redirect("searchallapprovview.aspx")
        
        End If
    End Sub

  

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        allapprov()
    End Sub
    Public Sub allapprov()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status  ='APPROVED'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton3.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub



   

 

End Class
