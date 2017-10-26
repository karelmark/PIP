<%@ Page Language="VB" AutoEventWireup="false" CodeFile="alldisapprovadmin.aspx.vb" Inherits="allpendingadmin" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>PKI Innovation Program</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body>
<form id="form1" runat="server">
<div id="bg">

<div id="main">
<div id="main_bot">
<!-- header begins -->
<div id="header">
	<div id="logo">
        <h1>
            <img src="images2/kao_logo_type_c_en_green.png" style="left: 14px; width: 533px;
                position: absolute; top: 30px; height: 65px" />
            PKI Innovation Program</h1>
        <h2>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                Style="left: 687px; position: absolute; top: 96px" Text="Label" Width="182px"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
                position: absolute; top: 73px" Text="Welcome," Width="182px"></asp:Label>
            <a href="#" id="metamorph">ONline</a> system</h2>
    </div>
    <div id="buttons">
        <ul>
          <li class="first"><a href="user.aspx"  title="" class="active">home</a></li>
         
           <li><a href="#" title="">about us</a></li>
          <li><a href="#" title="">contact us</a></li>
          <li><a href="Default.aspx" title="">logout</a></li>
        </ul>
    </div>
</div>
<!-- header ends -->
<!-- scroll begins -->

<div class="header_bg">

<div class="header_slider"> 
                           <div id="slider-wrapper">        
					             <div id="slider" class="nivoSlider">
									<img src="images2/header1.jpg" alt="" title="" />
									<img src="images2/header2.jpg" alt="" title="" />
									<img src="images2/header3.jpg" alt="" title="" />	
									<img src="images2/header4.jpg" alt="" title="" />	
									<img src="images2/header5.jpg" alt="" title="" />	
									<img src="images2/header6.jpg" alt="" title="" />	
									<img src="images2/header7.jpg" alt="" title="" />	
									<img src="images2/header8.jpg" alt="" title="" />				
								</div>        
				            </div>
								
<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
function IMG1_onclick() {

}

function IMG2_onclick() {

}

    </script></div>	
<div class="clear"></div>
</div>
<div class="clear"></div>
<!-- header ends -->
    <!-- content begins -->
    <div id="cont_top"></div>
    <!-- content ends -->
    <div id="cont_bot"></div>
    
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            DataKeyNames="pip_no" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Font-Size="Small">
            <Columns>
                
                <asp:ButtonField ButtonType="Button" CommandName="View" Text="View" />
                <asp:BoundField DataField="pip_no" HeaderText="No" InsertVisible="False" ReadOnly="True"
                    SortExpression="pip_no" />
                <asp:BoundField DataField="pip_loginid" HeaderText="Proponent" SortExpression="pip_loginid" />
                <asp:BoundField DataField="pip_department" HeaderText="Dept" SortExpression="pip_department" />
                <asp:BoundField DataField="pip_status" HeaderText="Status" SortExpression="pip_status" />
                <asp:BoundField DataField="pip_remarks" HeaderText="Initial Eval" SortExpression="pip_remarks" />
                <asp:BoundField DataField="pip_reason" HeaderText="Committe Action" SortExpression="pip_reason" />
               
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString19 %>"
            DeleteCommand="DELETE FROM [pip_data] WHERE [pip_no] = @pip_no" InsertCommand="INSERT INTO [pip_data] ([pip_loginid], [pip_department], [pip_status], [pip_remarks], [pip_reason], [pip_month]) VALUES (@pip_loginid, @pip_department, @pip_status, @pip_remarks, @pip_reason, @pip_month)"
            SelectCommand="SELECT [pip_no], [pip_loginid], [pip_department], [pip_status], [pip_remarks], [pip_reason], [pip_month] FROM [pip_data]where [pip_status] = 'DISAPPROVED'"
            UpdateCommand="UPDATE [pip_data] SET [pip_loginid] = @pip_loginid, [pip_department] = @pip_department, [pip_status] = @pip_status, [pip_remarks] = @pip_remarks, [pip_reason] = @pip_reason, [pip_month] = @pip_month WHERE [pip_no] = @pip_no">
            <DeleteParameters>
                <asp:Parameter Name="pip_no" Type="Int64" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="pip_loginid" Type="String" />
                <asp:Parameter Name="pip_department" Type="String" />
                <asp:Parameter Name="pip_status" Type="String" />
                <asp:Parameter Name="pip_remarks" Type="String" />
                <asp:Parameter Name="pip_reason" Type="String" />
                <asp:Parameter Name="pip_month" Type="String" />
                <asp:Parameter Name="pip_no" Type="Int64" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="pip_loginid" Type="String" />
                <asp:Parameter Name="pip_department" Type="String" />
                <asp:Parameter Name="pip_status" Type="String" />
                <asp:Parameter Name="pip_remarks" Type="String" />
                <asp:Parameter Name="pip_reason" Type="String" />
                <asp:Parameter Name="pip_month" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <!-- footer begins -->
    <div id="footer">
  Copyright  2012. PKI | MIS Department<br />
		<a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></div>
<!-- footer ends -->
</div>
</div>
</div>
</form> 
</body>

</html>
