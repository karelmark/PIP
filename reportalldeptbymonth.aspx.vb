Imports System.Char
Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Imports System.Configuration
Imports System.IO

Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts

Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser


Partial Class evaluatevalid
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim com2 As SqlCommand
    Dim icount As Integer
    Dim icount2 As Integer
    Dim st As String = "Data Source=SA9FI015;Initial Catalog=pip_system;User ID=pip_connect;Password=pipconnect"
    Dim con As New Data.SqlClient.SqlConnection(st)
   

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        'Dim IntIndex As Integer = Convert.ToInt16(e.CommandArgument.ToString())
        ' Session("pip_no") = GridView1.DataKeys(IntIndex).Value.ToString()

        'If e.CommandName = "View" Then
        'Response.Redirect("searchallapprovview.aspx")
        ' End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("summaryreport.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("emplname")
        Label6.Text = Session("name")
        Label7.Text = Session("emplevel")
        reportallbymonth()
        'Label2.Text = Session("month")
        Label3.Text = DateTime.Today.ToString("MMM")
        Label4.Text = DateTime.Today.ToString("yyyy")
    End Sub
   
    Private Sub reportallbymonth()
        Dim str As String
        Dim dr As SqlDataReader


        con.Open()
        Label3.Text = DateTime.Today.ToString("MMM")
        ' TextBox17.Text = DateTime.Now.Date
        str = "SELECT count (*) as StatUser FROM pip_data WHERE pip_month  = '" & Label3.Text & "' AND pip_status != 'PENDING'"
        com = New SqlCommand(str, con)
        dr = com.ExecuteReader()

        If dr.Read() = True Then
            Label2.Text = dr("StatUser").ToString()
        End If
        con.Close()
    End Sub
    Protected Sub btnPDF_Click(ByVal sender As Object, ByVal e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.ContentType = "application/pdf"
        Response.AddHeader("content-disposition", "attachment;filename=monthlyreport.pdf")
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)
        GridView1.AllowPaging = False
        GridView1.DataBind()
        GridView1.RenderControl(hw)
        GridView1.HeaderRow.Style.Add("width", "15%")
        GridView1.HeaderRow.Style.Add("font-size", "15px")
        GridView1.Style.Add("text-decoration", "none")
        GridView1.Style.Add("font-family", "Arial, Helvetica, sans-serif;")
        GridView1.Style.Add("font-size", "12px")
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



    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        ExportToExcel("Report.xls", GridView1)
    End Sub
End Class
