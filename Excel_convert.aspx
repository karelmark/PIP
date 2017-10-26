<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Excel_Convert.aspx.vb" Inherits="Excel_Convert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            Width="257px">
            <Columns>
                <asp:BoundField DataField="dept_id" HeaderText="dept_id" InsertVisible="False" ReadOnly="True"
                    SortExpression="dept_id" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
            SelectCommand="SELECT * FROM [tbl_department]"></asp:SqlDataSource>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Images/error.jpg"
            Width="45px" /></div>
    </form>
</body>
</html>
