<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                (Do you 
                Already have an Account? Then <a href="Home.aspx">Sign-In</a>!)
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelEmail" runat="server" Text="Email:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVUserEMail" runat="server" ForeColor="Red" Display="None"
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid Email address.">Email</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="REVUserEMail" runat="server" ForeColor="Red" Display="None" ControlToValidate="TextBoxEmail"
                        ErrorMessage="Enter Correct E-Mail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Password:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxPassword" ErrorMessage="Enter password.">password</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
                    ControlToValidate="TextBoxPassword" ErrorMessage="Password should be 4 to 15 letters & Space not allowed"
                    ValidationExpression="\S{4,15}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Retype Password:" CssClass="BlackText"
                    Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxRetypePassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxRetypePassword" ErrorMessage="Retype password.">Retype password</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CVPassword" runat="server" Display="None" ControlToValidate="TextBoxRetypePassword"
                    ErrorMessage="Re-type Password doesn't match" ControlToCompare="TextBoxPassword"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="revPWDRange" runat="server" Display="None" ControlToValidate="TextBoxRetypePassword"
                    ErrorMessage="Password should be 4 to 15 letters & Space not allowed" ValidationExpression="\S{4,15}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="User Type:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">Student</asp:ListItem>
                    <asp:ListItem>Lecturer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxName" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxName" ErrorMessage="Enter password.">Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="City:" CssClass="BlackText" Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxCity" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxCity" ErrorMessage="Enter City.">City</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="About Your Self:" CssClass="BlackText"
                    Width="200px"></asp:Label>
                <asp:TextBox ID="TextBoxComment" runat="server" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="lblPhotoSideHeading" runat="server" CssClass="BlackText" Width="200px">Photo URL:</asp:Label>
                <input id="UploadUserPhoto" type="file" runat="server" width="300px" />
            </td>
        </tr>
        <tr>
            <td height="20px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="ButtonMakeProfile" runat="server" Text="Register" OnClick="ButtonMakeProfile_Click"
                    Width="170px" CssClass="flashit" Font-Bold="true" Font-Size="14pt" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Check entries:"
        ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</asp:Content>
