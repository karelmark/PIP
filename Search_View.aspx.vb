Imports System.Char
Imports System.Data.SqlClient
Imports System.Data


Partial Class Search_View
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim str As String
    Dim ad As SqlDataAdapter
    Dim dr As SqlDataReader

    Dim com As SqlCommand
    Dim com2 As SqlCommand

    Dim st As String = "Data Source=SA9FI013;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim conn As New Data.SqlClient.SqlConnection(st)


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("mainform.aspx")

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        Session("PipNo1") = GridView1.DataKeys(IntIndex).Value.ToString()

        If e.CommandName = "View" Then
            Response.Redirect("View_piprecord.aspx")
        End If

        If e.CommandName = "Update" Then ' wala pa ni nahuman....
            Response.Redirect("Update.aspx")
        End If

        If e.CommandName = "Delete" Then
            DeleteEmpRecord()
        End If
    End Sub


    Private Sub DeleteEmpRecord()
        'If MsgBox("Do you want to delete record?", MsgBoxStyle.YesNo, "Management Information System") = MsgBoxResult.Yes Then
        conn.Open()
        str = "delete from pip_data where pip_no = '" & Session("pipno1") & "'"
        com = New SqlCommand(str, conn)
        com.ExecuteNonQuery()





        Response.Redirect("search_view.aspx")

        conn.Close()
        'Else
        'do nothing
        'End If
        'Label1.Text = "selected record deleted!"
        conn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class
