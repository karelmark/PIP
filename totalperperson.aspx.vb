Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Imports System
Imports System.Configuration



Imports System.IO
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser

Partial Class mainpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      
        Label5.Text = DateTime.Now.ToString("yyyy")
        Label2.Text = Session("emplname")
        Label9.Text = Session("name")
        Label10.Text = Session("emplevel")
    End Sub

   
    Public Overloads Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    End Sub
    Private Sub ExportToExcel(ByVal strFileName As String, ByVal dg As GridView)
        Response.Clear()
        Response.Buffer = True
        Response.ContentType = "application/vnd.ms-excel"
        Response.Charset = ""
        Me.EnableViewState = False
        Dim oStringWriter As New System.IO.StringWriter
        Dim oHtmlTextWriter As New System.Web.UI.HtmlTextWriter(oStringWriter)

        GridView1.RenderControl(oHtmlTextWriter)

        Response.Write(oStringWriter.ToString())
        Response.[End]()

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        ExportToExcel("Report.xls", GridView1)
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.ContentType = "application/pdf"
        Response.AddHeader("content-disposition", "attachment;filename=monthlyreport.pdf")
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)
        GridView1.AllowPaging = False
        GridView1.DataBind()
        GridView1.RenderControl(hw)
        GridView1.HeaderRow.Style.Add("width", "15%")
        GridView1.HeaderRow.Style.Add("font-size", "10px")
        GridView1.Style.Add("text-decoration", "none")
        GridView1.Style.Add("font-family", "Arial, Helvetica, sans-serif;")
        GridView1.Style.Add("font-size", "8px")
        Dim sr As New StringReader(sw.ToString())
        Dim pdfDoc As New Document(PageSize.A2, 7.0F, 7.0F, 7.0F, 0.0F)
        Dim htmlparser As New HTMLWorker(pdfDoc)
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
        pdfDoc.Open()
        htmlparser.Parse(sr)
        pdfDoc.Close()
        Response.Write(pdfDoc)
        Response.[End]()
    End Sub
End Class
