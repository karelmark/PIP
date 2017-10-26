Imports System.Data.SqlClient
Imports System.IO
Imports System.Data

Partial Class pip_page
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("emplname")
        TextBox1.Text = Session("emplname")
        TextBox10.Text = Session("empdept")
        TextBox2.Text = DateTime.Today.ToString("MMM-dd-yyyy")
        TextBox6.Text = DateTime.Today.ToString("MMM")
        TextBox9.Text = DateTime.Today.ToString("yyyy")


        

        ' Else
        ' Button7.Enabled = False
        ' TextBox5.Enabled = True
        ' FileUpload1.Enabled = True
        ' TextBox7.Enabled = True
        Button2.Enabled = True





    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim str As String
        If TextBox1.Text = "" Or TextBox10.Text = "" Or TextBox5.Text = "" Or TextBox7.Text = "" And dplist.Text = "null" And DropDownList1.Text = "null" Then
            Label4.Text = "Please complete required fields."
            Label4.Visible = True
            If TextBox5.Text = "" Then
                TextBox5.Focus()
            ElseIf TextBox7.Text = "" Then
                TextBox7.Focus()

            End If
        Else


            conn.Close()

            conn.Open()
            str = "insert into pip_data(pip_loginid,pip_department,pip_suggest,pip_savings,pip_date,pip_time,pip_status1,pip_recordno,pip_plant,pip_area,pip_month,pip_year) values('" & TextBox1.Text & "','" & dplist.Text & "','" & TextBox5.Text & "','" & TextBox7.Text & "','" & Now.ToShortDateString & "','" & Now.ToShortTimeString & "','" & "PENDING" & "','" & TextBox4.Text & "','" & DropDownList1.Text & "','" & TextBox3.Text & "','" & TextBox6.Text & "','" & TextBox9.Text & "')"
            com = New SqlCommand(str, conn)
            com.ExecuteNonQuery()

            ' If MsgBox("Do you want to save record?", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
            ''Label4.Text = "Successfully submit entry."
            'Response.Redirect("pip_page.aspx")
            Page.RegisterStartupScript("UserMsg", "<script>alert('Successfuly sent thank you...');if(alert){ window.location='user.aspx';}</script>")
            Button2.Enabled = False

            conn.Close()
            'Else
            'do nothing
            'End If
            Session("pip_no") = ""

        End If

    End Sub
    Public Sub fnSaveFile(ByVal FileName As String, ByVal FileURL As String)

        Dim str As String
        Dim tdate As Date


        tdate = Now.ToShortDateString

        conn.Close()
        conn.Open()
        str = "insert into tbl_Image(imageName, ImageURL, ImageOwner,Imagedate, Imagepipno, imagecounter) values('" & FileName & "','" & FileURL & "','" & TextBox1.Text & "', '" & tdate & "','" & TextBox4.Text & "','" & Session("x1") & "')"
        com = New SqlCommand(str, conn)
        com.ExecuteNonQuery()

        'MsgBox("file save")
        Label5.Text = "File upload complete"



        conn.Close()
        com.Dispose()


    End Sub
   


   

  

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If FileUpload1.HasFile Then
            TextBox8.Text = Session("x1") + 1
            Session("x1") = TextBox8.Text
            FileUpload1.SaveAs(IO.Path.Combine(Server.MapPath("Images"), FileUpload1.FileName))
            fnSaveFile(IO.Path.GetFileName(FileUpload1.FileName), IO.Path.Combine(Server.MapPath("Images"), FileUpload1.FileName))
        End If

    End Sub
    Public Sub NumberFormat(ByVal Text As TextBox)
        If Len(Text.Text) > 0 Then
            Text.Text = FormatNumber(CDbl(Text.Text), 0)
            Dim x As Integer = Text.ToString


        End If
    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("user.aspx")
    End Sub

    Protected Sub TextBox4_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox4.Load
        conn.Open()
        Dim temp As String
        Dim dr As SqlDataReader
        Try
            Dim sql As String = "SELECT MAX(pip_no) 'pip_data' FROM pip_data "
            Dim comm As SqlCommand = New SqlCommand(sql, conn)
            dr = comm.ExecuteReader
            If dr.HasRows Then
                While (dr.Read())
                    temp = dr.Item("pip_data") + 1
                End While
            End If
            dr.Close()
        Catch ex As Exception

        End Try
        conn.Close()
        TextBox4.Text = String.Concat(temp)


    End Sub

    
    
    
   
End Class
