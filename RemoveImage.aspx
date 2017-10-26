<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RemoveImage.aspx.vb" Inherits="RemoveImage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" Height="135px" Style="font-weight: bold; font-size: 13pt;
            left: 369px; vertical-align: text-bottom; color: white; font-family: arial; position: absolute;
            top: 11px; background-color: #228b84; text-align: right" Width="149px"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" Font-Size="XX-Large" Style="font-weight: bold;
            font-size: 9pt; left: 382px; color: white; font-family: arial; position: absolute;
            top: 123px; background-color: transparent" Text="PKI Innovation Program" Width="386px"></asp:Label>
        <img id="IMG1" language="javascript" onclick="return IMG1_onclick()" src="Images/kao%20logo%20big.jpg"
            style="left: 33px; width: 318px; position: absolute; top: 35px; height: 97px" />
        <img height="135" src="Images/GreenChem.jpg" style="left: 523px; position: absolute;
            top: 11px" width="155" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Back" />
        <asp:Label ID="Label1" runat="server" Style="font: caption; color: red" Width="605px"></asp:Label><br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1"
            Style="left: 33px; position: absolute; top: 260px; font-size: 8pt; font-family: Tahoma;" Width="724px" AutoGenerateColumns="False" DataKeyNames="ImageID">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="ImageID" HeaderText="ID" InsertVisible="False" SortExpression="ImageID" >
                    <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL" >
                    <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="ImageOwner" HeaderText="ImageOwner" SortExpression="ImageOwner" />
                <asp:BoundField DataField="ImageDate" HeaderText="ImageDate" SortExpression="ImageDate" />
                <asp:ButtonField ButtonType="Button" CommandName="View" Text="View" >
                    <ItemStyle Width="50px" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" >
                    <ItemStyle Width="60px" />
                </asp:ButtonField>
            </Columns>
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
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
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
            SelectCommand="SELECT [imageid], [imagename], [imageurl], [imageowner], [imagedate], [imagepipno] FROM [tbl_image] WHERE ([imagepipno] = @imagepipno)" DeleteCommand="DELETE FROM [tbl_image] WHERE [imageid] = @original_imageid AND [imagename] = @original_imagename AND [imageurl] = @original_imageurl AND [imageowner] = @original_imageowner AND [imagedate] = @original_imagedate AND [imagepipno] = @original_imagepipno" InsertCommand="INSERT INTO [tbl_image] ([imagename], [imageurl], [imageowner], [imagedate], [imagepipno]) VALUES (@imagename, @imageurl, @imageowner, @imagedate, @imagepipno)" UpdateCommand="UPDATE [tbl_image] SET [imagename] = @imagename, [imageurl] = @imageurl, [imageowner] = @imageowner, [imagedate] = @imagedate, [imagepipno] = @imagepipno WHERE [imageid] = @original_imageid AND [imagename] = @original_imagename AND [imageurl] = @original_imageurl AND [imageowner] = @original_imageowner AND [imagedate] = @original_imagedate AND [imagepipno] = @original_imagepipno" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter Name="imagepipno" SessionField="pip_no" Type="String" />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute;
            top: 714px" />
        <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
            position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
            Width="100%"></asp:Label>
        <img src="Images/bg_groupbar_01.gif" style="left: 0px; width: 100%; position: absolute;
            top: 764px; height: 20px" />
        <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
    
    </div>
    </form>
</body>
</html>
