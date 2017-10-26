Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
'Imports System.Web.Mail
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.Char

Imports System.Globalization

Partial Class emailpip
    Inherits System.Web.UI.Page

    Dim cmd As SqlCommand
    Dim com As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        'Dim SmtpServer As String = ConfigurationManager.AppSettings("App_Mail_Server")
        'Dim SmtpServer As String = "sa9fi011.kao-phil.com"
        ' Provide the SMTP server name
        Dim strFrom As String = txtFrom.Text
        Dim strTo As String = txtTo.Text
        'Dim strCC As String = TextBox1.Text
        ' Dim strBCC As String = "cde5@pqr3.com,cdew@pqrw.com"
        Dim strPeriority As String = "High"
        ' Dim strAttachment As String = "C:\parent screen.jpg,C:\Print Screen.jpg"
        Dim strSubject As String = txtSubject.Text
        Dim strBody As String = txtBody.Text
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
            ' Next


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


        Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='user.aspx';}</script>")


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtFrom.Text = "pipadmin@kao-phil.com"
        TextBox1.Text = Session("empid")


        GET_EMAIL()

        txtBody.Text = "Your account is already been verified" & vbNewLine & "You can now logon using your username and password." & vbNewLine & "Username:" + TextBox2.Text & vbNewLine & "Password:" + TextBox3.Text & vbNewLine & vbNewLine & vbNewLine & "Note: Do Not Reply on this email.Thank You!"






    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("user.aspx")
    End Sub
    Public Sub GET_EMAIL()

        con.Open()
        str = ("select * from tbl_employeerecord  where empid ='" + TextBox1.Text + "'")
        cmd = New SqlCommand(str, con)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            'MessageBox("You have successfully login.")

            txtTo.Text = dr("email").ToString()
            TextBox2.Text = dr("empusername").ToString()
            TextBox3.Text = dr("emppassword").ToString()
            '  Session("email") = dr("email").ToString()

        End If
        con.Close()
    End Sub
   
    
End Class
