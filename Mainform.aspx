<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Mainform.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Label ID="Label4" runat="server" Style="font-weight: bold; font-size: 13pt;
            left: 369px; color: white; font-family: arial; position: absolute; top: 11px;
            background-color: #228b84; vertical-align: text-bottom; text-align: right;" Width="149px" Height="135px"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" Font-Size="XX-Large" Style="font-weight: bold;
            font-size: 9pt; left: 380px; color: white; font-family: arial; position: absolute;
            top: 107px; background-color: transparent" Text="PKI Innovation Program" Width="386px"></asp:Label>
        <br />
        <div style="text-align: center">
            &nbsp;</div>
                        <asp:Button ID="Button3" runat="server" Text="Admin" Width="142px" style="left: 20px; position: absolute; top: 178px; font-weight: bold; font-size: 10pt; font-family: arial; text-align: left;" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Logout" style="left: 20px; position: absolute; top: 281px; font-weight: bold; font-size: 10pt; font-family: arial; text-align: left;" Width="142px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <img id="IMG1" language="javascript" onclick="return IMG1_onclick()" src="Images/kao%20logo%20big.jpg"
            style="left: 33px; width: 318px; position: absolute; top: 35px; height: 97px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <asp:Button ID="Button5" runat="server" Text="PIP Entry" style="left: -158px; position: absolute; top: -197px" />
        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="PIP Entry" Width="142px" style="left: 20px; position: absolute; top: 211px; font-weight: bold; font-size: 10pt; font-family: arial; text-align: left;" /><asp:Button ID="Button7" runat="server" Text="Search / View " Width="142px" style="left: 20px; position: absolute; top: 246px; font-weight: bold; font-size: 10pt; font-family: arial; text-align: left;" />
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="left: 18px; position: absolute;
            top: 337px" Visible="False"></asp:TextBox>
        <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute;
            top: 714px" />
        <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
            position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
            Width="100%"></asp:Label>
        <img src="Images/bg_groupbar_01.gif" style="left: 0px; width: 100%; position: absolute;
            top: 764px; height: 20px" />
        <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
        &nbsp; &nbsp;<br />
        &nbsp;<br />
        <asp:Label ID="lblTitle2" runat="server" BorderColor="Red" BorderStyle="None" ForeColor="White"
            Height="25px" Style="font-weight: bold; font-size: 12pt; left: 465px; font-family: arial;
            position: absolute; top: 125px" Text="HOME" Width="64px"></asp:Label>
        &nbsp;
        <img src="Images/77.-Computer-Financing-For-Bad-Credit.jpg" style="left: 522px; width: 155px; position: absolute; top: 11px; height: 135px" /></div>
    </form>
</body>
</html>
