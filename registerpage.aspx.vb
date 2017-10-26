Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Partial Class registerpage
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If Not IsPostBack Then
            Response.Redirect("Default.aspx")

        Else

            Response.Redirect("Default.aspx")
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox9.Text = "" Or TextBox10.Text = "" Or TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox4.Text = "" Or DropDownList1.SelectedValue = "-1" Or DropDownList2.SelectedValue = "-1" Then
            Label1.Text = "Please complete required fields"
        Else


            Dim str As String


            conn.Open()
            TextBox5.Text = TextBox10.Text.ToString + " " + TextBox11.Text.ToString + "." + " " + TextBox9.Text.ToString
            
			str = "insert into tbl_employeerecord(emplname,empfname,empmi,email,empusername,emppassword,empdate,emptime,empstatus,emplevel,fullname,empdept) values('" & TextBox9.Text & "','" & TextBox10.Text & "','" & TextBox11.Text & "','" & TextBox4.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & Now.ToShortDateString & "','" & Now.ToShortTimeString & "','" & "PENDING" & "','" & DropDownList1.SelectedValue & "','" & TextBox5.Text & "','" & DropDownList2.Text & "')"
            
			com = New SqlCommand(str, conn)
            com.ExecuteNonQuery()

            ' If MsgBox("Your registration has been successful. Do you want to save data?", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
            Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly sent your request.You will recieved email after verification.Thank You.');if(alert){ window.location='Default.aspx';}</script>")
			
            'Response.Redirect("Default.aspx")
            conn.Close()
            com.Dispose()
            'Else
            'do nothing
            'End If

        End If

    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox10.Focus()

    End Sub
End Class
