<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registerpage.aspx.vb" Inherits="registerpage" %>

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
                                    <div class="img-indent"><a href="approvpage.aspx"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            &nbsp;</h4>
                                        </div>
                                </div>
                                <div class="wrapper indent-bot2">
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
                                <br />
                            </div>
                            <br />
            <img src="images2/icon4.png" alt="" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Registration Form<br />
            <br />
            <table style="font-size: 10pt; width: 347px; font-family: Tahoma">
                
                <tr>
                    <td style="width: 118px; text-align: right">
                        First Name:</td>
                    <td style="width: 105px">
                        <asp:TextBox ID="TextBox10" runat="server" TabIndex="1" Width="219px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 118px; text-align: right">
                        Middle Initial&nbsp;
                    </td>
                    <td style="width: 105px; height: 26px">
                        <asp:TextBox ID="TextBox11" runat="server" MaxLength="1" TabIndex="2" Width="151px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 118px; text-align: right">
                        Last Name:</td>
                    <td style="width: 105px">
                        <asp:TextBox ID="TextBox9" runat="server" TabIndex="3" Width="218px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 118px; text-align: right">
                        Email:</td>
                    <td style="width: 105px">
                        <asp:TextBox ID="TextBox4" runat="server" TabIndex="4" Width="218px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 118px; height: 24px; text-align: right">
                        Department</td>
                    <td style="width: 105px; height: 24px">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="Department" DataValueField="Department" Width="220px" AppendDataBoundItems="True" TabIndex="5">
                            <asp:ListItem Value="-1">--Choose Dept--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
                            SelectCommand="SELECT [department] FROM [tbl_department] ORDER BY [department]">
                        </asp:SqlDataSource>
                        &nbsp;
                    </td>
                </tr>
                
            </table>
            <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="textbox2" ControlToValidate="textbox3"
                ErrorMessage="Passwords do not match!" Style="font-size: 10pt; left: 652px; font-family: tahoma;
                position: absolute; top: 203px" Width="328px"></asp:CompareValidator>
            <table style="font-size: 10pt; width: 348px; font-family: Tahoma; height: 173px;">
                <tr>
                    <td style="width: 115px; height: 26px; text-align: right">
                        PKI Username</td>
                    <td style="width: 128px; height: 26px">
                        <asp:TextBox ID="TextBox1" runat="server" Width="213px" TabIndex="6"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 115px; text-align: right">
                        Password</td>
                    <td style="width: 128px">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" TabIndex="7" Width="213px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 115px; text-align: right">
                        Confirm Password</td>
                    <td style="width: 128px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" TabIndex="8" Width="212px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 115px; text-align: right">
                        User Type:</td>
                    <td style="width: 128px">
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2"
                            DataTextField="usertype" DataValueField="userno" TabIndex="9" Width="215px">
                            <asp:ListItem Value="-1">--Choose User Type--</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 115px; text-align: right">
                        <br />
            <asp:Button ID="Button1" runat="server" Height="25px" Style="font: icon" Text="Submit"
                Width="66px" /></td>
                    <td style="width: 128px">
                        <br />
                        <asp:Button ID="Button3" runat="server" Height="25px"
                        Style="font: menu" Text="Home" Width="66px" /></td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString15 %>"
                SelectCommand="SELECT [userno], [usertype] FROM [pip_userlevel]"></asp:SqlDataSource>
            <br />
            &nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Style="font-weight: bold; font-size: 10pt;
                left: 305px; font-family: arial; position: absolute; top: 0px" Width="459px"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox></div>
		<div class="clear">
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
