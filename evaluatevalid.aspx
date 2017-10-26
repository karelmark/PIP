<%@ Page Language="VB" AutoEventWireup="false" CodeFile="evaluatevalid.aspx.vb" Inherits="evaluatevalid" %>

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
                Style="left: 687px; position: absolute; top: 96px" Text="Label" Visible="False"
                Width="182px"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
                position: absolute; top: 73px" Text="Welcome," Visible="False" Width="182px"></asp:Label>
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
    <div id="content">
    	
		<div class="wrapper">
                            <div class="space4">
                                <h3>
                                    Evaluation</h3>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent">
                                        <a href="approvpage.aspx"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;</div>
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
                            </div>
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label
                ID="Label1" runat="server" Font-Bold="True" Text="Label" Visible="False" Width="53px"></asp:Label><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="pip_no"
                DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="1px"
                Style="font-size: 8pt; left: 11px; font-family: Arial; position: relative; top: -295px"
                Width="833px" AllowPaging="True">
                <FooterStyle BackColor="#CCCC99" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pip_no" HeaderText="No." InsertVisible="False" ReadOnly="True"
                        SortExpression="pip_no">
                        <ItemStyle Width="25px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_loginid" HeaderText="Login ID" SortExpression="pip_loginid">
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_department" HeaderText="Department" SortExpression="pip_loginid">
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_suggest" HeaderText="Suggestion" SortExpression="pip_suggest">
                        <ItemStyle Width="300px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_status" HeaderText="Status" SortExpression="pip_status">
                        <ItemStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_savings" HeaderText="Savings" SortExpression="pip_savings">
                        <ItemStyle Width="60px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_date" DataFormatString="{0:M/dd/yyy}" HeaderText="Date"
                        HtmlEncode="False" SortExpression="pip_date">
                        <ItemStyle Width="90px" />
                    </asp:BoundField>
                    <asp:ButtonField ButtonType="Button" CommandName="Validate" Text="Validate">
                        <ItemStyle Width="90px" />
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" Style="left: 12px; position: relative; top: -293px"
                Text="Back" Width="69px" /><asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>" SelectCommand="SELECT [pip_no], [pip_loginid], [pip_suggest], [pip_status], [pip_savings], [pip_date],[pip_department] FROM [pip_data] WHERE (([pip_date] >= @pip_date) AND ([pip_date] <= @pip_date2)AND ([pip_department] = @pip_department)AND ([pip_status] = 'PENDING')) ORDER BY [pip_no]">
                    <SelectParameters>
                        <asp:SessionParameter Name="pip_date" SessionField="VRDATE1" Type="DateTime" />
                        <asp:SessionParameter Name="pip_date2" SessionField="VRDATE2" Type="DateTime" />
                        <asp:SessionParameter Name="pip_department" SessionField="VRDateDept" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
