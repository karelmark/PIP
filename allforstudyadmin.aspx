<%@ Page Language="VB" AutoEventWireup="false" CodeFile="allforstudyadmin.aspx.vb" Inherits="allforstudydmin" %>

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
          <li><a href="Login.aspx" title="">login</a></li>
          <li><a href="approvpage.aspx" title="">gallery</a></li>
           <li><a href="#" title="">about us</a></li>
          <li><a href="#" title="">contact us</a></li>
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
    <div id="content">
    	
		<div class="wrapper" style="left: 0px; top: 0px; height: 726px">
                            <div class="space4">
                                <h3>
                                    Innovation Program</h3>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent"><a href="approvpage.aspx"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<asp:Image ID="Image1" runat="server" Height="124px" ImageUrl="~/images2/310_Completed_20Animated_20Hourglass.gif"
                                            Width="122px" />
                                        <asp:Button ID="Button1" runat="server" Height="33px" Text="Back" Width="79px" /></div>
                                </div>
                                
                                <div class="wrapper" style="left: 0px; top: -114px">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        <span class="text-2"></span>
                                        </div>
                                </div>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label
                                    ID="Label1" runat="server" Font-Bold="True" Text="Label" Visible="False" Width="53px"></asp:Label></div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                CellPadding="4" DataKeyNames="pip_no" DataSourceID="SqlDataSource1" Font-Size="Small"
                ForeColor="#333333" GridLines="None" PageSize="15" Style="left: 114px; position: absolute;
                top: 180px" Width="655px">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="pip_no" HeaderText="pip no" InsertVisible="False" ReadOnly="True"
                        SortExpression="pip_no" />
                    <asp:BoundField DataField="pip_recordno" HeaderText="Recordno" SortExpression="pip_recordno" />
                    <asp:BoundField DataField="pip_loginid" HeaderText="PIP Entry BY" SortExpression="pip_loginid" />
                    <asp:BoundField DataField="pip_department" HeaderText="Department" SortExpression="pip_department" />
                    <asp:BoundField DataField="pip_plant" HeaderText="Plant" SortExpression="pip_plant" />
                    <asp:BoundField DataField="pip_area" HeaderText="Area" SortExpression="pip_area" />
                    <asp:BoundField DataField="pip_status" HeaderText="Status" SortExpression="pip_status" />
                    
                    <asp:ButtonField ButtonType="Button" CommandName="View" Text="View" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" Font-Size="Small" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
                            <br />
            <asp:ScriptManager id="ScriptManager1" runat="server">
            </asp:ScriptManager><asp:UpdatePanel id="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [pip_data] where [pip_status] = 'FOR STUDY'"></asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
                        </div>
		<div class="clear">
            <br />
            <br />
            <br />
            &nbsp;</div>
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
