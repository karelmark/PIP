Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class View_PIPRecord
    Inherits System.Web.UI.Page



    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim str As String
    Dim cmd As SqlCommand

    
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.Open()

        str = ("select pip_department,pip_no, pip_loginid,pip_suggest,pip_savings,pip_status,pip_remarks,pip_reason,convert(varchar(8),pip_date,1) as pip_date,pip_time,pip_recordno,pip_plant,pip_area from pip_data where pip_no ='" & Session("pipno1") & "'")
        cmd = New SqlCommand(str, conn)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            TextBox1.Text = dr("pip_no").ToString()
            TextBox2.Text = dr("pip_loginid").ToString()
            TextBox3.Text = dr("pip_department").ToString()
            TextBox4.Text = dr("pip_suggest").ToString()
            TextBox5.Text = FormatNumber(dr("pip_savings").ToString())
            TextBox6.Text = dr("pip_status").ToString()
            TextBox7.Text = dr("pip_remarks").ToString()
            TextBox8.Text = dr("pip_reason").ToString()
            TextBox9.Text = dr("pip_date").ToString()
            TextBox10.Text = dr("pip_time").ToString()
            TextBox11.Text = dr("pip_recordno").ToString()
            TextBox12.Text = dr("pip_plant").ToString()
            TextBox13.Text = dr("pip_area").ToString()

        End If
        conn.Close()
        cmd.Dispose()

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("search_view.aspx")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
       

        ' If MsgBox("Do you want to delete record?", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
        conn.Open()
        str = "delete from pip_data where pip_no = '" & Session("pipno1") & "'"
        com = New SqlCommand(str, conn)
        com.ExecuteNonQuery()

        com.Dispose()

        str = "delete from tbl_image where imagepipno = '" & TextBox10.Text & "'"
        com = New SqlCommand(str, conn)
        com.ExecuteNonQuery()

        Response.Redirect("search_view.aspx")

        conn.Close()
        'Else
        'do nothing
        'End If
        'Label1.Text = "selected record deleted!"
        conn.Close()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim x1 As String

        x1 = "piprecord"
        Session("pip_no") = TextBox11.Text
        Session("strImageControl") = x1
        Response.Redirect("removeimage.aspx")

    End Sub
End Class
