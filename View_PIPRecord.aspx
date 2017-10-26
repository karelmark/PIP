<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View_PIPRecord.aspx.vb" Inherits="View_PIPRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp;&nbsp;
        <br />
        <table style="font-size: 8pt; left: 12px; width: 724px; font-family: Arial; position: absolute;
            top: 147px">
            <tr>
                <td style="width: 100px; height: 19px">
                    <span style="font-size: 8pt">PIP No.</span></td>
                <td style="width: 100px; height: 19px">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="128px"></asp:TextBox></td>
                <td style="width: 87px; height: 19px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <span style="font-size: 8pt">Login ID</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="128px"></asp:TextBox></td>
                <td style="width: 87px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px; height: 15px">
                    D<span style="font-size: 8pt">epartment</span></td>
                <td style="width: 100px; height: 15px">
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="127px"></asp:TextBox></td>
                <td style="width: 87px; height: 15px">
                </td>
                
            </tr>
             <tr>
                <td style="width: 13px; height: 15px">
                    Plant</td>
                <td style="width: 100px; height: 15px">
                    <asp:TextBox ID="TextBox12" runat="server" Enabled="False" Width="127px"></asp:TextBox></td>
                <td style="width: 87px; height: 15px">
                </td>
            </tr>
             <tr>
                <td style="width: 13px; height: 15px">
                    Area</td>
                <td style="width: 100px; height: 15px">
                    <asp:TextBox ID="TextBox13" runat="server" Enabled="False" Width="127px"></asp:TextBox></td>
                <td style="width: 87px; height: 15px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px">
                    <span style="font-size: 8pt">Suggestion</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="128px" Width="410px" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px; height: 21px">
                    Savings</td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px; height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 19px">
                    PIP Status</td>
                <td style="width: 100px; height: 19px">
                    <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px; height: 19px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px">
                    Remarks</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px">
                    Reason</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox8" runat="server" Enabled="False" Height="55px" TextMode="MultiLine" Width="409px"></asp:TextBox></td>
                <td style="width: 87px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px">
                    Date</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px">
                </td>
            </tr>
            <tr>
                <td style="width: 13px; height: 26px;">
                    Time</td>
                <td style="width: 100px; height: 26px;">
                    <asp:TextBox ID="TextBox10" runat="server" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px; height: 26px;">
                </td>
            </tr>
            <tr>
                <td style="width: 13px; height: 30px;">
                    Image No.</td>
                <td style="width: 100px; height: 30px;">
                    <asp:TextBox ID="TextBox11" runat="server" Enabled="False"></asp:TextBox></td>
                <td style="width: 87px; height: 30px;">
                </td>
            </tr>
            <tr>
                <td style="width: 13px; height: 19px;">
                </td>
                <td style="width: 100px; height: 19px;">
                    &nbsp;
                </td>
                <td style="width: 87px; height: 19px;">
                </td>
            </tr>
            <tr>
                <td style="width: 13px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Height="32px" Style="font: menu; left: 131px; top: 522px;" Text="View Image(s)"
                        Width="87px" />
                    <asp:Button ID="Button2" runat="server" Height="32px" Style="font: menu; left: 221px; top: 522px;" Text="Delete"
                        Width="87px" />
                    <asp:Button ID="Button3" runat="server" Height="32px" Style="font: menu; left: 311px; top: 522px;" Text="Back"
                        Width="87px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 87px">
                </td>
            </tr>
        </table>
        <br />
        <br />
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
    </form>
</body>
</html>
