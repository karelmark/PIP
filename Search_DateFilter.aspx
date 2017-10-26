<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search_DateFilter.aspx.vb" Inherits="Search_DateFilter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
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
        <table style="font: caption">
            <tr>
                <td style="width: 117px">
                    <span style="font-size: 8pt">Show Records</span></td>
                <td style="width: 211px">
                    <asp:Label ID="Label1" runat="server" Style="color: red" Width="238px"></asp:Label></td>
                <td style="width: 165px">
                </td>
            </tr>
            <tr>
                <td style="width: 117px">
                    <span style="font-size: 8pt">Date From :</span></td>
                <td style="width: 211px">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="128px" style="background-color: white"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="..." Width="30px" /></td>
                <td style="width: 165px">
                </td>
            </tr>
            <tr>
                <td style="width: 117px; height: 27px">
                    <span style="font-size: 8pt">Date To :</span></td>
                <td style="width: 211px; height: 27px">
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="128px" style="background-color: white"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Text="..." Width="30px" /></td>
                <td style="width: 165px; height: 27px">
                    <asp:Button ID="Button2" runat="server" Height="24px" Style="font: menu" Text="Search"
                        Width="54px" />
                    <asp:Button ID="Button4" runat="server" Height="24px" Style="font: menu" Text="Back"
                        Width="54px" /></td>
            </tr>
            <tr>
                <td style="width: 117px">
                </td>
                <td style="width: 211px">
                    <asp:Calendar ID="cal1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                        Height="161px" Visible="False" Width="228px">
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    </asp:Calendar>
                    <asp:Calendar ID="Cal2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                        Height="161px" Visible="False" Width="228px">
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="Gray" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    </asp:Calendar>
                </td>
                <td style="width: 165px">
                </td>
            </tr>
        </table>
    
    </div>
        <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute;
            top: 714px" />
        <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
            position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
            Width="100%"></asp:Label>
        <img src="Images/bg_groupbar_01.gif" style="left: 0px; width: 100%; position: absolute;
            top: 764px; height: 20px" />
        <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
    </form>
</body>
</html>
