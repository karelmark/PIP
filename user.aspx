<%@ Page Language="VB" AutoEventWireup="false" CodeFile="user.aspx.vb" Inherits="mainpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>PKI Innovation Program</title>





<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />

<script type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</script>
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
        <p>
            <a href="Default.aspx" title=""></a>
            <a href="gallery.aspx" title=""></a>
            &nbsp;</p>
    </div>
    <div id="buttons" style="width: 968px">
        <ul>
          <li class="first"><a href="user.aspx" title="" class="active">Home</a> <a href="Default.aspx"  title="">
              Logout</a></li>
          
          <li></li>
           <li><a href="pip_comments.aspx" title="">FeedBack</a></li>
          <li><a href="#" title="">contact us</a>&nbsp;&nbsp;
          <li>&nbsp;<li>&nbsp;<li>
              <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Style="left: 688px;
                  position: absolute; top: 96px" Text="Label" Width="182px" ForeColor="Red"></asp:Label>
              <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 568px;
                  position: absolute; top: 72px" Text="Welcome," Width="182px"></asp:Label>
              &nbsp; </li>
              <li></li>
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
    	
		<div class="wrapper" style="left: 0px; color: white; top: -14px; height: 696px">
                            <div class="space4" style="left: 0px; width: 400px; top: 0px; height: 896px">
                                <h3>
                                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>&nbsp;</h3>
                                <p>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="63px" ImageUrl="~/images2/entry.png"
                                        Visible="False" Width="76px" />
                                    &nbsp;&nbsp; &nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" ForeColor="White"
                                        PostBackUrl="~/pip_page.aspx">PIP ENTRY HERE!</asp:LinkButton></p>
                                <p>
                                    &nbsp; &nbsp;
                                </p>
                                <p>
                                    &nbsp;</p>
                                <div class="wrapper indent-bot2" style="left: 0px; top: 64px">
                                    <div class="img-indent">
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="75px" ImageUrl="~/images2/members.png"
                                            Visible="False" Width="75px" /><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False" ForeColor="White"></asp:Label>&nbsp;</h4>
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="Medium" Visible="False">-</asp:LinkButton></p>
                                        <p>
                                            &nbsp;</p>
                                    </div>
                                </div>
                                <div class="wrapper indent-bot2" style="left: 0px; top: -134px">
                                    <div class="img-indent">
                                        <asp:ImageButton ID="ImageButton4" runat="server" Height="75px" ImageUrl="~/images2/icon-reports.jpg"
                                            Visible="False" Width="75px" /><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" ForeColor="White"></asp:Label>&nbsp;<asp:LinkButton
                                                ID="LinkButton17" runat="server" Font-Bold="True" ForeColor="White" PostBackUrl="~/summaryreport.aspx"
                                                Visible="False">Summary Reports</asp:LinkButton></h4>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                    </div>
                                </div>
                                <div class="wrapper indent-bot2" style="left: 0px; top: -94px; color: white;">
                                    <div class="img-indent"></div>
                                    <div class="extra-wrap">
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        </p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="PIP Committee" Visible="False"></asp:Label></p>
                                        <p>
                                            &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" Text="Label" ForeColor="White"></asp:Label>
                                            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                                            <asp:LinkButton ID="LinkButton7" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Yellow">LinkButton</asp:LinkButton></p>
                                        <hr style="height: 4px; width: 384px;" />
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:Label ID="Label11" runat="server" Text="Label" ForeColor="White"></asp:Label>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Yellow">LinkButton</asp:LinkButton></p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:Label ID="Label12" runat="server" Text="Label" ForeColor="White"></asp:Label>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Yellow">LinkButton</asp:LinkButton></p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Label"></asp:Label>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" Font-Size="Medium"
                                                ForeColor="Yellow">LinkButton</asp:LinkButton></p>
                                        <hr style="height: 4px; width: 384px;" />
                                        <p>
                                        </p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label13" runat="server" Text="Label" Visible="False" ForeColor="White"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Medium" Visible="False" Font-Bold="True" ForeColor="Yellow">LinkButton</asp:LinkButton></p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:Label ID="Label14" runat="server" Text="Label" Visible="False" ForeColor="White"></asp:Label>&nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Medium" Visible="False" Font-Bold="True" ForeColor="Yellow">LinkButton</asp:LinkButton></p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp;&nbsp;
                                        </p>
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        </p>
                                        <hr style="height: 4px; width: 392px;" />
                                        <p>
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                                        </p>
                                        <p>
                                            &nbsp;</p><div class="wrapper indent-bot2" style="left: 0px; top: -38px; height: 88px;">
                                                <div class="img-indent">
                                                    <a href="#"></a>
                                                </div>
                                                <div class="extra-wrap" style="color: white">
                                                    <br />
                                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="63px" ImageUrl="~/images2/Log-Out-icon.png" Width="73px" />
                                                    <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" ForeColor="White">Log Out</asp:LinkButton>&nbsp;
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label" Width="53px" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label9" runat="server" ForeColor="White" Height="24px" Text="Label"
                                                        Width="40px" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label16" runat="server" ForeColor="White" Height="24px" Text="Label"
                                                        Width="40px" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label17" runat="server" ForeColor="White" Height="24px" Text="Label"
                                                        Visible="False" Width="40px"></asp:Label><p>
                                                        &nbsp;</p>
                                                </div>
                                            </div>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                    </div>
                                </div>
                                <div class="wrapper" style="left: 0px; top: 0px">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                            <br />
            &nbsp;<asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/images2/suggestion_box.gif"
                Visible="False" Width="144px" />&nbsp;
            <br />
            <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" ForeColor="White"
                PostBackUrl="~/pipcomments.aspx" Visible="False">Suggestion Box</asp:LinkButton>
            &nbsp; &nbsp; &nbsp;
            <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#0000C0" Visible="False">-</asp:LinkButton><br />
            &nbsp;&nbsp;<br />
            &nbsp;
            <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" ForeColor="White"
                PostBackUrl="~/user-account.aspx" Visible="False">List of User Account</asp:LinkButton>
            &nbsp;
            &nbsp;<asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" Font-Size="Medium"
                ForeColor="#0000C0" Visible="False">-</asp:LinkButton><br />
            &nbsp; &nbsp;<br />
            <table style="width: 472px">
                <tr>
                    <td style="width: 379px">
                        <asp:Image ID="Image2" runat="server" Height="88px" ImageUrl="~/images2/recommedation.png"
                            Visible="False" Width="104px" />
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Dept. Head (2nd Evaluator)"
                            Visible="False"></asp:Label><br />
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="For Recommendation"
                            Visible="False"></asp:Label>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" Font-Size="Medium"
                            ForeColor="Blue" Visible="False">LinkButton</asp:LinkButton>
                        <asp:Image ID="Image6" runat="server" Height="32px" ImageUrl="~/images2/newpulse_e0.gif"
                            Visible="False" Width="56px" /></td>
                    <td>
                    </td>
                    <td style="width: 38px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 379px" valign="bottom">
                        <asp:Image ID="Image3" runat="server" Height="48px" ImageUrl="~/images2/PENDING_Stamp.png"
                            Visible="False" Width="88px" /><br />
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="New PIP Entry:" Visible="False"></asp:Label>
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" Font-Size="Medium"
                            ForeColor="Blue" Visible="False">LinkButton</asp:LinkButton>
                        <asp:Image ID="Image5" runat="server" Height="32px" ImageUrl="~/images2/newpulse_e0.gif"
                            Visible="False" Width="56px" /></td>
                    <td>
                    </td>
                    <td style="width: 38px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 379px">
                        <br />
                        <asp:Image ID="Image4" runat="server" Height="64px" ImageUrl="~/images2/Icon-Entry_2215.png"
                Visible="False" Width="80px" /><br />
                        <asp:LinkButton Font-Bold="True" ForeColor="White" ID="LinkButton16" runat="server" Visible="False" >Add Old PIP Entry</asp:LinkButton></td>
                    <td>
                    </td>
                    <td style="width: 38px">
                    </td>
                </tr>
            </table>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;
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
