Imports System.Char
Imports System.Data.SqlClient
Imports System.Data



Partial Class _Default

    Inherits System.Web.UI.Page



    ' Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)

    Private Sub MessageBox(ByVal msg As String)
        ' define a javascript alertbox containing
        ' the string passed in as argument

        ' create a new label
        Dim lbl As New Label()

        ' add the javascript to fire an alertbox to the label and
        ' add the string argument passed to the subroutine as the
        ' message payload for the alertbox
        lbl.Text = "<script language='javascript'>" & Environment.NewLine & _
                   "window.alert('" + msg + "')</script>"

        ' add the label to the page to display the alertbox
        Page.Controls.Add(lbl)
    End Sub


    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        con.Open()


        Dim xstatus As String
        xstatus = "PASSED"
        str = ("select * from tbl_employeerecord  where empusername ='" + TextBox5.Text & "' and empPassword ='" + TextBox1.Text & "' and empstatus = '" & xstatus & "'")
        cmd = New SqlCommand(str, con)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            'MessageBox("You have successfully login.")
            Session("name") = dr("empUsername").ToString()
            Session("emplname") = dr("emplname").ToString() + ", " + dr("empfname").ToString() + " " + dr("empmi").ToString()
            ' Session("empfname") = dr("empfname").ToString()
            Session("x1") = 0

            Response.Redirect("mainform.aspx")


        Else

            Label1.Text = "Invalid user"

        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '    TextBox2.Text = Now.ToLongTimeString
        '    TextBox3.Text = Now.ToShortDateString
        TextBox5.Focus()

    End Sub


    


End Class
