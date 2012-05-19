<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateEvent.aspx.cs" Inherits="CreateEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form1">
<div>
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <h2>Create Event</h2>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="txtDate" runat="server" Text="Date:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxDate" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxDate" ErrorMessage="Enter Date.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="txtTime" runat="server" Text="Time:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxTime" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTime" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxTime" ErrorMessage="Enter Time.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
               
        <tr>
            <td>
                <asp:Label ID="txtTopic" runat="server" Text="Topic:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxTopic" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTopic" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxTopic" ErrorMessage="Enter Topic.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td>
                <asp:Label ID="txtDes" runat="server" Text="Description:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxDes" runat="server" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDes" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxDes" ErrorMessage="Enter Description.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td align="center">
                <asp:Button ID="ButtonCreateEvent" runat="server" Text="Create Event" OnClick="ButtonCreateEvent_Click"
                    Width="170px" CssClass="flashit" Font-Bold="true" Font-Size="14pt" />
            </td>
        </tr>
    </table>
       
</div>
 </form>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Check entries:"
        ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</asp:Content>
