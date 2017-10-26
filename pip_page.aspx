<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pip_page.aspx.vb" Inherits="pip_page" %>

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
        <p>
            <a href="register.aspx" title=""></a>
            &nbsp;</p>
    </div>
    <div id="buttons" style="width: 934px">
        <ul>
          <li class="first"><a href="user.aspx"  title="" class="active">home</a></li>
          <li></li>
           <li><a href="#" title="">about us</a></li>
          <li><a href="#" title="">contact us</a>
          <li><a href="Default.aspx" title="">logout</a>
              <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Style="left: 687px;
                  position: absolute; top: 96px" Text="Label" Width="182px" ForeColor="Red"></asp:Label>
              <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
                  position: absolute; top: 73px" Text="Welcome," Width="182px"></asp:Label>
          </li>
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
    <div id="content" style="height: 803px; width: 982px;">
    	
		<div class="wrapper" style="left: 0px; width: 101%; top: 0px">
                            <div class="space4" style="left: -6px; top: 0px; height: 544px; position: absolute; width: 352px;">
                                <h3>
                                    Innovative Suggestion</h3>
                                <div class="wrapper" style="left: 40px; top: -6px; width: 252%; position: relative;">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                <table style="font-size: 12px; left: 216px; width: 824px; font-family: Arial;
                                    top: 24px; background-color: transparent; height: 608px;">
                                    <tr>
                                        <td style="width: 148px; height: 51px">
                                            PIP No.</td>
                                        <td colspan="3" style="width: 830px; height: 51px">
                                            &nbsp;<asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="92px">51</asp:TextBox>&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="79px">0</asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 148px; height: 26px">
                                            Name of Proponent :&nbsp;</td>
                                        <td colspan="3" style="width: 830px; height: 26px">
                                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="239px"></asp:TextBox><span
                                                style="color: #008000"> &nbsp; &nbsp; </span>
                                        </td>
                                    </tr>
                                    <tr style="color: #008000">
                                        <td style="width: 148px; height: 26px">
                                            From Department:&nbsp;</td>
                                        <td colspan="3" style="width: 830px; height: 26px">
                                            <span style="color: #429805">&nbsp;</span><asp:TextBox ID="TextBox10" runat="server" Enabled="False" Width="239px"></asp:TextBox><span style="color: #008000"> &nbsp; &nbsp;
                                                </span>
                                        </td>
                                    </tr>
                                    <tr style="color: #008000">
                                        
                                        <td  style="width: 148px; height: 26px">
                                            <span style="color: #429805">
                                            &nbsp;*********************<br />
                                            </span><span style="color: #008000">
                                            Have Suggestion To:</span></td>
                                    </tr>
                                    <tr style="color: #008000">
                                        <td style="width: 148px; height: 21px">
                                            <span style="color: green;"><span style="color: #008000">Department</span>:</span></td>
                                        <td colspan="3" style="width: 830px; height: 21px">
                                            &nbsp;<asp:DropDownList ID="dplist" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1"
                                                DataTextField="Department" DataValueField="Department" Width="241px" EnableViewState="False">
                                                <asp:ListItem Value="null">--Choose Dept.--</asp:ListItem>
                                            </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString7 %>"
                                                SelectCommand="SELECT [department] FROM [tbl_department] ORDER BY [department]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 148px; height: 19px">
                                            <span style="color: green">Plant</span></td>
                                        <td colspan="3" style="width: 830px; color: #c05100; height: 19px; text-decoration: underline">
                                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True"
                                                DataSourceID="SqlDataSource2" DataTextField="plant" DataValueField="plant" Width="243px" EnableViewState="False">
                                                <asp:ListItem Value="null">--Choose Plant--</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 148px; height: 19px">
                                            Area:</td>
                                        <td colspan="3" style="width: 830px; height: 19px">
                                            &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 148px; height: 19px">
                                            Date Entry :</td>
                                        <td colspan="3" style="width: 830px; height: 19px">
                                            &nbsp;<asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="94px"></asp:TextBox>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="" style="width: 148px; height: 31px;" colspan="">
                                            Suggestion :</td>
                                        <td colspan="3" style="width: 830px; height: 31px;">
                                            &nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="73px" TextMode="MultiLine"
                                                Width="346px"></asp:TextBox>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td style="width: 148px; height: 29px">
                                            <span style="color: green">Potential Savings:</span></td>
                                        <td colspan="3" rowspan="1" style="width: 830px; color: #c05100; height: 29px; text-decoration: underline">
                                            &nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="345px" Height="89px" TextMode="MultiLine"></asp:TextBox>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 148px; height: 24px">
                                            Attach File:</td>
                                        <td colspan="3" rowspan="1" style="width: 830px; height: 24px">
                                            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="24px"
                                                Style="font: menu" Width="386px" />&nbsp;<asp:Button ID="Button4" runat="server" Height="24px"
                                                    Style="font: menu" Text="Upload & Save" Width="105px" />
                                            <asp:Label ID="Label5" runat="server" Style="font-weight: bold; font-size: 10pt;
                                                color: #3366ff; font-family: arial" Width="403px"></asp:Label></td>
                                    </tr>
                                    
                                   
                                 
                                    <tr>
                                        <td style="width: 148px; height: 29px">
                                            <asp:Label ID="Label4" runat="server" Height="12px" Text="Label" Visible="False"
                                                Width="289px" style="left: 1px; position: absolute; top: -18px" ForeColor="Red"></asp:Label></td>
                                        <td colspan="3" rowspan="1" style="width: 830px; height: 29px">
                                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Width="430px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 148px; height: 38px">
                                            &nbsp; &nbsp; &nbsp;
                                        </td>
                                        <td colspan="3" rowspan="1" style="width: 830px; height: 38px">
                                            <asp:Button ID="Button2" runat="server" Enabled="False" Height="27px" Style="font: menu"
                                                Text="Submit" Width="68px" />
                                            &nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Height="26px" Style="font: menu" Text="Back"
                                                Width="65px" /></td>
                                    </tr>
                                </table>
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
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                                            <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox></p>
                                        <p>
                                            &nbsp;</p>
                                    </div>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString9 %>"
            SelectCommand="SELECT DISTINCT [plant] FROM [pip_plant]"></asp:SqlDataSource>
  Copyright  2012. PKI | MIS Department<br />
		<a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></div>
<!-- footer ends -->
</div>
</div>
</div>
</form> 
</body>

</html>
