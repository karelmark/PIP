Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim cmd As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim st As String = "Data Source=SA9FI014;Initial Catalog=pip_system_02012013;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)

   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      

    End Sub

    

    
End Class
