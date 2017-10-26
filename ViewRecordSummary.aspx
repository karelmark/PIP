<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewRecordSummary.aspx.vb" Inherits="ViewRecordSummary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <strong><span style="font-family: Arial">
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
                    Record Summary Total<br />
                    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="1px"
                        Style="font-size: 8pt; font-family: Arial" Width="394px">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="pip_loginid" HeaderText="USERNAME" SortExpression="pip_loginid">
                                <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="xidno2" HeaderText="QTY OF SUGGESTION" SortExpression="xidno2">
                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pip_department" HeaderText="DEPARTMENT" SortExpression="pip_department" />
                        </Columns>
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString5 %>"
                        SelectCommand="SELECT pip_loginid, COUNT(pip_loginid) AS xidno2, pip_department FROM pip_data WHERE (pip_date >= @pip_date) AND (pip_date <= @pip_date2) AND (pip_status = @pip_status) GROUP BY pip_loginid, pip_department ORDER BY xidno2">
                        <SelectParameters>
                            <asp:SessionParameter Name="pip_date" SessionField="vrdate1" Type="DateTime" />
                            <asp:SessionParameter Name="pip_date2" SessionField="vrdate2" Type="DateTime" />
                            <asp:SessionParameter Name="pip_status" SessionField="vrdatestatus1" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </span></strong>
            </div>
            <br />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Back" />
            <asp:Button ID="Button2" runat="server" Text="Convert to excel" />
            <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute;
                top: 714px" />
            <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
                position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
                Width="100%"></asp:Label>
            <img src="Images/bg_groupbar_01.gif" style="left: 0px; width: 100%; position: absolute;
                top: 764px; height: 20px" />
            <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
        </div>
    
    </div>
    </form>
</body>
</html>
