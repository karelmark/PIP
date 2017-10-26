<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reportalldeptbymonth2.aspx.vb" Inherits="reportalldeptbymonth2" %>

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

<div id="main" style="width: 962px">
<div id="main_bot" style="width: 1169px; height: 2632px;">
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
            <asp:Label ID="lblwelcome" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
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
    <div id="content" style="width: 945px">
    	
		<div class="wrapper" style="left: -27px; width: 126%; top: -27px; height: 1874px; font-size: 12pt;">
            &nbsp; &nbsp; &nbsp; &nbsp; Total of
            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Yellow" Text="Label"></asp:Label>
            &nbsp;Evaluated Suggestion for the month of &nbsp;<div class="space4" style="left: 1px">
                                <h3>
                                    Summary Reports</h3>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent">
                                        <a href="approvpage.aspx"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;</div>
                                </div>
                                &nbsp;
                                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                                <div class="wrapper indent-bot2">
                                    <div class="img-indent"><a href="#"></a></div>
                                    <div class="extra-wrap">
                                        &nbsp;<h4 class="p1">
                                            &nbsp;</h4>
                                        .
                                    </div>
                                </div>
                                &nbsp;
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
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><br />
                            </div>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Yellow" Text="Label"></asp:Label><asp:Label
                ID="Label8" runat="server" Font-Bold="True" ForeColor="Yellow" Text="Label"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/images2/excel_icon.png"
                Width="69px" />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/images2/PDF.jpg"
                     Width="63px" /><asp:GridView ID="GridView1" runat="server"
                        AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE"
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="pip_no" DataSourceID="SqlDataSource1"
                        ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="15" Style="font-size: 8pt;
                        left: 5px; font-family: Arial; position: relative; top: -269px" Width="539px" Font-Size="XX-Small">
                        <FooterStyle BackColor="#61A6F8" Font-Bold="True" ForeColor="Black" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Dept.">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtdept" runat="server" BackColor="Orange" Text='<%#Eval("pip_department")%>'></asp:TextBox>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lbltotal" runat="server" Text="Total"></asp:Label>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblamount" runat="server" Text='<%# Eval("pip_no") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="pip_date" HeaderText="Date Submitted" SortExpression="pip_date">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Suggestion">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtsuggest" runat="server" BackColor="Orange" Text='<%# Eval("pip_suggest") %>'
                                        TextMode="MultiLine"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Savings">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtsavings" runat="server" BackColor="Orange" Text='<%# Eval("pip_savings") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="pip_loginid" HeaderText="Proponent" SortExpression="pip_loginid">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Initial Evaluation">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtremarks" runat="server" BackColor="Orange" Text='<%# Eval("pip_remarks") %>'
                                        TextMode="MultiLine"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Commite Action">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtcomaction" runat="server" BackColor="Orange" Text='<%# Eval("pip_reason") %>'
                                        TextMode="MultiLine"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="pip_status" HeaderText="Status" SortExpression="pip_status">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
            <asp:Button ID="Button1" runat="server" Style="left: 10px; position: relative; top: -246px"
                Text="Back" Width="69px" /><asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>" SelectCommand="SELECT [pip_no], [pip_loginid], [pip_suggest], [pip_status], [pip_savings], [pip_date],[pip_department],[pip_month],[pip_remarks],[pip_reason] FROM [pip_data] WHERE ([pip_month] = @month) AND ([pip_status]!= 'PENDING')ORDER BY [pip_no]">
                    <SelectParameters>
                        <asp:SessionParameter Name="month" SessionField="VRmonth" Type="String" />
                    </SelectParameters>
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
    <div id="cont_bot">
        &nbsp;</div>
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
