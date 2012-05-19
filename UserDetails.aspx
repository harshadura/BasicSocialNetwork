<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<%@ Register Src="~/Controls/GetUserScraps.ascx" TagName="UserScraps" TagPrefix="Uc1" %>
<%@ Register Src="~/Controls/UserFriends.ascx" TagName="UserFriends" TagPrefix="Uc2" %>
<%@ Register Src="~/Controls/UserFreindRequest.ascx" TagName="UserFriendRequest"
    TagPrefix="Uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="2" cellspacing="2" width="100%">
        <tr>
            <td width="18%" valign="top" class="SkyBlueBorder" align="center">
                <asp:Image ID="UserImage" runat="server" Width="140px" />
                <br />
                <br />
                <span class="SmallBlackText">Join On:</span>&nbsp;<asp:Label ID="lblCreated" runat="server"></asp:Label>
                <br />
                <br />
                <span class="SmallBlackText">Last Login</span>&nbsp;<asp:Label ID="LabelLastLogin"
                    runat="server"></asp:Label>
                <br />
                <br />
                <span class="SmallBlackText">Total Views:</span>&nbsp;<asp:Label ID="LabelTotalViews"
                    runat="server"></asp:Label>
                <br />
                <br />
                <strong>
                <asp:LinkButton ID="lnkShowEvent" runat="server" Text="Show Event Planner" 
                    OnClick="lnkShowEvent_Click"></asp:LinkButton>
                    </strong>
                <br />
                <br />
                <strong>
                <asp:LinkButton ID="linkJobBank" runat="server" Text="Show Job Bank" 
                    OnClick="linkJobBank_Click"></asp:LinkButton>
                </strong>
                <br />
                <br />
                <strong>
                <asp:LinkButton ID="lnkSendMessage" runat="server" Text="Send Message" 
                    OnClick="lnkSendMessage_Click"></asp:LinkButton>
                </strong>
                <br />
                <br />
                <hr/>
                <br />
                <strong>
                <asp:LinkButton ID="lnkCreateEvent" runat="server" Text="Create Event" 
                    OnClick="lnkCreateEvent_Click"></asp:LinkButton>
                </strong>
                <br />
                <br />
                <strong>
                <asp:LinkButton ID="lnkCreateVacancy" runat="server" Text="Create Vacancy" 
                    OnClick="lnkCreateVacancy_Click"></asp:LinkButton>
                </strong>
                <br />
                <br />
                </td>
            <td valign="top" class="GreenBorder">
                <b><asp:Label ID="LabelAboutMe0" runat="server"></asp:Label> &nbsp;| <asp:Label ID="LabelType11" runat="server"></asp:Label></b>
                <br />
                City : <asp:Label ID="LabelAboutMe1" runat="server"></asp:Label>
                <br />
                Info : <asp:Label ID="LabelAboutMe" runat="server"></asp:Label>
                <br /><hr/>
                <asp:LinkButton ID="AddToFriend" runat="server" Text="Send Friend Request" OnClick="AddToFriend_Click"></asp:LinkButton><br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                <br />
                <Uc3:UserFriendRequest ID="UserFriendRequest" runat="server" Visible="false" />
                <br />
                <asp:TextBox ID="TextBoxScrap" runat="server" TextMode="MultiLine" Height="65px"
                    Width="490px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="ButtonPostScrap" runat="server" Text="Post Scrap" OnClick="ButtonPostScrap_Click" />
                <br />
                <br />
                <Uc1:UserScraps ID="UserScraps" runat="server" />
            </td>
            <td width="30%" valign="top">
                <Uc2:UserFriends ID="UserFriends" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
