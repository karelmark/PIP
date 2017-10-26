
Partial Class evaluate
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        If Not TextBox1.Text = "" And Not TextBox2.Text = "" Then

            Dim mydate1 As Date = TextBox1.Text
            Dim mydate2 As Date = TextBox2.Text

            Session("VRDATE1") = mydate1.ToShortDateString
            Session("VRDATE2") = mydate2.ToShortDateString
            'Session("VRDATEstatus1") = DropDownList1.Text
            Session("VRDateDept") = DropDownList2.Text

            Response.Redirect("searchallapprovresult.aspx")

        Else
            Label1.Text = "Please complete date filter search."
            'TextBox1.Focus()

        End If
    End Sub

    Protected Sub cal1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cal1.SelectionChanged
        If TextBox1.Text = "" Or Not TextBox1.Text = "" Then
            TextBox1.Text = cal1.SelectedDate
            cal1.Visible = False

        Else
            cal1.Visible = False

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If cal1.Visible = True Then
            cal1.Visible = False
            Cal2.Visible = False

        Else
            cal1.Visible = True
            Cal2.Visible = False


        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If Cal2.Visible = True Then
            Cal2.Visible = False
            cal1.Visible = False

        Else
            Cal2.Visible = True
            cal1.Visible = False

        End If
    End Sub

    Protected Sub Cal2_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cal2.SelectionChanged
        If TextBox2.Text = "" Or Not TextBox2.Text = "" Then
            TextBox2.Text = Cal2.SelectedDate
            Cal2.Visible = False

        Else
            Cal2.Visible = False

        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class
