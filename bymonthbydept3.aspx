<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bymonthbydept3.aspx.vb" Inherits="mainpage" %>

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
          <li></li>
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

function IMG1_onclick() {

}

    </script></div>	
<div class="clear"></div>
</div>
<div class="clear"></div>
<!-- header ends -->
    <!-- content begins -->
    <div id="cont_top"></div>
    <div id="content">
    	
		<div class="wrapper" style="font-size: 12pt; left: -29px; width: 122%; top: -18px;">
                            <div class="space4">
                                <h3>
                                    Summary Reports</h3>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent">
                                        <a href="approvpage.aspx"></a></div>
                                    <div class="extra-wrap">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                                            Text="Label"></asp:Label>&nbsp;</div>
                                </div>
                                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
                SelectCommand="SELECT [pip_no], [pip_loginid], [pip_suggest], [pip_status], [pip_savings], [pip_date],[pip_department],[pip_month],[pip_remarks],[pip_reason] FROM [pip_data] ORDER BY [pip_no]"
               
                    
                    FilterExpression=" pip_month Like '{0}%' and pip_department Like '{1}%'">
                <FilterParameters>
                <asp:ControlParameter Name="pip_month" ControlID="ddlpipmonth" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="pip_department" ControlID="ddldept" PropertyName="SelectedValue" />
                                </FilterParameters> 
                
            </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString12 %>"
                                    SelectCommand="SELECT DISTINCT [pip_department] FROM [pip_data]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString13 %>"
                                    SelectCommand="SELECT DISTINCT [pip_month] FROM [pip_data]"></asp:SqlDataSource>
                                
                                <div class="wrapper" style="left: 0px; top: 11px">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<br />
                                        <br />
                                        &nbsp; &nbsp; &nbsp;
                                        <br />
                                        <h4 class="p1">
                                            &nbsp;</h4>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><br />
                            </div>
            Department &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Month:<br />
                                &nbsp;<br />
            <asp:DropDownList ID="ddlpipmonth" runat="server" DataSourceID="SqlDataSource3" DataValueField="pip_month" AutoPostBack="True" Width="114px" Font-Size="Small" AppendDataBoundItems="True" style="left: 733px; position: absolute; top: 25px" DataTextField="pip_month">
            <asp:ListItem Text="All" Value="%"/>
        </asp:DropDownList>
            &nbsp;
           <asp:DropDownList ID="ddldept" runat="server" DataSourceID="SqlDataSource2" DataValueField="pip_department" AutoPostBack="True" Width="114px" Font-Size="Small" AppendDataBoundItems="True" style="left: 602px; position: absolute; top: 26px" DataTextField="pip_department">
            <asp:ListItem Text="All" Value="%"/>
        </asp:DropDownList>
            &nbsp; 
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" DataSourceID="SqlDataSource1" style="left: 303px; position: absolute; top: 66px" AllowPaging="True" Font-Size="Small" ForeColor="#333333">
                <RowStyle BackColor="#E3EAEB" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            &nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            &nbsp;
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
            
                        </div>
		<div class="clear"></div>
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
