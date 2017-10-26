<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bymonthbydept.aspx.vb" Inherits="mainpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>PKI Innovation Program</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />



<style type="text/css">
.GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif; color: #303933;}
Table.Gridview{border:solid 1px #df5015;}
.GridviewTable{border:none}
.GridviewTable td{margin-top:0;padding: 0; vertical-align:middle }
.GridviewTable tr{color: White; background-color: #df5015; height: 30px; text-align:center}
.Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}  
.Gridview td{border-bottom-color:#f0f2da;border-right-color:#f0f2da;padding:0.5em 0.5em 0.5em 0.5em;}
.Gridview tr{color: Black; background-color: White; text-align:left}
:link,:visited { color: #DF4F13; text-decoration:none }
</style>
</head>
<body>
<form id="form1" runat="server">
<div id="bg">
    &nbsp;<div id="main_bot" style="width: 1032px; font-size: 15pt; color: #ffffff;">
<!-- header begins -->
<div id="header">
	<div id="logo">
        <h1>
            <img src="images2/kao_logo_type_c_en_green.png" style="left: 14px; width: 533px;
                position: absolute; top: 30px; height: 65px" />
            PKI Innovation Program</h1>
        <h2>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                Style="left: 687px; position: absolute; top: 96px" Text="Label" Width="182px"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Style="left: 575px;
                position: absolute; top: 73px" Text="Welcome," Width="182px"></asp:Label>
            <a href="#" id="metamorph">ONline</a> system</h2>
    </div>
    <div id="buttons">
        <ul>
          <li class="first"><a href="user.aspx"  title="" class="active">home</a></li>
          <li></li>
           <li><a href="#" title="">about us</a></li>
          <li><a href="#" title="">contact us</a></li>
          <li><a href="Default.aspx" title="">logout</a></li>
        </ul>
    </div>
</div>
<!-- header ends -->
<!-- scroll begins -->
    &nbsp;
<div class="clear"></div>
<!-- header ends -->
    <!-- content begins -->
    <div id="cont_top"></div>
                                        &nbsp; &nbsp; &nbsp;&nbsp;<table style="width: 99%; height: 368px;" border="0" cellpadding="0" cellspacing="2" >
    <tr >
    <td style="width: 149px; color: #ffffff; font-size: 12pt; font-family: 'Arial Black'; height: 63px;">
        <br />
        &nbsp;Search by: &nbsp; &nbsp;<br />
        <span style="font-size: 12pt; width: 221px; color: #ffffff; font-family: 'Arial Black';
            height: 63px">Department</span></td>
    <td style="width: 221px; color: #ffffff; font-size: 12pt; font-family: 'Arial Black'; height: 63px;" valign="top" >
        <br />
        <br />
        Month</td>
    <td style="width: 221px; color: #ffffff; font-size: 12pt; font-family: 'Arial Black'; height: 63px;" valign="top">
        <br />
        <br />
        Year</td>
        <td style="width: 197px; color: #ffffff; font-size: 12pt; height: 63px;">
            &nbsp;Evaluation Status</td>
       
        <td style="width: 146px; color: #ffffff; font-size: 14pt; height: 63px; font-family: Arial;" colspan ="3">
    <asp:Label
        ID="Label5" runat="server" BorderColor="White" Font-Bold="True" Font-Size="X-Large"
        ForeColor="DarkRed" Text="LABEL" Visible="False"></asp:Label><span style="font-size: 12pt;
            width: 221px; color: #ffffff"><span style="font-size: 7pt"> PIPSUGGES</span>TION</span></td>
        
         <td style="width: 83px; color: #ffffff; height: 63px; font-family: Arial;">
             <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/images2/excel.png"
                 Width="76px" /></td>
        
         <td style="width: 14px; color: #ffffff; height: 63px; font-family: Arial;">
             <asp:ImageButton ID="ImageButton2" runat="server" Height="72px" ImageUrl="~/images2/PDF.jpg"
                 Width="87px" onclick ="ImageButton2_Click" Visible="False" /></td>
        </tr>
        
        <tr style="font-family: Arial">
        <td style="width: 149px; height: 13px;">
        <asp:DropDownList ID="ddldept" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
        DataSourceID="SqlDataSource2" DataTextField="pip_department" DataValueField="pip_department"
        Font-Size="Small" Style="left: 124px; top: 610px" Width="126px">
        <asp:ListItem Text="All" Value="%"></asp:ListItem>
    </asp:DropDownList><span style="font-size: 7pt"> </span>
        
        </td>
        <td style="width: 173px; height: 13px; font-size: 7pt;">
         
          <asp:DropDownList ID="ddlpipmonth" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
        DataSourceID="SqlDataSource3" DataTextField="pip_month" DataValueField="pip_month"
        Font-Size="Small" Style="left: 243px; top: 610px" Width="109px">
        <asp:ListItem Text="All" Value="%"></asp:ListItem>
    </asp:DropDownList></td>
         <td style="width: 221px; height: 13px;"><asp:DropDownList ID="ddlyear" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
        DataSourceID="SqlDataSource5" DataTextField="pip_year" DataValueField="pip_year"
        Font-Size="Small" Style="left: 243px; top: 610px" Width="109px">
             <asp:ListItem Text="All" Value="%"></asp:ListItem>
         </asp:DropDownList></td>
         <td style="width: 197px; height: 13px;">
        <asp:DropDownList ID="ddlstatus" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
        DataSourceID="SqlDataSource4" DataTextField="pip_status" DataValueField="pip_status"
        Font-Size="Small" Style="left: 243px; top: 610px" Width="109px">
             <asp:ListItem Text="All" Value="%"></asp:ListItem>
         </asp:DropDownList></td>
         <td style="width: 146px; height: 13px;">
        </td>
         <td style="width: 83px; height: 13px;">
        </td>
         <td style="width: 181px; height: 13px;">
        </td>
         <td style="width: 40px; height: 13px;">
        </td>
         <td style="width: 190px; height: 13px;">
        </td>
        
        </tr>
    
   
    <tr>
    <td colspan="9">
     <asp:GridView ID="GridView1" runat="server" CellPadding="3" DataSourceID="SqlDataSource1"
        OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" Font-Size="Small" Style="left: 122px;
        top: 630px; font: menu;" AutoGenerateColumns="False" DataKeyNames="pip_no" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderWidth="2px" Width="1136px" BorderStyle="None" CellSpacing="2" >
        
        
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="pip_department" SortExpression="pip_department" HeaderText="Dept" 
            FooterText="Total"/>
            
            <asp:TemplateField HeaderText="No">
     <ItemTemplate>
     <asp:Label ID="lblpipno" runat="server" 
                Text='<%#Eval("pip_no").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblcount" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
     
            <asp:BoundField DataField="pip_date"  SortExpression="pip_date" HeaderText="Date Submitted" />
            <asp:BoundField DataField="pip_suggest" SortExpression="pip_suggest" HeaderText="Suggestion" />
            <asp:BoundField DataField="pip_savings"  SortExpression="pip_savings" HeaderText="Savings" />
            <asp:BoundField DataField="pip_loginid"  SortExpression="pip_loginid" HeaderText="Name of Proponent" />
            <asp:BoundField DataField="pip_remarks"  SortExpression="pip_remarks" HeaderText="Initial Eval" />
            <asp:BoundField DataField="pip_reason" SortExpression="pip_reason" HeaderText="Committee Action" />
            <asp:BoundField DataField="pip_status"  SortExpression="pip_status" HeaderText="Eval Monitoring" />
            
        </Columns>
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString29 %>"
        SelectCommand="SELECT DISTINCT [pip_month] FROM [pip_data]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString28 %>"
        SelectCommand="SELECT DISTINCT [pip_department] FROM [pip_data]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString27 %>"
        FilterExpression=" pip_month Like '{0}%' and pip_department Like '{1}%' and pip_status Like '{2}%' and pip_year Like '{3}'" SelectCommand="SELECT pip_department, pip_no, pip_date, pip_suggest, pip_savings, pip_loginid, pip_remarks, pip_reason, pip_status, pip_month,pip_year FROM pip_data WHERE pip_status = 'APPROVED' or pip_status ='DISAPPROVED' or pip_status ='FOR STUDY' ORDER BY pip_no">
        <FilterParameters>
            <asp:ControlParameter ControlID="ddlpipmonth" Name="pip_month" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddldept" Name="pip_department" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddlstatus" Name="pip_status" PropertyName="SelectedValue" />
              <asp:ControlParameter ControlID="ddlyear" Name="pip_year" PropertyName="SelectedValue" />
        </FilterParameters>
        
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString26 %>"
            SelectCommand="SELECT DISTINCT [pip_status] FROM [pip_data]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:pip_system_02012013ConnectionString41 %>"
            SelectCommand="SELECT DISTINCT [pip_year] FROM [pip_data]"></asp:SqlDataSource>
    </td>
    </tr>
    </table> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
    <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label ID="Label10"
        runat="server" Text="Label" Visible="False"></asp:Label><br />
    <br />
    <!-- content ends -->
    <div id="cont_bot"></div>
    <!-- footer begins -->
    <div id="footer">
  Copyright  2012. PKI | MIS Department<br />
		<a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></div>
<!-- footer ends -->
</div>

<div id="main">
</div>
</div>
</form> 
</body>

</html>
