Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Net.Mail

Imports System.IO

'Imports System.Web.Mail
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text

Imports System.Globalization
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

    Dim st As String = "Data Source=SA9FI014;Initial Catalog=pip_system_02012013;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim str4 As String



        ' If MsgBox("Do you want to update record no.?  " & TextBox4.Text & " ", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
       
        TextBox1.Focus()

        conn.Open()
        str4 = "update pip_data set pip_status1 = '" & "REJECTED" & "'," & _
        "pip_status = '" & "DISAPPROVED" & "'," & _
        "pip_remarks = '" & TextBox1.Text & "' where pip_no = '" & Label10.Text & "' "
        com = New SqlCommand(str4, conn)
        com.ExecuteNonQuery()
        conn.Close()
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly submit thank you...');if(alert){ window.location='user.aspx';}</script>")
        'Response.Redirect("email.aspx")
        'Else
        'do nothing
        'End If
        'Session("pip_no1") = ""
        AUTO_EMAIL_REJECT()

        
    End Sub
    Public Sub AUTO_EMAIL_REJECT()

        Dim strFrom As String = "pipadmin@kao-phil.com"
        'department head 
        Dim strTo As String = Label16.Text
        'proponent of the entry
        'Dim strCC As String = Label16.Text

        ' Dim strBCC As String = "cde5@pqr3.com,cdew@pqrw.com"
        Dim strPeriority As String = "High"
        ' Dim strAttachment As String = "C:\parent screen.jpg,C:\Print Screen.jpg"
        Dim strSubject As String = "1st Level Evaluation REJECTED!"
        Dim strBody As String = "PIP No:" + Label10.Text & vbNewLine & "Proponent:" + Label6.Text & vbNewLine & "Department.:" + Label5.Text & vbNewLine & "Plant:" + Label14.Text & vbNewLine & vbNewLine & vbNewLine & "Note: Do Not Reply on this email.Thank You!"
        Dim IsBodyIsInHTML As Boolean = False


        Try
            'Dim smtp As New SmtpClient("sa9fi011.kao-phil.com")
            Dim smtp As New SmtpClient("mailhub1.sdd.kao.co.jp")
			
            Dim mssg As New MailMessage()
            mssg.From = New MailAddress(strFrom)
            mssg.Subject = strSubject
            mssg.Body = strBody
            mssg.To.Add(New MailAddress(strTo))

            'Adding multiple To Addresses
            'For Each sTo As String In strTo.Split(",".ToCharArray())
            'mssg.[To].Add(sTo)
            'Next


            'Adding multiple CC Addresses
            '  For Each sCC As String In strCC.Split(",".ToCharArray())
            'mssg.CC.Add(sCC)
            ' Next


            'Adding multiple BCC Addresses
            '  For Each sBCC As String In strBCC.Split(",".ToCharArray())
            ' mssg.Bcc.Add(sBCC)
            ' Next


            'Adding multiple BCC Addresses
            ' For Each sAttachment As String In strAttachment.Split(",".ToCharArray())
            '  Dim attachment As New Attachment(sAttachment)
            'mssg.Attachments.Add(attachment)
            '   Next

            Dim mailPeriority As MailPriority = MailPriority.Normal
            Select Case strPeriority
                Case "High"
                    mailPeriority = MailPriority.High
                    Exit Select
                Case "Low"
                    mailPeriority = MailPriority.Low
                    Exit Select
                Case "Normal"
                    mailPeriority = MailPriority.Normal
                    Exit Select
            End Select
            mssg.Priority = mailPeriority

            mssg.BodyEncoding = System.Text.Encoding.[Default]
            mssg.SubjectEncoding = System.Text.Encoding.[Default]
            mssg.IsBodyHtml = IsBodyIsInHTML
            smtp.Send(mssg)
            'trach the exception and write in the log. might be Main Addresses contains non mail id formats.
        Catch ex As Exception
        End Try

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim str4 As String
       
        'TextBox2.Focus()
      
        conn.Open()
        str4 = "update pip_data set pip_status1 = '" & "ACCEPTED" & "'," & _
        "pip_remarks = '" & TextBox1.Text & "' where pip_no = '" & Label10.Text & "' "
        com = New SqlCommand(str4, conn)
        com.ExecuteNonQuery()
        conn.Close()
        Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly Accepted thank you...');if(alert){ window.location='user.aspx';}</script>")
        'Response.Redirect("email.aspx")
        'Else
        'do nothing
        'End If
        'Session("pip_no1") = ""

        AUTO_EMAIL_PROP_2NDEVAL()



    End Sub
    Public Sub AUTO_EMAIL_PROP_2NDEVAL()

        Dim strFrom As String = "pipadmin@kao-phil.com"
        'department head 
        Dim strTo As String = Label9.Text
        'proponent of the entry
        Dim strCC As String = Label16.Text

        ' Dim strBCC As String = "cde5@pqr3.com,cdew@pqrw.com"
        Dim strPeriority As String = "High"
        ' Dim strAttachment As String = "C:\parent screen.jpg,C:\Print Screen.jpg"
        Dim strSubject As String = "1st Level Evaluation APPROVED!"
        Dim strBody As String = "PIP No:" + Label10.Text & vbNewLine & "Proponent:" + Label6.Text & vbNewLine & "Department.:" + Label5.Text & vbNewLine & "Plant:" + Label14.Text & vbNewLine & vbNewLine & vbNewLine & vbNewLine & "Note: Do Not Reply on this email.Thank You!"
        Dim IsBodyIsInHTML As Boolean = False


        Try
           'Dim smtp As New SmtpClient("sa9fi011.kao-phil.com")
            Dim smtp As New SmtpClient("mailhub1.sdd.kao.co.jp")
            Dim mssg As New MailMessage()
            mssg.From = New MailAddress(strFrom)
            mssg.Subject = strSubject
            mssg.Body = strBody
            mssg.To.Add(New MailAddress(strTo))

            'Adding multiple To Addresses
            For Each sTo As String In strTo.Split(",".ToCharArray())
                mssg.[To].Add(sTo)
            Next


            'Adding multiple CC Addresses
            For Each sCC As String In strCC.Split(",".ToCharArray())
                mssg.CC.Add(sCC)
            Next


            'Adding multiple BCC Addresses
            '  For Each sBCC As String In strBCC.Split(",".ToCharArray())
            ' mssg.Bcc.Add(sBCC)
            ' Next


            'Adding multiple BCC Addresses
            ' For Each sAttachment As String In strAttachment.Split(",".ToCharArray())
            '  Dim attachment As New Attachment(sAttachment)
            'mssg.Attachments.Add(attachment)
            '   Next

            Dim mailPeriority As MailPriority = MailPriority.Normal
            Select Case strPeriority
                Case "High"
                    mailPeriority = MailPriority.High
                    Exit Select
                Case "Low"
                    mailPeriority = MailPriority.Low
                    Exit Select
                Case "Normal"
                    mailPeriority = MailPriority.Normal
                    Exit Select
            End Select
            mssg.Priority = mailPeriority

            mssg.BodyEncoding = System.Text.Encoding.[Default]
            mssg.SubjectEncoding = System.Text.Encoding.[Default]
            mssg.IsBodyHtml = IsBodyIsInHTML
            smtp.Send(mssg)
            'trach the exception and write in the log. might be Main Addresses contains non mail id formats.
        Catch ex As Exception
        End Try


    End Sub

    Private Sub showrecordfile()
        conn.Open()

        str = ("select pip_department,pip_no, pip_loginid,pip_suggest,pip_savings,pip_status,pip_remarks,pip_reason,pip_date,pip_time,pip_recordno,pip_plant,pip_area from pip_data where pip_no ='" & Session("pip_no") & "'")
        cmd = New SqlCommand(Str, conn)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            Label10.Text = dr("pip_no").ToString()
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
            Label3.Text = dr("pip_recordno").ToString()


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
        con_dept_head()

    End Sub
    Public Sub con_dept_head()

        conn.Open()
        str = ("select department,depthead from tbl_department where department ='" + Label5.Text + "'")
        cmd = New SqlCommand(str, conn)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            'MessageBox("You have successfully login.")

            Label9.Text = dr("depthead").ToString()
           

        End If
        conn.Close()


    End Sub
    Public Sub AUTO_EMAIL()

        Dim strFrom As String = "pipadmin@kao-phil.com"
        Dim strTo As String = Label16.Text
        'Dim strCC As String = TextBox1.Text
        ' Dim strBCC As String = "cde5@pqr3.com,cdew@pqrw.com"
        Dim strPeriority As String = "High"
        ' Dim strAttachment As String = "C:\parent screen.jpg,C:\Print Screen.jpg"
        Dim strSubject As String = "PIP Entry 1st Evaluation"
        Dim strBody As String = "Your PIP Entry had been 1st evaluated!." & vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine & "Note: Do Not Reply on this email.Thank You!"
        Dim IsBodyIsInHTML As Boolean = False


        Try
           ' Dim smtp As New SmtpClient("sa9fi011.kao-phil.com")
            Dim smtp As New SmtpClient("mailhub1.sdd.kao.co.jp")
            Dim mssg As New MailMessage()
            mssg.From = New MailAddress(strFrom)
            mssg.Subject = strSubject
            mssg.Body = strBody
            mssg.To.Add(New MailAddress(strTo))

            'Adding multiple To Addresses
            For Each sTo As String In strTo.Split(",".ToCharArray())
                mssg.[To].Add(sTo)
            Next


            'Adding multiple CC Addresses
            ' For Each sCC As String In strCC.Split(",".ToCharArray())
            '  mssg.CC.Add(sCC)
            '  Next


            'Adding multiple BCC Addresses
            '  For Each sBCC As String In strBCC.Split(",".ToCharArray())
            ' mssg.Bcc.Add(sBCC)
            ' Next


            'Adding multiple BCC Addresses
            ' For Each sAttachment As String In strAttachment.Split(",".ToCharArray())
            '  Dim attachment As New Attachment(sAttachment)
            'mssg.Attachments.Add(attachment)
            '   Next

            Dim mailPeriority As MailPriority = MailPriority.Normal
            Select Case strPeriority
                Case "High"
                    mailPeriority = MailPriority.High
                    Exit Select
                Case "Low"
                    mailPeriority = MailPriority.Low
                    Exit Select
                Case "Normal"
                    mailPeriority = MailPriority.Normal
                    Exit Select
            End Select
            mssg.Priority = mailPeriority

            mssg.BodyEncoding = System.Text.Encoding.[Default]
            mssg.SubjectEncoding = System.Text.Encoding.[Default]
            mssg.IsBodyHtml = IsBodyIsInHTML
            smtp.Send(mssg)
            'trach the exception and write in the log. might be Main Addresses contains non mail id formats.
        Catch ex As Exception
        End Try




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

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("printsuggest.aspx")
    End Sub
End Class
