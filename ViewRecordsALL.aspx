<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewRecordsALL.aspx.vb" Inherits="ViewRecordsALL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <span style="font-family: Arial"><strong>
                <div>
                    <asp:Label ID="Label4" runat="server" Style="font-weight: bold; font-size: 15pt;
                        left: 11px; color: black; font-family: arial; position: absolute; top: 157px;
                        background-color: transparent" Text="ADMIN RECORD SEARCH ALL" Width="334px"></asp:Label>
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
                    <span style="font-size: 9pt">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </span><span style="font-size: 8pt; font-family: Arial">
                        <table style="font-size: 9pt; font: caption; font-family: Arial">
                            <tr>
                                <td style="width: 114px; height: 20px">
                                    <span><span style="font-size: 8pt"><span>Show Re</span><span style="font-size: 9pt">cords</span></span></span></td>
                                <td style="font-size: 9pt; width: 211px; height: 20px">
                                    <asp:Label ID="Label1" runat="server" Style="color: red" Width="238px"></asp:Label></td>
                                <td style="font-size: 8pt; width: 165px; height: 20px">
                                </td>
                            </tr>
                            <tr style="font-size: 8pt; font-family: Arial">
                                <td style="width: 114px; height: 28px">
                                    <span><span>Date</span> From :</span></td>
                                <td style="width: 211px; height: 28px">
                                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Style="font-weight: bold;
                                        color: black; background-color: white" Width="128px"></asp:TextBox><asp:Button ID="Button1"
                                            runat="server" Text="..." Width="30px" /></td>
                                <td style="width: 165px; height: 28px">
                                </td>
                            </tr>
                            <tr style="font-family: Arial">
                                <td style="width: 114px; height: 27px">
                                    <span style="font-size: 8pt"><span style="font-size: 9pt">Da</span>te To :</span></td>
                                <td style="width: 211px; height: 27px">
                                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Style="font-weight: bold;
                                        font-size: 11pt; color: black; font-family: arial; background-color: white" Width="128px"></asp:TextBox><asp:Button
                                            ID="Button3" runat="server" Text="..." Width="30px" /></td>
                                <td style="width: 165px; height: 27px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 114px">
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
                            <tr style="font-size: 8pt; font-family: Arial">
                                <td style="width: 114px">
                                    Filter by :</td>
                                <td style="width: 211px">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Style="font-size: 8pt; font-family: arial"
                                        Width="151px">
                                        <asp:ListItem>PENDING</asp:ListItem>
                                        <asp:ListItem>APPROVED</asp:ListItem>
                                        <asp:ListItem>DISAPPROVED</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 165px">
                                    &nbsp;<asp:Button ID="Button2" runat="server" Height="24px" Style="font: menu" Text="Search"
                                        Width="63px" />
                                    <asp:Button ID="Button4" runat="server" Height="24px" Style="font: menu" Text="Back"
                                        Width="64px" /></td>
                            </tr>
                        </table>
                    </span>
                </div>
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
            </strong></span>
        </div>
    
    </div>
    </form>
</body>
</html>
