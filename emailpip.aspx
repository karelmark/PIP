<%@ Page Language="VB" AutoEventWireup="false" CodeFile="emailpip.aspx.vb" Inherits="emailpip" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="border-right: 1px solid; border-top: 1px solid; left: 296px;
            border-left: 1px solid; width: 485px; border-bottom: 1px solid; position: absolute;
            top: 248px; height: 438px">
            <tr>
                <td align="center" colspan="2" style="height: 28px">
                    <b>Send Mail </b>
                </td>
            </tr>
            <tr>
                <td>
                    From:
                </td>
                <td>
                    <asp:TextBox ID="txtFrom" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    To:
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>
                    Subject:
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server" Width="320px">Pip User Request Verification</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Message:</td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server" Columns="30" Height="115px" Rows="10" TextMode="MultiLine"
                        Width="464px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 33px">
                </td>
                <td style="height: 33px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Send" Width="88px" Height="32px" />&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Close" Width="88px" Height="32px" /></td>
            </tr>
        </table>
        <img src="images2/Email-Icon.jpg" style="width: 216px; height: 208px" />
        <img src="images2/kao_logo_type_c_en_black.png" /><br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Visible="False">label</asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Visible="False">label</asp:TextBox><br />
        <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black" Visible="False">label</asp:TextBox><br />
    
    </div>
    </form>
</body>
</html>
