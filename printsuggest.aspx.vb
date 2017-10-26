Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class printsuggest
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
    Dim con As New Data.SqlClient.SqlConnection(st)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()

        str = ("select pip_department,pip_no,pip_suggest,pip_savings,pip_date from pip_data where pip_no ='" & Session("pip_no") & "'")
        cmd = New SqlCommand(str, con)
        dr = cmd.ExecuteReader()

        If dr.Read() = True Then

            lblpip.Text = dr("pip_no").ToString()

            lbldeptsec.Text = dr("pip_department").ToString()
            lblsuggestion.Text = dr("pip_suggest").ToString()
            lblpotential.Text = dr("pip_savings").ToString()



            lbldateentry.Text = dr("pip_date").ToString()

            'TextBox11.Text = dr("pip_recordno").ToString()
            ' TextBox12.Text = dr("pip_plant").ToString()


        End If
        lblinnov.Text = "Innovative Suggestion Entry Form"
        lblpipno.Text = "PIP Entry No.  :"
        lblproponent.Text = "Name of Proponent  :"
        lblprop.Text = Session("emplname")
        lbldept.Text = "Department/Section  :"
        lbldate.Text = "Date Entry Submitted :"
        lblsuggest.Text = "What is your suggestion?"
        lblimg.Text = "Drawing (if necessary)"
        lblimgattach.Text = "See attached"
        lblsavings.Text = "Potential Savings"




    End Sub

    
End Class
