<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search_View.aspx.vb" Inherits="Search_View" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="pip_no" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None"
            Height="137px" Style="font-size: 8pt; left: 16px; font-family: Tahoma; position: absolute;
            top: 273px" Width="817px" PageSize="5">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="pip_no" HeaderText="No." InsertVisible="False" ReadOnly="True"
                    SortExpression="pip_no" />
                <asp:BoundField DataField="pip_loginid" HeaderText="ID" SortExpression="pip_loginid" />
                <asp:BoundField DataField="pip_suggest" HeaderText="Suggestion" SortExpression="pip_suggest" >
                    <ItemStyle Width="1000px" />
                </asp:BoundField>
                <asp:BoundField DataField="pip_savings" HeaderText="Savings" SortExpression="pip_savings" />
                <asp:BoundField DataField="pip_status" HeaderText="Status" SortExpression="pip_status" />
                <asp:BoundField DataField="pip_date" HeaderText="Date" SortExpression="pip_date" >
                    <ItemStyle Width="500px" />
                </asp:BoundField>
                <asp:ButtonField ButtonType="Button" CommandName="View" Text="View" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" Text="Update" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString5 %>" DeleteCommand="DELETE FROM [pip_data] WHERE [pip_no] = @original_pip_no AND [pip_loginid] = @original_pip_loginid AND [pip_suggest] = @original_pip_suggest AND [pip_savings] = @original_pip_savings AND [pip_status] = @original_pip_status AND [pip_date] = @original_pip_date"
            
            InsertCommand="INSERT INTO [pip_data] ([pip_loginid], [pip_suggest], [pip_savings], [pip_status], [pip_date]) VALUES (@pip_loginid, @pip_suggest, @pip_savings, @pip_status, @pip_date)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [pip_no], [pip_loginid], [pip_suggest], [pip_savings], [pip_status], [pip_date] FROM [pip_data] WHERE (([pip_date] >= @pip_date) AND ([pip_date] <= @pip_date2) AND ([pip_loginid] = @pip_loginid))"
            
            UpdateCommand="UPDATE [pip_data] SET [pip_loginid] = @pip_loginid, [pip_suggest] = @pip_suggest, [pip_savings] = @pip_savings, [pip_status] = @pip_status, [pip_date] = @pip_date WHERE [pip_no] = @original_pip_no AND [pip_loginid] = @original_pip_loginid AND [pip_suggest] = @original_pip_suggest AND [pip_savings] = @original_pip_savings AND [pip_status] = @original_pip_status AND [pip_date] = @original_pip_date">
            <DeleteParameters>
                <asp:Parameter Name="original_pip_no" Type="Int64" />
                <asp:Parameter Name="original_pip_loginid" Type="String" />
                <asp:Parameter Name="original_pip_suggest" Type="String" />
                <asp:Parameter Name="original_pip_savings" Type="String" />
                <asp:Parameter Name="original_pip_status" Type="String" />
                <asp:Parameter Name="original_pip_date" Type="DateTime" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="pip_loginid" Type="String" />
                <asp:Parameter Name="pip_suggest" Type="String" />
                <asp:Parameter Name="pip_savings" Type="String" />
                <asp:Parameter Name="pip_status" Type="String" />
                <asp:Parameter Name="pip_date" Type="DateTime" />
                <asp:Parameter Name="original_pip_no" Type="Int64" />
                <asp:Parameter Name="original_pip_loginid" Type="String" />
                <asp:Parameter Name="original_pip_suggest" Type="String" />
                <asp:Parameter Name="original_pip_savings" Type="String" />
                <asp:Parameter Name="original_pip_status" Type="String" />
                <asp:Parameter Name="original_pip_date" Type="DateTime" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="pip_date" SessionField="searchdate1" Type="DateTime" />
                <asp:SessionParameter Name="pip_date2" SessionField="searchdate2" Type="DateTime" />
                <asp:SessionParameter Name="pip_loginid" SessionField="name" Type="String" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="pip_loginid" Type="String" />
                <asp:Parameter Name="pip_suggest" Type="String" />
                <asp:Parameter Name="pip_savings" Type="String" />
                <asp:Parameter Name="pip_status" Type="String" />
                <asp:Parameter Name="pip_date" Type="DateTime" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp; &nbsp;<br />
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
        <img height="135" src="Images/GreenChem.jpg" style="left: 522px; position: absolute;
            top: 9px" width="155" />
        <br />
        <br />
        &nbsp; &nbsp;&nbsp;<br />
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString4 %>"
            SelectCommand="SELECT [pip_no], [pip_loginid], [pip_suggest], [pip_savings], [pip_status], [pip_date] FROM [pip_data] WHERE (([pip_date] >= @pip_date) AND ([pip_date] <= @pip_date2) AND ([pip_loginid] = @pip_loginid))">
            <SelectParameters>
                <asp:SessionParameter Name="pip_date" SessionField="searchdate1" Type="DateTime" />
                <asp:SessionParameter Name="pip_date2" SessionField="searchdate2" Type="DateTime" />
                <asp:SessionParameter Name="pip_loginid" SessionField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Back" Width="57px" style="font: menu" Height="24px" /></div>
    </form>
</body>
</html>
