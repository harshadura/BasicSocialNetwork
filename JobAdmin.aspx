<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="JobAdmin.aspx.cs" Inherits="JobAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <h2>Create Vacancy</h2>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Job Name:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextJobName" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTopic" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextJobName" ErrorMessage="Enter Job Name.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Company Name:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextCompany" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextCompany" ErrorMessage="Enter Company Name.">Company</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Closing Date:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxDate" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxDate" ErrorMessage="Enter Closing Date.">Closing Date</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Description:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxDes" runat="server" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDes" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxDes" ErrorMessage="Enter Description.">Description</asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td align="center">
                <asp:Button ID="ButtonCreateJob" runat="server" Text="Create Vacancy" OnClick="ButtonCreateJob_Click"
                    Width="170px" CssClass="flashit" Font-Bold="true" Font-Size="14pt" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Check entries:"
        ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</asp:Content>
