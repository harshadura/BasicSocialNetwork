<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Controls_Header" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:ScriptManager ID="ScriptManager1" runat="server" />
<table cellpadding="1" cellspacing="1" width="100%">
    <tr>
        <td>
            <asp:ImageButton ID="ImgLogo" runat="server" ImageUrl="~/Logo.png"
                CausesValidation="false" Height="152px" Width="750px" OnClick="ImageButton1_Click"/>
        </td>
        <td width="40%" align="right">
            <asp:TextBox ID="txtSearch" runat="server" Width="170px"></asp:TextBox>&nbsp;
            <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" ServicePath="~/WebService.asmx"
                ServiceMethod="GetSearch" MinimumPrefixLength="1" TargetControlID="txtSearch">
            </cc1:AutoCompleteExtender>
            <asp:Button ID="btnSearch" runat="server" Text="Find People" OnClick="btnSearch_Click"
                EnableViewState="false" CausesValidation="false" />
            <br />
            <br />
<%--            <asp:LinkButton ID="Login" runat="server" Text="Login |" OnClick="Login_Click" CssClass="BlueText"
                CausesValidation="false"></asp:LinkButton>--%>
            <asp:LinkButton ID="Logout" runat="server" Text="Logout |" OnClick="Logout_Click"
                CssClass="BlueText" CausesValidation="false"></asp:LinkButton>
            <asp:LinkButton ID="MyProfile" runat="server" Text="My Profile" OnClick="MyProfile_Click"
                CausesValidation="false" CssClass="BlueText"></asp:LinkButton>
        </td>
    </tr>
</table>
