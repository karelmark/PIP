
Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
'Imports System.Web.Mail
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text



Partial Class email
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("emplname")
        Label4.Text = Session("name")
        Label5.Text = Session("emplevel")
        Label1.Text = DateTime.Today.ToString("MMM-dd-yyyy")
        txtTo.Text = Session("email")
       
    End Sub

   

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        'Dim SmtpServer As String = ConfigurationManager.AppSettings("App_Mail_Server")
        'Dim SmtpServer As String = "sa9fi011.kao-phil.com"
        ' Provide the SMTP server name
        Dim strFrom As String = txtFrom.Text
        ' Dim strTo As String = txtTo.Text
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
            mssg.To.Add(New MailAddress(txtTo.Text))

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
End Class
