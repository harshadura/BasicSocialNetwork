<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Footer.ascx.cs" Inherits="Controls_Footer" %>
<style type="text/css">
    .style1
    {
        width: 140px;
    }
    .style2
    {
        width: 129px;
    }
</style>
<table cellpadding="1" cellspacing="1" width="100%">
    <tr>
       <td class="style1">
       </td>
    </tr>
        
     <tr>
        <td class="style1" align=left>
            <asp:LinkButton ID="lnkJobBank" runat="server" Text="Vacancies" 
                    OnClick="lnkJobBank_Click"></asp:LinkButton>
            </td>
        <td align=center>
            <asp:LinkButton ID="lnkEvents" runat="server" Text="Events" 
                    OnClick="lnkEvents_Click"></asp:LinkButton>
        </td>
        <td align=center>
            <asp:LinkButton ID="lnkSignUp" runat="server" Text="Sign-Up" 
                    OnClick="lnkSignUp_Click"></asp:LinkButton>
        </td>
        <td align=center>
            <asp:LinkButton ID="lnkGames" runat="server" Text="Games" 
                    OnClick="lnkGames_Click"></asp:LinkButton>
        </td>
        <td align=right>
            <asp:LinkButton ID="lnkApps" runat="server" Text="Apps" 
                    OnClick="lnkApps_Click"></asp:LinkButton>
        </td>
        <td align=right>
            <asp:LinkButton ID="lnkAbout" runat="server" Text="About" 
                    OnClick="lnkAbout_Click"></asp:LinkButton>
        </td>
    </tr>

      <tr>
       <td class="style1">
       </td>
    </tr>
</table>