Imports System.Data.SqlClient
Imports System.IO
Imports System.Data

Partial Class ViewImage
    Inherits System.Web.UI.Page


    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim str As String

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("removeimage.aspx")

    End Sub

    Public Sub imageshowfile()

        conn.Open()
        str = "select imageid ,imageName, ImageURL, ImageOwner,Imagedate from tbl_image where ImageID = '" & Session("imageno") & "'"
        com = New SqlCommand(str, conn)
        Dim reader As Data.SqlClient.SqlDataReader
        reader = com.ExecuteReader()
        Image1.ImageUrl = "~/Images/kao_logo.JPG"

        While reader.Read

            Label1.Text = reader("ImageName")
            Image1.ImageUrl = "~/images/" + reader("ImageName")
            Label2.Text = Image1.ImageUrl


        End While
        conn.Close()
        com.Dispose()

    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            '   TextBox4.Text = Session("pip_no")

        End If
        imageshowfile()

    End Sub
End Class
