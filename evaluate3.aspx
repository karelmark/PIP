<%@ Page Language="VB" AutoEventWireup="false" CodeFile="evaluate3.aspx.vb" Inherits="evaluatevalidrec" %>

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

<div id="main" style="height: 2152px">
<div id="main_bot">
<!-- header begins -->
<div id="header">
	<div id="logo">
        <h1>
            <img src="images2/kao_logo_type_c_en_green.png" style="left: 14px; width: 533px;
                position: absolute; top: 30px; height: 65px" />
            PKI Innovation Program</h1>
        <h2>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                Style="left: 687px; position: absolute; top: 96px" Text="Label" Visible="False"
                Width="272px"></asp:Label>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
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
    <div id="content" style="height: 1400px">
    	
		<div class="wrapper" style="left: 0px; width: 99%; top: 0px; height: 1288px">
                            <div class="space4" style="left: 0px; width: 184px; top: 0px; height: 1px">
                                <h3>
                                    Innovation P<table style="font-size: 12px; width: 912px; font-family: Arial; height: 991px; background-color: transparent">
                                    <tr>
                                        <td style="width: 194px; height: 17px; text-align: right; color: white;">
                                            PIP No. :</td>
                                        <td colspan="3" style="width: 926px; height: 17px">
                                            &nbsp;&nbsp;
                                            <asp:Label ID="Label3" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="38px" ForeColor="White"></asp:Label>
                                            <asp:Label ID="Label10" runat="server" BackColor="Transparent" BorderStyle="Inset" BorderWidth="1px"
                                                Text="Label" Width="35px" ForeColor="White" Visible="False"></asp:Label></td>
                                        <td colspan="1" style="width: 926px; color: white; height: 17px">
                                            Name of Proponent :<asp:Label ID="Label6" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="317px" ForeColor="White"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 22px; text-align: right; color: white;">
                                            Department/Section :</td>
                                        <td colspan="3" style="width: 926px; height: 22px">
                                            &nbsp; &nbsp;&nbsp;
                                            <asp:Label ID="Label5" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label></td>
                                        <td colspan="1" style="width: 926px; height: 22px; color: white;">
                                            Plant :<asp:Label ID="Label14" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 21px; text-align: right; color: white;">
                                            Area :</td>
                                        <td colspan="3" style="width: 926px; height: 21px">
                                            &nbsp;<asp:Label ID="Label15" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label></td>
                                        <td colspan="1" style="width: 926px; height: 21px; color: white;">
                                            Date Entry :<asp:Label ID="Label7" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 21px; text-align: right; color: white;">
                                            Potential savings :</td>
                                        <td colspan="3" style="width: 926px; height: 21px">
                                            &nbsp;<asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" Height="106px"
                                                TextMode="MultiLine" Width="427px" BackColor="#FFE0C0"></asp:TextBox></td>
                                        <td colspan="1" style="width: 926px; height: 21px; color: white;">
                                            Suggestion :<br />
                                            <asp:TextBox ID="label8" runat="server" Height="106px" TextMode="MultiLine"
                                                Width="352px" BackColor="#FFE0C0"></asp:TextBox></td>
                                    </tr>
                                     <tr>
                                        <td style="width: 194px; height: 21px; text-align: right; color: white;">
                                            1st Evaluation :</td>
                                        <td colspan="3" style="width: 926px; height: 21px">
                                            &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="72px"
                                                Width="424px" Font-Size="X-Large" ForeColor="Red" Font-Bold="True" BackColor="#80FF80"></asp:TextBox></td>
                                         <td colspan="1" style="width: 926px; height: 21px; color: white;">
                                             Comments:<br />
                                             <asp:TextBox ID="TextBox1" runat="server" Height="112px" TextMode="MultiLine"
                                                Width="352px" BackColor="#80FF80"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 13px; text-align: right; color: white;">
                                            2nd Evaluation</td>
                                        <td colspan="3" style="width: 926px; height: 13px" valign="top">
                                            &nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="72px"
                                                Width="424px" Font-Size="X-Large" ForeColor="Red" Font-Bold="True" BackColor="#FF8000"></asp:TextBox></td>
                                        <td colspan="1" style="width: 926px; height: 13px; color: white;">
                                            Comments:<br />
                                            <asp:TextBox ID="TextBox2" runat="server" Height="112px" TextMode="MultiLine"
                                                Width="352px" BackColor="#FF8000"></asp:TextBox></td>
                                    </tr>
           
                                    <tr>
                                        <td style="width: 194px; text-align: right; color: white; height: 233px;">
                                            </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 233px;">
                                            &nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Blue" Text="View Attach File If Any."
                                                Width="189px"></asp:Label>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ImageID"
                                                DataSourceID="SqlDataSource1" Height="80px" OnRowCommand="GridView1_RowCommand"
                                                Style="font-size: 8pt; left: 176px; font-family: Tahoma;
                                                top: 724px" Width="424px">
                                                <RowStyle ForeColor="#000066" />
                                                <Columns>
                                                    <asp:BoundField DataField="ImageID" HeaderText="ID" InsertVisible="False" SortExpression="ImageID">
                                                        <ItemStyle Width="50px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                                                   
                                                    
                                                    
                                                    <asp:ButtonField ButtonType="Button" CommandName="Dwn" Text="View">
                                                        <ItemStyle Width="50px" />
                                                    </asp:ButtonField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                                            </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 233px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; text-align: right; color: white;">
                                            Final Evaluation<br />
                                            (Comments):</td>
                                        <td colspan="3" rowspan="" style="width: 926px; height: 11px; color: white;">
                                            ************************************************************************************&nbsp;<br />
                                            <asp:TextBox ID="TextBox6" runat="server" Height="112px" TextMode="MultiLine"
                                                Width="428px" BackColor="Yellow" ForeColor="Black"></asp:TextBox></td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 11px">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; text-align: right; color: white;">
                                            </td>
                                        <td colspan="3" rowspan="" style="width: 926px; height: 11px;">
                                            &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red" Style="font-weight: bold;
                                                font-size: 10pt; font-family: arial" Width="402px"></asp:Label></td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 11px">
                                        </td>
                                    </tr>
                                     <tr>
                                        <td style="width: 194px; text-align: right; color: white;">
                                            </td>
                                        <td colspan="3" rowspan="" style="width: 926px; height: 11px;">
                                            &nbsp;<asp:Button ID="Button1" runat="server" Height="27px" Style="font: menu" Text="APPROVED"
                                                Width="88px" />
                                            <asp:Button ID="Button3" runat="server" Height="26px" Style="font: menu"
                                                Text="DISAPPROVED" Width="96px" />
                                            <asp:Button ID="Button2" runat="server" Height="26px" Style="font: menu"
                                                Text="FOR STUDY" Width="96px" />
                                            <asp:Button ID="Button4" runat="server" Height="27px" Style="font: menu" Text="Back"
                                                Width="88px" /></td>
                                         <td colspan="1" rowspan="1" style="width: 926px; height: 11px">
                                         </td>
                                    </tr>
                                    
                                    <tr>
                                        <td style="width: 194px; text-align: right; color: white;">
                                            </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 11px;">
                                            &nbsp;
                                            </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 11px">
                                        </td>
                                    </tr>
                                    
                                     <tr>
                                        <td style="width: 194px; text-align: right; color: white;">
                                            </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 11px;">
                                            &nbsp;</td>
                                         <td colspan="1" rowspan="1" style="width: 926px; height: 11px">
                                         </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; text-align: right; color: white;">
                                <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label></td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 11px;">
                                            &nbsp;&nbsp;
                                            <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Label" Visible="False"></asp:Label><br />
                                            <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Label" Visible="False"></asp:Label><br />
                                            <asp:Label ID="Label18" runat="server" ForeColor="White" Text="Label" Visible="False"></asp:Label></td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 11px">
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td style="width: 194px; height: 8px" colspan="" rowspan="">
                                            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label
                                    ID="Label13" runat="server" Font-Bold="True" Text="Label" Visible="False" Width="53px"></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <asp:SqlDataSource
                ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString6 %>"
                DeleteCommand="DELETE FROM [tbl_image] WHERE [imageid] = @original_imageid AND [imagename] = @original_imagename AND [imageurl] = @original_imageurl AND [imageowner] = @original_imageowner AND [imagedate] = @original_imagedate AND [imagepipno] = @original_imagepipno"
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
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                                            <br />
                                <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 8px">
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 8px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 14px">
                                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                        </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 14px">
                                            &nbsp; &nbsp; &nbsp;&nbsp;
                                        </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 14px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 15px">
                                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                        </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 15px">
                                            &nbsp;
                                        </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 15px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 4px">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                        </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 4px">
                                            &nbsp;
                                        </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 4px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 194px; height: 4px">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                        </td>
                                        <td colspan="3" rowspan="1" style="width: 926px; height: 4px">
                                            &nbsp;
                                        </td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 4px">
                                        </td>
                                    </tr>
                                </table>
                                    </h3>
                                <br />
                                <br />
                                <br />
                                &nbsp;<br />
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
                        </div>
		<div class="clear">
            <br />
            <br />
            &nbsp;</div>
    </div>
    <!-- content ends -->
    <div id="cont_bot"></div>
    <!-- footer begins -->
    <div id="footer" style="height: 64px">
  Copyright  2012. PKI | MIS Department<br />
		<a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></div>
<!-- footer ends -->
</div>
</div>
</div>
</form> 
</body>

</html>
