<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
<!--

function IMG1_onclick() {

}

// -->
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <asp:Label ID="Label2" runat="server" Height="135px" Style="font-weight: bold; font-size: 13pt;
            left: 369px; vertical-align: text-bottom; color: white; font-family: arial; position: absolute;
            top: 11px; background-color: #228b84; text-align: right" Width="149px"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" Font-Size="XX-Large" Style="font-weight: bold;
            font-size: 9pt; left: 380px; color: white; font-family: arial; position: absolute;
            top: 107px; background-color: transparent" Text="PKI Innovation Program" Width="386px"></asp:Label>
        <img id="IMG1" language="javascript" onclick="return IMG1_onclick()" src="Images/kao%20logo%20big.jpg"
            style="left: 33px; width: 318px; position: absolute; top: 35px; height: 97px" />
        <asp:Label ID="lblTitle2" runat="server" BorderColor="Red" BorderStyle="None" ForeColor="White"
            Height="25px" Style="font-weight: bold; font-size: 12pt; left: 443px; font-family: arial;
            position: absolute; top: 125px" Text="SEARCH" Width="121px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Style="font-weight: bold; font-size: 10pt;
            left: 10px; font-family: arial; position: absolute; top: 170px" Width="459px"></asp:Label>
        <br />
            <table style="font-size: 10pt; width: 347px; font-family: Tahoma">
                <tr>
                    <td style="width: 118px; text-align: right">
                        ID No.</td>
                    <td style="width: 106px">
                        <asp:TextBox ID="TextBox8" runat="server" MaxLength="3"></asp:TextBox>&nbsp;
                        <asp:RegularExpressionValidator runat ="server" ID="valnumbersonly" ControlToValidate ="textbox8" Display ="Dynamic" ErrorMessage ="Please enter numbers only." ValidationExpression ="(^([0-9]*|\d*\d{1}?\d*)$)" style="left: 366px; position: absolute; top: 211px; font-size: 10pt; font-family: arial;" Width="331px"></asp:RegularExpressionValidator>
               </td>
                </tr>
                <tr>
                    <td style="width: 118px; text-align: right">
                        Last Name</td>
                    <td style="width: 106px">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>&nbsp;
                   
                        </td>
                        </tr>
                <tr>
                    <td style="width: 118px; text-align: right; height: 26px;">
                        First Name&nbsp;
                    </td>
                    <td style="width: 106px; height: 26px;">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                         
                        </td>
                         
                         </tr>       
  <tr>
                    <td style="width: 118px; text-align: right">
                        Middle Initial</td>
                    <td style="width: 106px">
                        <asp:TextBox ID="TextBox11" runat="server" MaxLength="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 118px; height: 24px; text-align: right">
                        Department</td>
                    <td style="width: 106px; height: 24px">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="Department" DataValueField="Department" Width="155px">
                        
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_systemConnectionString6 %>"
                            SelectCommand="SELECT [department] FROM [tbl_department] ORDER BY [department]">
                        </asp:SqlDataSource>
                        &nbsp;
                        
                    </td>
                </tr>
            </table>
        <br />
                       
     
    </div>
            <table style="font-size: 10pt; width: 334px; font-family: Tahoma">
                <tr>
                    <td style="width: 115px; text-align: right; height: 26px;">
                        PKI Username</td>
                    <td style="width: 118px; height: 26px;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="138px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 115px; text-align: right">
                        Password</td>
                    <td style="width: 118px">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                <tr>
                    <td style="width: 115px; text-align: right">
                        Confirm Password</td>
                    <td style="width: 118px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
            </table>
        <br />
        <img height="135" src="Images/office-management-careers.jpg" style="left: 523px;
            position: absolute; top: 11px" width="155" />
        <br />
            <asp:Button ID="Button1" runat="server" Height="25px" Style="font: icon" Text="Submit"
                Width="66px" /><asp:Button ID="Button2" runat="server" Height="25px" Style="font: menu" Text="Cancel"
                Width="66px" /><asp:Button ID="Button3" runat="server" Height="25px" Style="font: menu" Text="Back"
                Width="66px" />
    
    <asp:CompareValidator ID="cv1" runat ="server" ErrorMessage ="Passwords do not match!" ControlToValidate ="textbox3" ControlToCompare = "textbox2" style="font-size: 10pt; left: 357px; font-family: tahoma; position: absolute; top: 413px" Width="328px"></asp:CompareValidator>
        &nbsp;<br />
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
