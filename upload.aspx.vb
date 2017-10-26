
Partial Class upload
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        lblStatus.Text = "Uploading..."
        System.Threading.Thread.Sleep(2000)
        Dim temp As String = ""
        Dim uploadFiles As HttpFileCollection = Request.Files
        For i As Integer = 0 To uploadFiles.Count - 1
            Dim uploadFile As HttpPostedFile = uploadFiles(i)
            Dim fileName As String = System.IO.Path.GetFileName(uploadFile.FileName)
            If fileName.Trim().Length > 0 Then
                'uploadFile.SaveAs(Server.MapPath("./Others/") + fileName)
                uploadFile.SaveAs(Server.MapPath("./File/") + fileName)
                temp = temp & fileName & " Successfully Uploaded <br/>"
            End If
        Next
        lblStatus.Text = temp
    End Sub
End Class
