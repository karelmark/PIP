Imports System.Char
Imports System.Data.SqlClient
Imports System.Data

Partial Class Register
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If Not IsPostBack Then
            Response.Redirect("login.aspx")

        Else

            Response.Redirect("login.aspx")
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If TextBox8.Text = "" Or TextBox9.Text = "" Or TextBox10.Text = "" Or TextBox1.Text = "" Or TextBox2.Text = "" Then
            Label1.Text = "Please complete required fields"



        Else


            Dim str As String


            conn.Open()
            str = "insert into tbl_employeerecord(empcontrolno, emplname,empfname,empmi,empusername,emppassword,empdate,emptime,empstatus) values('" & TextBox8.Text & "','" & TextBox9.Text & "','" & TextBox10.Text & "','" & TextBox11.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & Now.ToShortDateString & "','" & Now.ToShortTimeString & "','" & "PENDING" & "')"
            com = New SqlCommand(str, conn)
            com.ExecuteNonQuery()

            ' If MsgBox("Your registration has been successful. Do you want to save data?", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
            Response.Redirect("login.aspx")
            conn.Close()
            com.Dispose()
            'Else
            'do nothing
            'End If

        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
