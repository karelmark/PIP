<%@ Page Language="VB" AutoEventWireup="false" CodeFile="viewapprovpage.aspx.vb" Inherits="viewapprovpage" %>

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
                Style="left: 687px; position: absolute; top: 96px" Text="Label" Width="182px" Visible="False"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
                position: absolute; top: 73px" Text="Welcome," Width="182px" Visible="False"></asp:Label>
            <a href="#" id="metamorph">ONline</a> system</h2>
    </div>
    <div id="buttons" style="width: 855px">
        <ul>
          <li class="first"><a href="user.aspx"  title="" class="active">home</a></li>
          <li></li>
           <li><a href="#" title="">about us</a></li>
          <li><a href="#" title="">contact us</a> &nbsp; </li>
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
    <div id="content" style="width: 944px; height: 880px">
    	
		<div class="wrapper" style="height: 920px; left: 1px; top: 1px;">
                            <div class="space4" style="left: 1px; top: 0px">
                                <h3>
                                    Innovation Program</h3>
                                <div class="wrapper indent-bot2">
                                    
                                    <div class="extra-wrap">
                                        <span class="text-2">&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images2/icon4.png" /><br />
                                            View Details</span></div>
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
                                &nbsp; &nbsp;&nbsp;&nbsp;<br />
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label
                                    ID="Label1" runat="server" Font-Bold="True" Text="Label" Visible="False" Width="53px"></asp:Label><br />
                                <br />
                                <br />
                            </div>
            <table style="font-size: 8pt; left: 212px; width: 724px; font-family: Arial; position: absolute;
                top: 0px">
                <tr>
                    <td style="width: 112px; height: 19px">
                        <span style="font-size: 8pt">PIP No.</span></td>
                    <td style="width: 100px; height: 19px">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="128px" BackColor="White" BorderColor="White" BorderStyle="None"></asp:TextBox></td>
                    <td style="width: 87px; height: 19px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px">
                        <span style="font-size: 8pt">Proponent</span></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="128px" BackColor="White" BorderColor="White" BorderStyle="None" EnableTheming="True"></asp:TextBox></td>
                    <td style="width: 87px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 15px">
                        D<span style="font-size: 8pt">epartment</span></td>
                    <td style="width: 100px; height: 15px">
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="127px" BorderStyle="None"></asp:TextBox></td>
                    <td style="width: 87px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 15px">
                        Plant</td>
                    <td style="width: 100px; height: 15px">
                        <asp:TextBox ID="TextBox12" runat="server" Enabled="False" Width="127px"></asp:TextBox></td>
                    <td style="width: 87px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 15px">
                        Area</td>
                    <td style="width: 100px; height: 15px">
                        <asp:TextBox ID="TextBox13" runat="server" Enabled="False" Width="127px"></asp:TextBox></td>
                    <td style="width: 87px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 15px">
                        Date Submitted</td>
                    <td style="width: 100px; height: 15px">
                        <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox></td>
                    <td style="width: 87px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 15px">
                        Time Submitted</td>
                    <td style="width: 100px; height: 15px">
                        <asp:TextBox ID="TextBox10" runat="server" Enabled="False"></asp:TextBox></td>
                    <td style="width: 87px; height: 15px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px">
                        <span style="font-size: 8pt">Suggestion</span></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox4" runat="server" Height="128px" Width="410px" TextMode="MultiLine"></asp:TextBox></td>
                    <td style="width: 87px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 21px">
                        Savings</td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="TextBox5" runat="server" Height="96px" TextMode="MultiLine" Width="410px"></asp:TextBox></td>
                    <td style="width: 87px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 19px">
                        Evaluation Status</td>
                    <td style="width: 100px; height: 19px">
                        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Font-Bold="True" Font-Size="Large" ForeColor="Red" Height="48px" Width="232px"></asp:TextBox></td>
                    <td style="width: 87px; height: 19px">
                    </td>
                </tr>
               
                <tr>
                    <td style="width: 112px">
                        Reason</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox8" runat="server" Height="55px" TextMode="MultiLine"
                            Width="409px"></asp:TextBox></td>
                    <td style="width: 87px">
                    </td>
                </tr>
                
                <tr>
                    <td style="width: 112px; height: 30px">
                        </td>
                    <td style="width: 100px; height: 30px"><asp:GridView style="FONT-SIZE: 8pt; LEFT: 176px; FONT-FAMILY: Tahoma; TOP: 724px" id="GridView1" runat="server" Width="653px" Height="164px" OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" DataKeyNames="ImageID" CellPadding="3" BorderColor="#CCCCCC" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="1px">
                                                <RowStyle ForeColor="#000066"   />
                                                <Columns>
                                                    <asp:BoundField DataField="ImageID" HeaderText="ID" InsertVisible="False" SortExpression="ImageID">
                                                        <ItemStyle Width="50px"   />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" ></asp:BoundField>
                                                    <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL">
                                                        <ItemStyle Width="200px"   />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="ImageOwner" HeaderText="ImageOwner" SortExpression="ImageOwner" ></asp:BoundField>
                                                    
                                                    <asp:ButtonField ButtonType="Button" CommandName="Dwn" Text="View">
                                                        <ItemStyle Width="50px"   />
                                                    </asp:ButtonField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#000066"   />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left"   />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"   />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"   />
                                            </asp:GridView>
                        </td>
                    <td style="width: 87px; height: 30px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 19px">
                    </td>
                    <td style="width: 100px; height: 19px">
                        &nbsp;
                    </td>
                    <td style="width: 87px; height: 19px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 112px; height: 120px;">
                    </td>
                    <td>
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Height="32px" Text="Back" Width="86px" />
                        &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="32px" Text="Print this suggestion" Width="128px"/> &nbsp;
                        <asp:TextBox ID="TextBox11" runat="server" Enabled="False" Visible="False"></asp:TextBox><br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>" DeleteCommand="DELETE FROM [tbl_image] WHERE [imageid] = @original_imageid AND [imagename] = @original_imagename AND [imageurl] = @original_imageurl AND [imageowner] = @original_imageowner AND [imagedate] = @original_imagedate AND [imagepipno] = @original_imagepipno"
                            InsertCommand="INSERT INTO [tbl_image] ([imagename], [imageurl], [imageowner], [imagedate], [imagepipno]) VALUES (@imagename, @imageurl, @imageowner, @imagedate, @imagepipno)"
                            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [imageid], [imagename], [imageurl], [imageowner], [imagedate], [imagepipno] FROM [tbl_image] WHERE ([imagepipno] = @imagepipno)"
                            UpdateCommand="UPDATE [tbl_image] SET [imagename] = @imagename, [imageurl] = @imageurl, [imageowner] = @imageowner, [imagedate] = @imagedate, [imagepipno] = @imagepipno WHERE [imageid] = @original_imageid AND [imagename] = @original_imagename AND [imageurl] = @original_imageurl AND [imageowner] = @original_imageowner AND [imagedate] = @original_imagedate AND [imagepipno] = @original_imagepipno">
                            <SelectParameters>
                                <asp:SessionParameter Name="imagepipno" SessionField="imagepipno" Type="String" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="original_imageid" Type="Int64" />
                                <asp:Parameter Name="original_imagename" Type="String" />
                                <asp:Parameter Name="original_imageurl" Type="String" />
                                <asp:Parameter Name="original_imageowner" Type="String" />
                                <asp:Parameter Name="original_imagedate" Type="String" />
                                <asp:Parameter Name="original_imagepipno" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="imagename" Type="String" />
                                <asp:Parameter Name="imageurl" Type="String" />
                                <asp:Parameter Name="imageowner" Type="String" />
                                <asp:Parameter Name="imagedate" Type="String" />
                                <asp:Parameter Name="imagepipno" Type="String" />
                                <asp:Parameter Name="original_imageid" Type="Int64" />
                                <asp:Parameter Name="original_imagename" Type="String" />
                                <asp:Parameter Name="original_imageurl" Type="String" />
                                <asp:Parameter Name="original_imageowner" Type="String" />
                                <asp:Parameter Name="original_imagedate" Type="String" />
                                <asp:Parameter Name="original_imagepipno" Type="String" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="imagename" Type="String" />
                                <asp:Parameter Name="imageurl" Type="String" />
                                <asp:Parameter Name="imageowner" Type="String" />
                                <asp:Parameter Name="imagedate" Type="String" />
                                <asp:Parameter Name="imagepipno" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 87px; height: 120px;">
                    </td>
                </tr>
            </table>
                            <br />
            <br />
            <br />
                        </div>
		<div class="clear">
            &nbsp;<br />
            &nbsp;</div>
    </div>
    <!-- content ends -->
    <div id="cont_bot"></div>
    <!-- footer begins -->
    <div id="footer">
        <br />
  Copyright  2012. PKI | MIS Department<br />
		<a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></div>
<!-- footer ends -->
</div>
</div>
</div>
</form> 
</body>

</html>
