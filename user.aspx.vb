Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Partial Class mainpage
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim st As String = "Data Source=SA9FI014;Initial Catalog=pip_system_02012013;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)

    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        



        Label2.Text = Session("emplname")
        Label4.Text = Session("name")
        Label1.Text = Session("emplevel")
        Label9.Text = Session("emp_email")
        Label16.Text = Session("eva_level")
        Label17.Text = Session("empdept")

       

        If Label1.Text = "1" And Label16.Text = "0" Then

            Label6.Visible = True
            Label6.Text = "INNOVATION PROGRAM"
            Label7.Visible = False
            ImageButton1.Visible = True
            ImageButton3.Visible = False
            ImageButton4.Visible = False
            LinkButton5.Visible = True
            Label5.Text = "FOR STUDY"
            Label5.Visible = True
            Label10.Text = "PENDING"
            Label11.Text = "APPROVED"
            Label12.Text = "DISAPPROVED"
            Label16.Visible = False

            pending()
            approv()
            disapprov()
            for_study_prop()

        ElseIf Label1.Text = "1" And Label16.Text = "2" Then

            Label6.Visible = True
            Label6.Text = "INNOVATION PROGRAM"
            Label7.Visible = False
            ImageButton1.Visible = True
            ImageButton3.Visible = False
            ImageButton4.Visible = False
            'Image6.Visible = True
            LinkButton5.Visible = True
            Label5.Text = "FOR STUDY"
            Label5.Visible = True
            Label10.Text = "PENDING"
            Label11.Text = "APPROVED"
            Label12.Text = "DISAPPROVED"
            Label16.Visible = False
            Label15.Visible = True
            LinkButton12.Visible = True
            Image2.Visible = True
            pending()
            approv()
            disapprov()
            for_study_prop()
            specific_to_depthead()

        ElseIf Label1.Text = "1" And Label16.Text = "1" Then

            Label6.Visible = True
            Label6.Text = "INNOVATION PROGRAM"
            'Label7.Visible = True
            'Label7.Text = "Summary Reports"
            Label10.Visible = True
            LinkButton17.Visible = True
            ImageButton1.Visible = True
            ImageButton3.Visible = False
            ImageButton4.Visible = False
            LinkButton5.Visible = True
            Label5.Text = "FOR STUDY"
            Label5.Visible = True
            Label10.Text = "PENDING"
            Label11.Text = "APPROVED"
            Label12.Text = "DISAPPROVED"
            Label16.Visible = False
            Label18.Visible = True
            LinkButton15.Visible = True
            Image3.Visible = True
            Image4.Visible = True
            ImageButton4.Visible = True
            LinkButton16.Visible = True
            Image5.Visible = True
            pending()
            approv()
            disapprov()
            for_study_prop()
            allpending()



            'forstudy()
            ' reject()
        ElseIf Label1.Text = "2" And Label16.Text = "3" Then
            'Label6.Visible = True
            Label7.Visible = True
            ' ImageButton3.Visible = True
            'ImageButton3.Enabled = False
            ImageButton4.Visible = True
            ImageButton1.Visible = False
            LinkButton5.Visible = False

            ' Label6.Text = "Register User"
            Label7.Text = "SUMMARY REPORT"
            Label8.Text = "INNOVATION PROGRAM"
            Label8.Visible = True
            Label10.Text = "FOR APPROVAL"

            Label13.Text = "APPROVED"
            Label14.Text = "DISAPPROVED"
            Label13.Visible = True
            Label14.Visible = True
            LinkButton2.Visible = True
            LinkButton3.Visible = True
            Label11.Visible = False
            Label12.Visible = False
            LinkButton1.Visible = False
            LinkButton6.Visible = False
            Label19.Visible = True
            Label20.Visible = True

            Label5.Text = "FOR STUDY"
            Label5.Visible = True
            FOR_STUDYALL()

            specific_to_depthead()


            'Label9.Visible = True
            ' LinkButton5.Visible = True

            'allpending()
            allapprov()
            alldisapprov()
            forapproval()
            ' accepted2()

        ElseIf Label1.Text = "2" Then
            'Label6.Visible = True
            Label7.Visible = True
            ' ImageButton3.Visible = True
            'ImageButton3.Enabled = False
            ImageButton4.Visible = True
            ImageButton1.Visible = False
            LinkButton5.Visible = False

            ' Label6.Text = "Register User"
            Label7.Text = "SUMMARY REPORT"
            Label8.Text = "INNOVATION PROGRAM"
            Label8.Visible = True
            Label10.Text = "FOR APPROVAL"

            Label13.Text = "APPROVED"
            Label14.Text = "DISAPPROVED"
            Label13.Visible = True
            Label14.Visible = True
            LinkButton2.Visible = True
            LinkButton3.Visible = True
            Label11.Visible = False
            Label12.Visible = False
            LinkButton1.Visible = False
            LinkButton6.Visible = False
            ' Label19.Visible = True
            Label20.Visible = True

            Label5.Text = "FOR STUDY"
            Label5.Visible = True
            FOR_STUDYALL()




            'Label9.Visible = True
            ' LinkButton5.Visible = True

            'allpending()
            allapprov()
            alldisapprov()
            forapproval()
            ' accepted2()


        ElseIf Label1.Text = "3" Then
            ImageButton1.Visible = False
            LinkButton5.Visible = False
            Label6.Visible = True
            Label7.Visible = True
            ImageButton3.Visible = True
            'ImageButton3.Enabled = False
            ImageButton4.Visible = True

            Label6.Text = "User Request"
            Label7.Text = "SUMMARY REPORT"
            Label5.Visible = False
            LinkButton4.Visible = True
            LinkButton11.Visible = True
            LinkButton10.Visible = True
            Image1.Visible = True
            LinkButton13.Visible = True
            LinkButton14.Visible = True


            userrequest()
            comments()
            allusers()

            'Label8.Visible = True
            '  ImageButton1.Enabled = True
            ' Label9.Visible = True
            '  LinkButton5.Visible = True

            ' allpending()
            'allapprov()
            ' alldisapprov()
            Label13.Visible = False
            Label14.Visible = False
            LinkButton2.Visible = False
            LinkButton3.Visible = False
            LinkButton1.Visible = False
            LinkButton6.Visible = False
            LinkButton7.Visible = False
            Label10.Visible = False
            Label11.Visible = False
            Label12.Visible = False

            LinkButton9.Visible = False



        ElseIf Label1.Text = "4" Then
            ImageButton1.Visible = False
            LinkButton5.Visible = False
            ' Label6.Visible = True
            Label7.Visible = True
            ' ImageButton3.Visible = True
            'ImageButton3.Enabled = False
            ImageButton4.Visible = True

            'Label6.Text = "User Request"
            Label7.Text = "SUMMARY REPORT"
            Label8.Text = "INNOVATION PROGRAM"
            Label8.Visible = True

            ' Label9.Visible = True
            ' LinkButton5.Visible = True
            Label10.Visible = False
            LinkButton7.Visible = False

            Label11.Visible = False
            Label12.Visible = False
            Label13.Text = "APPROVED"
            Label14.Text = "DISAPPROVED"
            Label13.Visible = True
            Label14.Visible = True
            LinkButton2.Visible = True
            LinkButton3.Visible = True
            LinkButton1.Visible = False
            LinkButton6.Visible = False
            'userrequest()
            Label18.Visible = True
            LinkButton15.Visible = True
            Image3.Visible = True
            Image5.Visible = True

            Label5.Text = "FOR STUDY"
            Label5.Visible = True
            'alldata()
            allpending()


            'allapprov()
            'alldisapprov()
            ' reject()
            'accepted()
            allapprov()
            alldisapprov()
            FOR_STUDYALL()




        End If

        




    End Sub
    Public Sub comments()

        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_comments"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton11.Text = dr("StatUser").ToString()
        End If
        con.Close()

    End Sub
    Public Sub pending()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status1  ='PENDING' AND pip_loginid ='" & Label2.Text & "'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton7.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub for_study_prop()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status  ='FOR STUDY' AND pip_loginid ='" & Label2.Text & "'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton9.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub FOR_STUDYALL()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status  ='FOR STUDY'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton9.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub reject()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status1  ='REJECTED'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton6.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub accepted()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status2  ='ACCEPTED'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton1.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub accepted2()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status2  ='ACCEPTED'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton7.Text = dr("StatUser").ToString()
        End If
        con.Close()

    End Sub
    Public Sub acceptedincharge()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status1  ='ACCEPTED'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton7.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub approv()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status  ='APPROVED' AND pip_loginid ='" & Label2.Text & "'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton1.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub disapprov()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status  ='DISAPPROVED' AND pip_loginid ='" & Label2.Text & "'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton6.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub allpending()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status1  ='PENDING'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton15.Text = dr("StatUser").ToString()
        End If
        con.Close()
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
            LinkButton2.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub alldisapprov()

        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status  ='DISAPPROVED'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton3.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
   
   
    Public Sub allreject()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status2  ='REJECTED-'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton6.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub allaccepted()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status2  ='ACCEPTED-'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton1.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub forapproval()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status3='ACCEPTED-' or pip_status3 ='REJECTED-' "
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton7.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub userrequest()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM tbl_employeerecord WHERE empstatus='PENDING'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton4.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Public Sub allusers()

        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM tbl_employeerecord"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton14.Text = dr("StatUser").ToString()
        End If
        con.Close()


    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        If Label1.Text = "2" Or Label1.Text = "4" Then
            Response.Redirect("allpendingadmin.aspx")
        ElseIf Label1.Text = "1" Then
            Response.Redirect("allapprovuser.aspx")
        End If
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        If Label1.Text = "2" Or Label1.Text = "4" Or Label1.Text = "5" Then
            Response.Redirect("alldisapprovadmin.aspx")
        ElseIf Label1.Text = "1" Then
            Response.Redirect("allapprovuser.aspx")
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        If Label1.Text = "2" Or Label1.Text = "4" Or Label1.Text = "5" Then
            Response.Redirect("approvpage.aspx")
        ElseIf Label1.Text = "1" Then
            Response.Redirect("alldisapprovuser.aspx")
        End If
    End Sub

    

   

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        'If IsPostBack Then
        If True Then
            Session.Abandon()
        End If

        Session("emplname") = Nothing
        Session("name") = Nothing
        Session("emplevel") = Nothing

        ' End If

        Response.Redirect("Default.aspx")

    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("summaryreport.aspx")
    End Sub


    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("registerpage.aspx")
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        If Label1.Text = "4" Then
            Response.Redirect("allpendingadmin.aspx")
        ElseIf Label1.Text = "5" Then
            Response.Redirect("allacceptedadmin.aspx")
        ElseIf Label1.Text = "2" Then
            Response.Redirect("allfinaladmin.aspx")
        ElseIf Label1.Text = "1" Then
            Response.Redirect("allpendinguser.aspx")

        End If



    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        Response.Redirect("alldisapprovuser.aspx")
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("pip_page.aspx")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Response.Redirect("userrequest.aspx")
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click

        If True Then
            Session.Abandon()
        End If

        Session("emplname") = Nothing
        Session("name") = Nothing
        Session("emplevel") = Nothing

        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click
        If Label1.Text = "2" Or Label1.Text = "3" Or Label1.Text = "4" Or Label1.Text = "5" Then
            Response.Redirect("allforstudyadmin.aspx")
        Else
            Response.Redirect("FORSTUDYPROP.aspx")
        End If

    End Sub

    Protected Sub LinkButton10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton10.Click
        Response.Redirect("pipcomments.aspx")
    End Sub

    Protected Sub LinkButton11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton11.Click
        Response.Redirect("pipcomments.aspx")
    End Sub

    Public Sub specific_to_depthead()

        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        'TextBox16.Text = Session("emplname")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_status1 ='ACCEPTED' and pip_department='" & Label17.Text & "'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            LinkButton12.Text = dr("StatUser").ToString()
        End If
        If LinkButton12.Text = "0" Then

            Image6.Visible = False
            Label15.Visible = False
            Image2.Visible = False
            LinkButton12.Visible = False
        Else
            Image6.Visible = True
            Label15.Visible = True
            Image2.Visible = True
            LinkButton12.Visible = True
        End If
        con.Close()
    End Sub

    Protected Sub LinkButton12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton12.Click

        If LinkButton12.Text = "0" Then
            Page.RegisterStartupScript("UserMsg", "<script>alert('No Data Found.');if(alert){ window.location='user.aspx';}</script>")

        Else
            Response.Redirect("dept-head.aspx")
        End If
    End Sub

    Protected Sub LinkButton13_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton13.Click
        Response.Redirect("user-account.aspx")
    End Sub

    Protected Sub LinkButton14_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton14.Click
        Response.Redirect("user-account.aspx")
    End Sub

    Protected Sub LinkButton15_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton15.Click
        Response.Redirect("allpendingadmin.aspx")
    End Sub

    Protected Sub LinkButton16_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton16.Click
        Response.Redirect("add_old_entry.aspx")
    End Sub

    Protected Sub LinkButton17_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton17.Click
        Response.Redirect("summaryreport.aspx")
    End Sub
End Class
