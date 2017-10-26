<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" EnableViewState="false"%>
<br />

<div class="headerlogoleft"><img src="../images2/logo.JPG" style="width: 192px; height: 32px" /><br />
    <br />
    <table align="center" border="0" cellpadding="3" cellspacing="5" style="width: 65%;
        height: 240px">
        <tr>
            <td width="100%">
                <asp:Label ID="lblname" runat="server" CssClass="cmaron4"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <b>
                    <asp:Label ID="lblingredientsdis" runat="server" CssClass="content6"></asp:Label></b>
                <br />
                <asp:Label ID="lblIngredients" runat="server" CssClass="drecipe"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:Label ID="lblinstructionsdis" runat="server" CssClass="content6"></asp:Label>
                <br />
                <asp:Label ID="lblInstructions" runat="server" CssClass="drecipe"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 25px" width="100%">
                <div style="text-align: center">
                    <a class="hlink" href="javascript:onClick=window.print()">Print</a>
                </div>
            </td>
        </tr>
    </table>
</div> 

