<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
       
        <tr>
            <td >
            </td>
          <td >
            </td>
              </tr>
          <tr>
         <td align="left">
              <asp:ImageButton ID="ImgLogo" runat="server" ImageUrl="~/left_banner.jpg"
                CausesValidation="false"  Width="400px" Height="300px" />
            </td>
            <td align="right">
                <asp:Login ID="ctlLogin" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8"
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                    Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="OnAuthenticate" Width="300px"
                    Height="140px">
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TextBoxStyle Font-Size="0.8em" Width="200px" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                </asp:Login>
                <br/>
                <center>
                <asp:LinkButton ID="lnkRegister" runat="server" Text="Have'nt Registered Yet ?" 
                    OnClick="lnkRegister_Click"></asp:LinkButton>
                    </center>
            </td>
        </tr>
        <tr>
            <td >
            </td>
             <td align="center">
            </td>
        </tr>
    </table>
</asp:Content>
