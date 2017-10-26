<%@ Page Language="VB" AutoEventWireup="false" CodeFile="searchallapprov.aspx.vb" Inherits="evaluate" %>

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
        <h2><a href="#" id="metamorph">ONline</a> system</h2>
    </div>
    <div id="buttons">
        <ul>
          <li class="first"><a href="Default.aspx"  title="" class="active">home</a></li>
          <li><a href="Default.aspx" title="">login</a></li>
          <li><a href="searchapprovpage.aspx" title="">gallery</a></li>
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
    	
		<div class="wrapper">
                            <div class="space4">
                                <h3>
                                    Innovation Program</h3>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent">
                                        <a href="approvpage.aspx"></a></div>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Search all approved entry by month and department."></asp:Label></div>
                                <div class="wrapper indent-bot2" style="left: 0px; top: 0px">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            &nbsp;</h4>
                                        .
                                    </div>
                                </div>
                                <div class="wrapper" style="left: 3px; top: 0px">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            &nbsp;</h4>
                                    </div>
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
                            </div>
            <table style="font: caption; font-family: Arial">
                <tr>
                    <td style="width: 114px; height: 20px">
                        <span style="font-size: 8pt"><span style="font-size: 9pt">Show Re</span>cords</span></td>
                    <td style="width: 211px; height: 20px">
                        <asp:Label ID="Label1" runat="server" Style="color: red" Width="238px"></asp:Label></td>
                    <td style="font-size: 8pt; width: 165px; height: 20px">
                    </td>
                </tr>
                <tr style="font-size: 8pt; font-family: Arial">
                    <td style="width: 114px; height: 28px">
                        <span><span style="font-size: 9pt">Date</span> From :</span></td>
                    <td style="width: 211px; height: 28px">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Style="font-weight: bold;
                            font-size: 11pt; color: black; background-color: white" Width="128px"></asp:TextBox><asp:Button
                                ID="Button1" runat="server" Text="..." Width="39px" /></td>
                    <td style="width: 165px; height: 28px">
                    </td>
                </tr>
                <tr style="font-family: Arial">
                    <td style="width: 114px; height: 27px">
                        <span style="font-size: 8pt"><span style="font-size: 9pt">Da</span>te To :</span></td>
                    <td style="width: 211px; height: 27px">
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Style="font-weight: bold;
                            font-size: 11pt; color: black; font-family: arial; background-color: white" Width="128px"></asp:TextBox><asp:Button
                                ID="Button3" runat="server" Text="..." Width="38px" /></td>
                    <td style="width: 165px; height: 27px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 114px">
                    </td>
                    <td style="width: 211px">
                        <asp:Calendar ID="cal1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                            Height="161px" Visible="False" Width="228px">
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        </asp:Calendar>
                        <asp:Calendar ID="Cal2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                            Height="161px" Visible="False" Width="228px">
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="Gray" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        </asp:Calendar>
                    </td>
                    <td style="width: 165px">
                    </td>
                </tr>
                <tr style="font-size: 8pt; font-family: Arial">
                    <td style="width: 114px; height: 11px;">
                        </td>
                    <td style="width: 211px; height: 11px;">
                        </td>
                    <td style="width: 165px; height: 11px;">
                        &nbsp;</td>
                </tr>
                <tr style="font-size: 8pt; font-family: Arial">
                    <td style="width: 114px">
                        Department :</td>
                    <td style="width: 211px">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="department" DataValueField="department" Style="font-size: 8pt;
                            font-family: arial" Width="151px" AppendDataBoundItems="True">
                            <asp:ListItem Value="-1">--Choose Dept.--</asp:ListItem>
                        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
                            SelectCommand="SELECT [department] FROM [tbl_department] ORDER BY [department]">
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 165px">
                        &nbsp;<asp:Button ID="Button2" runat="server" Height="24px" Style="font: menu" Text="Search"
                            Width="63px" />
                        <asp:Button ID="Button4" runat="server" Height="24px" Style="font: menu" Text="Back"
                            Width="64px" /></td>
                </tr>
            </table>
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
