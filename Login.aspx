<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

function IMG1_onclick() {

}

// ]]>
</script>
</head>
<body style="background-color: white">
    <form id="form1" runat="server">
    <div>
        <div>
            <div style="margin-top: 0px; font-size: 25px; font-family: Arial; margin-bottom: 0px;">
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                <br />
                <br />
                <br />
                &nbsp;
                <table style="font-size: 10pt; width: 420px; left: 101px; position: absolute; top: 160px;">
                    <tr>
                        <td style="width: 233px; height: 26px; text-align: right; font-size: 10pt; font-family: tahoma;">
                            Username :&nbsp;</td>
                        <td style="width: 146px; height: 26px">
                            <asp:TextBox ID="TextBox5" runat="server" Width="170px"></asp:TextBox>&nbsp;
                
                            </td>
                           
                        <td style="width: 235px; height: 26px">
                            <asp:RequiredFieldValidator ID="rfd1" runat =server ErrorMessage = "Username required." ControlToValidate = "TextBox5"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 233px; height: 26px; text-align: right">
                            Password :&nbsp;
                        </td>
                        <td style="width: 146px; height: 26px">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="169px"></asp:TextBox>&nbsp;
                
                            </td>
                          
                        <td style="width: 235px; height: 26px">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat =server ErrorMessage = "Password required." ControlToValidate = "TextBox1"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 233px">
                        </td>
                        <td style="width: 146px">
                            <asp:Button ID="btnLogin"  runat="server" Text="Login" TabIndex="3" Width="94px" style="font: menu" Height="27px" />
                        </td>
                        <td style="width: 235px">
                            <asp:Label ID="Label1" runat="server" Width="218px" style="font-size: 10pt; color: red; font-family: tahoma"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 233px; text-align: right">
                            <span style="color: #3399ff; font-size: 10pt; font-family: tahoma;"></span></td>
                        <td style="width: 146px">
                            </td>
                        <td style="width: 235px">
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <img id="IMG1" src="Images/kao%20logo%20big.jpg" style="width: 318px; position: absolute;
                    height: 97px; left: 33px; top: 35px;" language="javascript" onclick="return IMG1_onclick()" />
                &nbsp;&nbsp;<br />
                <br />
                <br />
                <img src="Images/Copyright.JPG" style="left: 3px; width: 100%; position: absolute; top: 714px" />
                <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" Style="left: 3px;
                    position: absolute; top: 728px" Text="Copyright © 2012 Kao Corporation. All rights reserved."
                    Width="100%"></asp:Label>
                <br />
                <img src="Images/bg_groupbar_01.gif" style="width: 100%; height: 20px; left: 0px; position: absolute; top: 764px;" />
                &nbsp;
                <img src="Images/degreasing-chemicals-250x250-250x250.jpg" style="left: 528px; width: 150px;
                    position: absolute; top: 7px; height: 134px" />
                &nbsp;
                <img src="Images/kao%20products%202.JPG" style="left: 374px; position: absolute;
                    top: 8px;" height="135" width="155" />
                <br />
                <img src="Images/group_ci.gif" style="left: 7px; position: absolute; top: 765px" />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
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
            </div>
        </div>
    
    </div>
        &nbsp;&nbsp;<br />
    </form>
</body>
</html>
