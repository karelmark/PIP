
Partial Class evaluatevalid
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        Session("pip_no") = GridView1.DataKeys(IntIndex).Value.ToString()

        If e.CommandName = "View" Then
            Response.Redirect("searchallapprovview.aspx")
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("searchallapprov.aspx")
    End Sub
End Class
