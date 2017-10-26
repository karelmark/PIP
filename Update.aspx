<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Update.aspx.vb" Inherits="Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div nowrap="nowrap">
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <br />
            <table style="font-size: 12px; left: 10px; width: 735px; font-family: Arial; position: absolute;
                top: 191px; background-color: inactivecaptiontext">
                <tr>
                    <td style="width: 155px; height: 17px">
                        PIP No.</td>
                    <td colspan="3" style="width: 830px; height: 17px">
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="39px">0</asp:TextBox>
                        <asp:TextBox ID="TextBox11" runat="server" Width="41px"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red" Text="UPDATE RECORD"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 24px">
                        Name of Proponent :&nbsp;</td>
                    <td colspan="3" style="width: 830px; height: 24px">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="313px"></asp:TextBox>
                        &nbsp; &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 21px">
                        Department/Section :</td>
                    <td colspan="3" style="width: 830px; height: 21px">
                        <asp:DropDownList ID="dplist" runat="server" DataSourceID="SqlDataSource1" DataTextField="Department"
                            DataValueField="Department" Width="317px" AutoPostBack="True">
                        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString8 %>"
                            SelectCommand="SELECT [department] FROM [tbl_department] ORDER BY [department]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 19px">
                        Date Entry :</td>
                    <td colspan="3" style="width: 830px; height: 19px">
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="94px"></asp:TextBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td rowspan="3" style="width: 155px">
                        What is your suggestion :</td>
                    <td colspan="3" rowspan="3" style="width: 830px">
                        <asp:TextBox ID="TextBox5" runat="server" Height="123px" TextMode="MultiLine"
                            Width="545px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td style="width: 155px; height: 29px">
                        Potential savings :</td>
                    <td colspan="3" rowspan="1" style="width: 830px; height: 29px">
                        <asp:TextBox ID="TextBox7" runat="server" Width="178px"></asp:TextBox>
                                <asp:RegularExpressionValidator runat ="server" ID="valnumbersonly" ControlToValidate ="TextBox7" Display ="Dynamic" ErrorMessage ="Please enter numbers only." ValidationExpression ="(^([0-9]*|\d*\d{1}?\d*)$)" style="left: 318px; top: 490px; font-size: 10pt; font-family: arial;" Width="331px"></asp:RegularExpressionValidator>
              
                        </td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 29px">
                        Drawing : (attached image)</td>
                    <td colspan="3" rowspan="1" style="width: 830px; height: 29px">
                        <asp:FileUpload ID="FileUpload1" runat="server" Enabled="False" Height="24px" Style="font: menu"
                            Width="402px" /><asp:Button ID="Button4" runat="server" Height="24px" Style="font: menu"
                                Text="Upload & Save" Width="105px" /></td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 39px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button5" runat="server" Height="27px"
                            Style="left: 33px; font: menu; position: static; top: 562px" Text="Preview Image"
                            Width="115px" /><br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" Height="27px" Style="left: 32px; font: menu;
                            top: 593px" Text="Remove Image" Width="116px" /><br />
                        &nbsp; &nbsp; &nbsp; &nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                    <td colspan="3" rowspan="1" style="width: 830px; height: 39px">
                        &nbsp;<asp:Image ID="Image1" runat="server" Height="148px" Width="137px" />
                        <asp:Image ID="Image2" runat="server" Height="148px" Width="137px" />
                        <asp:Image ID="Image3" runat="server" Height="148px" Width="137px" />
                        <asp:Image ID="Image4" runat="server" Height="148px" Width="137px" /></td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 29px">
                        <asp:Label ID="Label2" runat="server" Height="12px" Text="Label" Visible="False"
                            Width="151px"></asp:Label></td>
                    <td colspan="3" rowspan="1" style="width: 830px; height: 29px">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Width="430px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 155px; height: 38px">
                        &nbsp; &nbsp; &nbsp;
                    </td>
                    <td colspan="3" rowspan="1" style="width: 830px; height: 38px">
                        <asp:Button ID="Button2" runat="server" Height="27px" Style="font: menu"
                            Text="Update" Width="68px" />
                        &nbsp;<asp:Button ID="Button1" runat="server" Height="27px" Style="font: menu" Text="Reset"
                            Width="66px" />
                        &nbsp;<asp:Button ID="Button3" runat="server" Height="26px" Style="font: menu" Text="Back"
                            Width="65px" />
                        <asp:Button ID="Button7" runat="server" Height="26px" Style="font: menu" Text="Main"
                            Width="65px" /></td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <img height="135" src="Images/chemist.jpg" style="left: 522px; position: absolute;
                top: 10px" width="155" />
            <br />
            <asp:Label ID="Label4" runat="server" Height="135px" Style="font-weight: bold; font-size: 13pt;
                left: 369px; vertical-align: text-bottom; color: white; font-family: arial; position: absolute;
                top: 11px; background-color: #228b84; text-align: right" Width="149px"></asp:Label>
            <asp:Label ID="lblTitle" runat="server" Font-Size="XX-Large" Style="font-weight: bold;
                font-size: 9pt; left: 380px; color: white; font-family: arial; position: absolute;
                top: 107px; background-color: transparent" Text="PKI Innovation Program" Width="386px"></asp:Label>
            <img id="IMG1" language="javascript" onclick="return IMG1_onclick()" src="Images/kao%20logo%20big.jpg"
                style="left: 33px; width: 318px; position: absolute; top: 35px; height: 97px" />
            <asp:Label ID="lblTitle2" runat="server" BorderColor="Red" BorderStyle="None" ForeColor="White"
                Height="25px" Style="font-weight: bold; font-size: 12pt; left: 456px; font-family: arial;
                position: absolute; top: 125px" Text="UPDATE" Width="121px"></asp:Label>
            &nbsp;<br />
            <asp:Label ID="Label3" runat="server" Style="font-weight: bold; font-size: 10pt;
                color: red; font-family: arial" Text="Label" Width="605px"></asp:Label><br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            &nbsp;<br />
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
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox6" runat="server" Visible="False">suggestion</asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" Visible="False">23443</asp:TextBox><br />
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
