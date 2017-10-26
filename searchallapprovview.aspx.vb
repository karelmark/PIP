Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Partial Class viewapprovpage
    Inherits System.Web.UI.Page

    Dim cmd As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con.Open()

        str = ("select pip_department,pip_no, pip_loginid,pip_suggest,pip_savings,pip_status1,pip_status2,pip_status,pip_remarks,pip_remarks2,pip_reason,convert(varchar(8),pip_date,1) as pip_date,pip_time,pip_recordno,pip_plant,pip_area from pip_data where pip_no ='" & Session("pip_no") & "'")
        cmd = New SqlCommand(str, con)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            TextBox1.Text = dr("pip_no").ToString()
            TextBox2.Text = dr("pip_loginid").ToString()
            TextBox3.Text = dr("pip_department").ToString()
            TextBox4.Text = dr("pip_suggest").ToString()
            TextBox5.Text = dr("pip_savings").ToString()
            TextBox6.Text = dr("pip_status1").ToString()
            TextBox7.Text = dr("pip_remarks").ToString()
            TextBox8.Text = dr("pip_status2").ToString()
            TextBox9.Text = dr("pip_date").ToString()
            TextBox10.Text = dr("pip_time").ToString()
            TextBox11.Text = dr("pip_recordno").ToString()
            TextBox12.Text = dr("pip_plant").ToString()
            TextBox13.Text = dr("pip_area").ToString()
            TextBox14.Text = dr("pip_remarks2").ToString()
            TextBox15.Text = dr("pip_status").ToString()
            TextBox16.Text = dr("pip_reason").ToString()




            Dim x1 As String


            x1 = "piprecord"
            Session("imagepipno") = TextBox11.Text
            Session("strImageControl") = x1
        End If
        con.Close()
        cmd.Dispose()

    End Sub

   

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("searchapprovpage.aspx")
       

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
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
End Class
