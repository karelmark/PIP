<%@ Page Language="VB" AutoEventWireup="false" CodeFile="image.aspx.vb" Inherits="image" %>

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
          <li class="first"><a href="Default.aspx"  title="" class="active">home</a></li>
          <li></li>
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
            <asp:Button ID="Button1" runat="server" Text="Back" style="left: 65px; position: absolute; top: 92px" Height="25px" Width="56px" />
                                <div class="wrapper indent-bot2" style="left: 8px; top: 66px">
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
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                <br />
                                <br />
                            </div>
            <br />
            <asp:Label ID="Label1" runat="server" Style="font: caption; color: red" Width="605px"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ImageID"
                DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand" Height="164px" Style="font-size: 8pt; left: 74px;
                font-family: Tahoma; position: absolute; top: 122px" Width="653px">
                <RowStyle ForeColor="#000066" />
                <Columns>
                    <asp:BoundField DataField="ImageID" HeaderText="ID" InsertVisible="False" SortExpression="ImageID">
                        <ItemStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                    <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL">
                        <ItemStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ImageOwner" HeaderText="ImageOwner" SortExpression="ImageOwner" />
                    <asp:BoundField DataField="ImageDate" HeaderText="ImageDate" SortExpression="ImageDate" />
                    <asp:ButtonField ButtonType="Button" CommandName="Dwn" Text="View" >
                        <ItemStyle Width="50px" />
                    </asp:ButtonField>
                    
                        
                   
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            <asp:SqlDataSource
                ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
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
