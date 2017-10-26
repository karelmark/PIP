<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewImage.aspx.vb" Inherits="ViewImage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Height="135px" Style="font-weight: bold; font-size: 13pt;
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
        <asp:Button ID="Button1" runat="server" Text="Back" />
        &nbsp;&nbsp;<span style="font-family: Tahoma"><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong><span style="font-family: Arial">IMAGE&nbsp;<br />
            </span></strong></span>
        <br />
        <asp:Label ID="Label1" runat="server" Style="font: caption" Text="Label" Width="673px"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Style="font: caption" Text="Label" Visible="False"
            Width="672px"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Width="98px"></asp:Label><br />
        <asp:Image ID="Image1" runat="server" Height="355px" Width="373px" />
        <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute;
            top: 714px" />
        <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
            position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
            Width="100%"></asp:Label>
        <img src="Images/bg_groupbar_01.gif" style="left: 0px; width: 100%; position: absolute;
            top: 764px; height: 20px" />
        <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
    </div>
    </form>
</body>
</html>
