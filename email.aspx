<%@ Page Language="VB" AutoEventWireup="false" CodeFile="email.aspx.vb" Inherits="email" %>

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
    	
		<div class="wrapper" style="font-size: 12pt">
                            <div class="space4" style="width: 256px; height: 512px">
                                <h3>
                                    Summary Reports</h3>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent">
                                        <a href="approvpage.aspx"></a></div>
                                    <div class="extra-wrap">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                                            Text="Label"></asp:Label>&nbsp;</div>
                                </div>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        .
                                    </div>
                                </div>
                                &nbsp;
                                <div class="wrapper" style="left: 3px; top: 21px">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            &nbsp;</h4>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><br />
                            </div>
                            <div>
                                <table align="center" style="border-right: 1px solid; border-top: 1px solid; left: 304px;
                                    border-left: 1px solid; width: 485px; border-bottom: 1px solid; position: absolute;
                                    top: 8px; height: 438px">
                                    <tr>
                                        <td align="center" colspan="2" style="height: 28px">
                                            <b>Send Mail </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
From:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFrom" runat="server" Width="198px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
To:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTo" runat="server" Width="198px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
Cc:
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
Subject:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSubject" runat="server" Width="196px">Job Request</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
    Message:</td>
                                        <td>
                                            <asp:TextBox ID="txtBody" runat="server" Columns="30" Height="115px" Rows="10" TextMode="MultiLine"
                                                Width="464px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 33px">
                                        </td>
                                        <td style="height: 33px">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Send" Width="69px" />
                                        </td>
                                    </tr>
                                </table>
</div>
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
		<div class="clear">
            <br />
            <br />
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
