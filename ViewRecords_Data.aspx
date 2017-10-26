<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewRecords_Data.aspx.vb" Inherits="ViewRecords_Data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong><span style="font-family: Arial">
            <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute;
                top: 714px" />
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
            <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
                position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
                Width="100%"></asp:Label>
            <img src="Images/bg_groupbar_01.gif" style="left: 0px; width: 100%; position: absolute;
                top: 764px; height: 20px" />
            <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
            Record View<br />
            &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1"
                ForeColor="Black" GridLines="Vertical" Height="1px" Style="font-size: 8pt; font-family: Arial"
                Width="1800px">
                <FooterStyle BackColor="#CCCC99" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pip_no" HeaderText="NO." InsertVisible="False" ReadOnly="True"
                        SortExpression="pip_no">
                        <ItemStyle Width="30px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_loginid" HeaderText="USER" SortExpression="pip_loginid">
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_department" HeaderText="DEPARTMENT" SortExpression="pip_department">
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_suggest" HeaderText="SUGGESTION" SortExpression="pip_suggest">
                        <ItemStyle Width="600px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_savings" HeaderText="SAVINGS" SortExpression="pip_savings" DataFormatString="{0:N2}" HtmlEncode="False" >
                        <ItemStyle Width="100px" HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_remarks" HeaderText="REMARKS" SortExpression="pip_remarks">
                        <ItemStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_reason" HeaderText="REASON" SortExpression="pip_reason">
                        <ItemStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_date" DataFormatString="{0:d}" HeaderText="DATE" HtmlEncode="False"
                        SortExpression="pip_date">
                        <ItemStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pip_approvedby" HeaderText="APPROVED BY" SortExpression="pip_approvedby">
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString5 %>"
                SelectCommand="SELECT [pip_no], [pip_loginid], [pip_department], [pip_suggest], [pip_savings], [pip_remarks], [pip_reason], [pip_date], [pip_approvedby] FROM [pip_data] WHERE (([pip_date] >= @pip_date) AND ([pip_date] <= @pip_date2) AND ([pip_department] = @pip_department) AND ([pip_status] = @pip_status))">
                <SelectParameters>
                    <asp:SessionParameter Name="pip_date" SessionField="vrdate1" Type="DateTime" />
                    <asp:SessionParameter Name="pip_date2" SessionField="vrdate2" Type="DateTime" />
                    <asp:SessionParameter Name="pip_department" SessionField="vrdatedept" Type="String" />
                    <asp:SessionParameter Name="pip_status" SessionField="vrdatestatus1" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </span></strong></div>
        <br />
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Back" />
        <asp:Button ID="Button2" runat="server" Text="Convert to excel" />
    </form>
</body>
</html>
