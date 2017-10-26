
Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class evaluatevalidrec
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


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim str4 As String



        ' If MsgBox("Do you want to update record no.?  " & TextBox4.Text & " ", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
       
        TextBox1.Focus()

        conn.Open()
        str4 = "update pip_data set pip_status = '" & "DISAPPROVED" & "'," & _
        "pip_remarks = '" & TextBox1.Text & "'," & _
        "pip_reason = '" & TextBox2.Text & "'," & _
        "pip_approvedby = '" & Session("name") & "'," & _
        "pip_dateapproved = '" & Now.ToShortDateString & "' where pip_no = '" & Label3.Text & "' "
        com = New SqlCommand(str4, conn)
        com.ExecuteNonQuery()
        conn.Close()
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly DisApproved thank you...You can email now..');if(alert){ window.location='email.aspx';}</script>")
        'Response.Redirect("email.aspx")
        'Else
        'do nothing
        'End If
        'Session("pip_no1") = ""
        

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim str4 As String
       
        TextBox2.Focus()
      
        conn.Open()
        str4 = "update pip_data set pip_status = '" & "APPROVED" & "'," & _
        "pip_remarks = '" & TextBox1.Text & "'," & _
        "pip_reason = '" & TextBox2.Text & "'," & _
        "pip_approvedby = '" & Session("name") & "'," & _
        "pip_dateapproved = '" & Now.ToShortDateString & "' where pip_no = '" & Label3.Text & "' "
        com = New SqlCommand(str4, conn)
        com.ExecuteNonQuery()
        conn.Close()
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly Approved thank you...You can email now..');if(alert){ window.location='email.aspx';}</script>")
        'Response.Redirect("email.aspx")
        'Else
        'do nothing
        'End If
        'Session("pip_no1") = ""





    End Sub
    Private Sub showrecordfile()
        conn.Open()

        str = ("select pip_department,pip_no, pip_loginid,pip_suggest,pip_savings,pip_status,pip_remarks,pip_reason,convert(varchar(8),pip_date,1) as pip_date,pip_time,pip_recordno,pip_plant,pip_area from pip_data where pip_no ='" & Session("pip_no") & "'")
        cmd = New SqlCommand(Str, conn)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            Label3.Text = dr("pip_no").ToString()
            Label6.Text = dr("pip_loginid").ToString()
            Label5.Text = dr("pip_department").ToString()
            label8.Text = dr("pip_suggest").ToString()
            Label14.Text = dr("pip_plant").ToString()
            Label15.Text = dr("pip_area").ToString()


            TextBox3.Text = dr("pip_savings").ToString()
            ' TextBox6.Text = dr("pip_status").ToString()
            'TextBox7.Text = dr("pip_remarks").ToString()
            ' TextBox8.Text = dr("pip_reason").ToString()
            Label7.Text = dr("pip_date").ToString()
            'TextBox10.Text = dr("pip_time").ToString()
            Label10.Text = dr("pip_recordno").ToString()


        End If
        conn.Close()
        cmd.Dispose()
        Dim x1 As String


        x1 = "piprecord"
        Session("imagepipno") = Label10.Text
        Session("strImageControl") = x1

    End Sub





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        TextBox1.Focus()

        If Not IsPostBack Then
            showrecordfile()
        End If
        If Label4.Text = "" Then
            Label4.Visible = False
            Label11.Visible = False
        Else
            Label4.Visible = True
            Label11.Visible = True
            Label4.Text = Session("emplname")
            Label13.Text = Session("name")
            Label12.Text = Session("emplevel")
        End If



        conn.Open()
        str = ("select * from tbl_employeerecord  where fullname ='" + Label6.Text + "'")
        cmd = New SqlCommand(str, conn)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            'MessageBox("You have successfully login.")

            Label16.Text = dr("email").ToString()
            Session("email") = dr("email").ToString()

        End If
        conn.Close()

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim str4 As String

       
        TextBox1.Focus()


        conn.Open()
        str4 = "update pip_data set pip_status = '" & "FOR STUDY" & "'," & _
        "pip_remarks = '" & TextBox1.Text & "'," & _
        "pip_reason = '" & TextBox2.Text & "'," & _
        "pip_approvedby = '" & Session("name") & "'," & _
        "pip_dateapproved = '" & Now.ToShortDateString & "' where pip_no = '" & Label3.Text & "' "
        com = New SqlCommand(str4, conn)
        com.ExecuteNonQuery()
        conn.Close()
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successful thank you...You can email now..');if(alert){ window.location='email.aspx';}</script>")
        'Response.Redirect("email.aspx")
        'Else
        'do nothing
        'End If
        'Session("pip_no1") = ""




        Session.Abandon()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("allpendingadmin.aspx")
        Session.Abandon()
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
