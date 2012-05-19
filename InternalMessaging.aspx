<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
   CodeFile="InternalMessaging.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <h2>Internal Messaging</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Recepient Name:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxTime" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTime" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxTime" ErrorMessage="Enter Recepient Name.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Message Content:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxDes" runat="server" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDes" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxDes" ErrorMessage="Enter Message Content.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="ButtonMakeProfile" runat="server" Text="Send Message." OnClick="ButtonMakeProfile_Click"
                    Width="170px" CssClass="flashit" Font-Bold="true" Font-Size="14pt" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Check entries:"
        ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</asp:Content>
