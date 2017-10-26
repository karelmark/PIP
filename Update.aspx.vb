Imports System.Data.SqlClient
Imports System.IO
Imports System.Data



Partial Class Update
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
        'Dim str As String


        ' conn.Open()
        ' str = "insert into tbl_employeerecord (empdate, emptime) values( '" & Now.ToShortDateString & "','" & Now.ToShortTimeString & "')"
        ' com = New SqlCommand(Str, conn)
        ' com.ExecuteNonQuery()

        Response.Redirect("search_view.aspx")

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Me.TextBox1.Text = ""

        Me.TextBox5.Text = ""

        Me.TextBox7.Text = ""
        Image1.ImageUrl = "~/Images/kao_logo.JPG"
        Image2.ImageUrl = "~/Images/kao_logo.JPG"
        Image3.ImageUrl = "~/Images/kao_logo.JPG"
        Image4.ImageUrl = "~/Images/kao_logo.JPG"


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'conn.Open()
        ' Dim str As String
        ' Dim str2 As String

        ' If Not IsPostBack Then

        'TextBox11.Text = Session("pipno1")
        TextBox4.Text = Session("pipno1")
        'End If

        TextBox1.Text = Session("emplname")
        Me.TextBox3.Text = Date.Now.Date

        ' str = "select pip_no, pip_loginid, pip_department as xno from pip_data"
        ' com = New Data.SqlClient.SqlCommand(str, conn)
        ' com2 = New Data.SqlClient.SqlCommand(str, conn)

        'Dim reader As Data.SqlClient.SqlDataReader
        'reader = com.ExecuteReader

        'Dim s As String
        'While reader.Read
        's = reader.Item(0).ToString


        ' Me.TextBox4.Text = s + 1

        ' End While

        '  If TextBox4.Text = 0 Then
        'TextBox4.Text = 1
        '  End If
        '   reader.Close()



        ' Dim da As New Data.SqlClient.SqlDataAdapter(com2)
        ' Dim ds As New Data.DataSet
        ' da.Fill(ds)
        ' Me.GridView1.DataSource = ds.Tables(0).DefaultView
        ' Me.GridView1.DataBind()
        ' conn.Close()
        ' com.Dispose()






        Image1.ImageUrl = "~/Images/kao_logo.JPG"
        Image2.ImageUrl = "~/Images/kao_logo.JPG"
        Image3.ImageUrl = "~/Images/kao_logo.JPG"
        Image4.ImageUrl = "~/Images/kao_logo.JPG"

        If Not IsPostBack Then
            showrecordfile()
        End If
     
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim str3 As String

        

        ' If MsgBox("Do you want to update record no.?  " & TextBox4.Text & " ", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then

     


        If Not TextBox5.Text = "" Or Not TextBox7.Text = "" Then
            conn.Close()

            conn.Open()
            str3 = "update pip_data set pip_department = '" & dplist.Text & "'," & _
            "pip_suggest = '" & TextBox5.Text & "'," & _
            "pip_savings = '" & TextBox7.Text & "' where pip_no = '" & TextBox4.Text & "' "
            com = New SqlCommand(str3, conn)
            com.ExecuteNonQuery()
            conn.Close()
            Response.Redirect("mainform.aspx")
            'Else
            'do nothing
            'End If
            Session("pip_no1") = ""
        Else
            Label3.Text = "Please complete requuired fields."
            If TextBox5.Text = "" Then
                TextBox5.Focus()
            ElseIf TextBox7.Text = "" Then
                TextBox7.Focus()

            End If

        End If

    End Sub


    Public Sub fnSaveFile(ByVal FileName As String, ByVal FileURL As String)

        Dim str As String
        Dim tdate As Date


        tdate = Now.ToShortDateString

        conn.Close()
        conn.Open()
        str = "insert into tbl_Image(imageName, ImageURL, ImageOwner,Imagedate, Imagepipno, imagecounter) values('" & FileName & "','" & FileURL & "','" & UCase(Session("name")) & "', '" & tdate & "','" & TextBox4.Text & "','" & Session("x1") & "')"
        com = New SqlCommand(str, conn)
        com.ExecuteNonQuery()

        MsgBox("file save")



        conn.Close()
        com.Dispose()


    End Sub
    Public Sub fnShowFile()

        Dim str As String
        Dim xcount As Long

        xcount = 1

        '#######################################################
        conn.Close()

        conn.Open()
        str = "select imageid ,imageName, ImageURL, ImageOwner,Imagedate from tbl_image where imagedate = '" & Now.ToShortDateString & "' and imageowner = '" & Session("name") & "' and imagepipno = '" & TextBox11.Text & "'"
        com = New SqlCommand(str, conn)
        Dim reader As Data.SqlClient.SqlDataReader
        reader = com.ExecuteReader()
        Image1.ImageUrl = "~/Images/kao_logo.JPG"
        Image2.ImageUrl = "~/Images/kao_logo.JPG"
        Image3.ImageUrl = "~/Images/kao_logo.JPG"
        Image4.ImageUrl = "~/Images/kao_logo.JPG"


        While reader.Read




            If xcount = 1 Then
                Label1.Text = reader("ImageName")

                Image1.ImageUrl = "~/images/" + reader("ImageName")
                Label2.Text = Image1.ImageUrl
            ElseIf xcount = 2 Then

                Image2.ImageUrl = "~/images/" + reader("ImageName")
            ElseIf xcount = 3 Then

                Image3.ImageUrl = "~/images/" + reader("ImageName")
            ElseIf xcount = 4 Then
                Image4.ImageUrl = "~/images/" + reader("ImageName")

            End If
            xcount = xcount + 1

        End While
        conn.Close()
        com.Dispose()


    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        fnShowFile()
    End Sub







    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Session("pip_no") = TextBox11.Text
        Session("strimagecontrol") = "pipupdate"

        Response.Redirect("removeimage.aspx")


    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If FileUpload1.HasFile Then
            'TextBox8.Text = Session("x1") + 1
            'Session("x1") = TextBox8.Text
            FileUpload1.SaveAs(IO.Path.Combine(Server.MapPath("Images"), FileUpload1.FileName))
            fnSaveFile(IO.Path.GetFileName(FileUpload1.FileName), IO.Path.Combine(Server.MapPath("Images"), FileUpload1.FileName))
        End If
    End Sub

    Private Sub showrecordfile()
        conn.Open()

        str = ("select pip_department,pip_no, pip_loginid,pip_suggest,pip_savings,pip_status,pip_remarks,pip_reason,convert(varchar(8),pip_date,1) as pip_date,pip_time,pip_recordno from pip_data where pip_no ='" & Session("pipno1") & "'")
        cmd = New SqlCommand(Str, conn)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            ' TextBox1.Text = dr("pip_no").ToString()
            TextBox1.Text = dr("pip_loginid").ToString()
            dplist.Text = dr("pip_department").ToString()
            TextBox5.Text = dr("pip_suggest").ToString()
            TextBox7.Text = FormatNumber(dr("pip_savings").ToString())
            ' TextBox6.Text = dr("pip_status").ToString()
            'TextBox7.Text = dr("pip_remarks").ToString()
            ' TextBox8.Text = dr("pip_reason").ToString()
            TextBox3.Text = dr("pip_date").ToString()
            'TextBox10.Text = dr("pip_time").ToString()
            TextBox11.Text = dr("pip_recordno").ToString()

        End If
        conn.Close()
        cmd.Dispose()
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Response.Redirect("mainform.aspx")

    End Sub
End Class
