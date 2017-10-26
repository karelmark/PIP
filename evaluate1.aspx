<%@ Page Language="VB" AutoEventWireup="false" CodeFile="evaluate1.aspx.vb" Inherits="evaluatevalidrec" %>

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
    	
		<table style="font-size: 12px; width: 912px; font-family: Arial; height: 991px; background-color: transparent">
                                    <tr>
                                        <td style="width: 193px; height: 253px; text-align: right; color: white; font-weight: bold;" valign="top">
                                            PIP No. :<br />
                                            <br />
                                            Name of Proponent :<br />
                                            <br />
                                            Has Suggestion to:<br />
                                            **********************<br />
                                            Department/Section :<br />
                                            <br />
                                            Plant :<br />
                                            <br />
                                            Area :<br />
                                            Date Entry<br />
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
                                        </td>
                                        <td colspan="2" style="width: 894px; height: 253px; color: white;" valign="top">
                                            &nbsp;
                                            <asp:Label ID="Label10" runat="server" BackColor="Transparent" BorderStyle="Inset" BorderWidth="1px"
                                                Text="Label" Width="35px" ForeColor="White"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="38px" ForeColor="White" Visible="False"></asp:Label><br />
                                            <asp:Label ID="Label6" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="317px" ForeColor="White"></asp:Label><br />
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Label ID="Label5" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label14" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label15" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label>
                                            <asp:Label ID="Label7" runat="server" BackColor="Transparent" BorderStyle="Inset"
                                                BorderWidth="1px" Text="Label" Width="319px" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Blue" Text="View Attach File if any."
                                                Width="189px"></asp:Label>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ImageID"
                                                DataSourceID="SqlDataSource1" Height="164px" OnRowCommand="GridView1_RowCommand"
                                                Style="font-size: 8pt; left: 176px; font-family: Tahoma;
                                                top: 724px" Width="288px">
                                                <RowStyle ForeColor="#000066" />
                                                <Columns>
                                                    <asp:BoundField DataField="Imagepipno" HeaderText="Image PIP No" InsertVisible="False" SortExpression="Imagepipno">
                                                        <ItemStyle Width="50px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                                                     <asp:BoundField DataField="Imageowner" HeaderText="ImageOwner" SortExpression="ImageOwner" />
                                                    
                                                    
                                                    
                                                    <asp:ButtonField ButtonType="Button" CommandName="Dwn" Text="View">
                                                        <ItemStyle Width="50px" />
                                                    </asp:ButtonField>
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                                            ******************************************************************************************<br />
                                            <br />
                                            <br />
                                            ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<br />
                                            1st Evaluator(Comments):<br />
                                            <asp:TextBox ID="TextBox1" runat="server" Height="112px" TextMode="MultiLine"
                                                Width="336px" BackColor="#C0FFC0"></asp:TextBox>
                                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Style="font-weight: bold;
                                                font-size: 10pt; font-family: arial" Width="336px"></asp:Label>
                                            &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="27px" Style="font: menu" Text="Accepted"
                                                Width="108px" />
                                            <asp:Button ID="Button3" runat="server" Height="26px" Style="font: menu"
                                                Text="Rejected" Width="108px" />
                                            <asp:Button ID="Button4" runat="server" Height="27px" Style="font: menu" Text="Back"
                                                Width="108px" />
                                            <asp:Button ID="Button2" runat="server" Height="27px" Text="Print"
                                                    Width="72px" /><br />
                                            +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<br />
                                            <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                            <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label></td>
                                        <td colspan="1" rowspan="1" style="width: 926px; color: white; height: 253px;" valign="top">
                                            Suggestion :<br />
                                            <asp:TextBox ID="label8" runat="server" Height="120px" TextMode="MultiLine"
                                                Width="427px" BackColor="#FFE0C0"></asp:TextBox><br />
                                            <br />
                                            Potensial Savings :<br />
                                            &nbsp;<asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" Height="120px"
                                                TextMode="MultiLine" Width="427px" BackColor="#FFE0C0"></asp:TextBox><br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 193px; height: 15px">
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                        </td>
                                        <td colspan="3" rowspan="1" style="width: 1026px; height: 15px">
                                            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label></td>
                                        <td colspan="1" rowspan="1" style="width: 926px; height: 15px">
                                        </td>
                                    </tr>
                                </table>
    	
		<div class="wrapper" style="left: 0px; width: 99%; top: -6px; height: 32px">
                            <div class="space4" style="left: 0px; width: 192px; top: 0px; height: 1px">
                                <h3>
                                    Innovation Program</h3>
                                <br />
                                <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label
                                    ID="Label13" runat="server" Font-Bold="True" Text="Label" Visible="False" Width="53px"></asp:Label><br />
                                <br />
                                        <asp:SqlDataSource
                ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString31 %>"
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
