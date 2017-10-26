
Partial Class evaluatevalid
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        Session("pip_no") = GridView1.DataKeys(IntIndex).Value.ToString()

        If e.CommandName = "Validate" Then
            Response.Redirect("evaluatevalidrec.aspx")
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("evaluate.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Label2.Text = "" Then
            Label2.Visible = False
            Label3.Visible = False
        Else
            Label2.Visible = True
            Label3.Visible = True
            Label2.Text = Session("emplname")
            Label4.Text = Session("name")
            Label1.Text = Session("emplevel")
        End If

    End Sub
End Class
