<%@ Page Language="VB" AutoEventWireup="false" CodeFile="printsuggest.aspx.vb" Inherits="printsuggest" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Print</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <img src="images2/logo.JPG" style="width: 144px; height: 32px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; PKI Innovation
        Program<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; Jasaan, Misamis Oriental</div>
    <div style="margin: 50px;">
        
   
    
<table border="0" cellpadding="3" align="left" cellspacing="5" style="width: 65%; height: 240px">
<tr>
    <td width="100%" align="center">
        &nbsp;<asp:Label cssClass="cmaron4" ID="lblinnov" runat="server" Font-Bold="True"/>
<br />
</td>
  </tr>
  <tr>
    <td width="100%">
<b><asp:Label cssClass="content6" runat="server" id="lblpipno" style="font-size: 10pt" /></b>
        <asp:Label cssClass="drecipe" ID="lblpip" runat="server" style="font-size: 10pt" Width="88px" /><br />
        <asp:Label cssClass="content6" runat="server" id="lblproponent" Font-Bold="True" style="font-size: 10pt" />
        <asp:Label cssClass="drecipe" ID="lblprop" runat="server" style="font-size: 10pt" Width="104px" /><br />
        <asp:Label cssClass="content6" runat="server" id="lbldept" Font-Bold="True" style="font-size: 10pt" />
        <asp:Label cssClass="drecipe" ID="lbldeptsec" runat="server" style="font-size: 10pt" Width="80px" /><br />
        <asp:Label cssClass="content6" runat="server" id="lbldate" Font-Bold="True" style="font-size: 10pt" />
        <asp:Label cssClass="drecipe" ID="lbldateentry" runat="server" style="font-size: 10pt" Width="88px" /></td>
  </tr>
  <tr>
    <td width="100%">
        1.
<asp:Label cssClass="content6" runat="server" id="lblsuggest" Font-Bold="True" style="font-size: 10pt" />
<br />
<asp:Label cssClass="drecipe" ID="lblsuggestion" runat="server" style="font-size: 10pt" />
</td>
  </tr>
  <tr>
    <td width="100%" style="height: 25px">
        2.
        <asp:Label cssClass="content6" runat="server" id="lblimg" Font-Bold="True" style="font-size: 10pt" /><br />
        <asp:Label cssClass="drecipe" ID="lblimgattach" runat="server" style="font-size: 10pt" /></td>
  </tr>
  <tr>
    <td width="100%" style="height: 25px">
        3.
        <asp:Label cssClass="content6" runat="server" id="lblsavings" Font-Bold="True" style="font-size: 10pt" /><br />
        <asp:Label cssClass="drecipe" ID="lblpotential" runat="server" style="font-size: 10pt" /></td>
  </tr>
  <tr>
    <td width="100%" style="height: 25px; font-size: 10pt;" align="left">
        <br />
        4.
        <asp:Label cssClass="content6" runat="server" id="Label1" Font-Bold="True" style="font-size: 10pt" >Signature :</asp:Label>
        ______________<br />
        <br />
        5.
        PIP Committee Recommendation:<br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="-accepted, for implementation" /><br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="-accepted, for further study" /><br />
        Reason: _____________________________________________________________<br />
        ____________________________________________________________________<br />
        ____________________________________________________________________<br />
        ____________________________________________________________________<br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="-Not Acceptable" /><br />
        Reason: _____________________________________________________________<br />
        ____________________________________________________________________<br />
        ____________________________________________________________________<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        PIP EVALUATION COMMITTEE<br />

</td>
  </tr>
  <tr>
    <td width="100%" style="height: 25px">
<div style="text-align: center;">
   <a class="hlink" href="javascript:onClick=window.print('print.aspx')">Print</a></div>
</td>
  </tr>
</table>

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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <span style="color: #0000ff; text-decoration: underline"></span>
</div>
    </form>
</body>
</html>

