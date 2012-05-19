using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserDetails : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;
    public String UserTypeWhat;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetUserDetails(int.Parse(Request.QueryString["Id"].ToString()));
            if (!object.Equals(Session["UserId"], null))
            {
                if (object.Equals(Session["UserId"], Request.QueryString["Id"]))
                {
                    UserFriendRequest.Visible = true;
                }
                else
                {
                    UserFriendRequest.Visible = false;
                }
            }
        }
    }

    public void GetUserDetails(int id)
    {
        string getUserDetail = "Select ID,Email,Name,City,Convert(varchar (20), RegisterDate, 106) RegisterDate,Convert(varchar (20), LastLogin, 106) LastLogin ,Description,ImageName,UserType FROM [User] where Id='" + id + "'";
        dt = dbClass.ConnectDataBaseReturnDT(getUserDetail);
        if (dt.Rows.Count > 0)
        {
            UserImage.ImageUrl = "~/UserImage/" + dt.Rows[0]["ImageName"].ToString();
            lblCreated.Text = dt.Rows[0]["RegisterDate"].ToString();
            LabelLastLogin.Text = dt.Rows[0]["LastLogin"].ToString();
            lblCreated.Text = dt.Rows[0]["RegisterDate"].ToString();
            LabelAboutMe.Text = dt.Rows[0]["Description"].ToString();
            LabelAboutMe0.Text = dt.Rows[0]["Name"].ToString();
            LabelAboutMe1.Text = dt.Rows[0]["City"].ToString();
            LabelType11.Text = dt.Rows[0]["UserType"].ToString();

            UserTypeWhat = dt.Rows[0]["UserType"].ToString();
            if (UserTypeWhat.Equals("Student"))
            {
                lnkCreateEvent.Visible = false;
                lnkCreateVacancy.Visible = false;
            } 
            if (UserTypeWhat.Equals("Lecturer"))
            {
                AddToFriend.Visible = false;
            } 
        }
    }
    protected void AddToFriend_Click(object sender, EventArgs e)
    {
        if (!object.Equals(Session["UserId"], null))
        {
            if (Object.Equals(Session["UserId"], Request.QueryString["Id"]))
            {
                lblError.Text = "Your own profile";
                lblError.Visible = true;
            }
            else
            {
                string chkfriendRequest = "SELECT * FROM Friends WHERE (MyId='" + Session["UserId"].ToString() + "' and FriendId='" + Request.QueryString["Id"].ToString() + "') OR (MyId='" + Request.QueryString["Id"].ToString() + "' and FriendId='" + Session["UserId"].ToString() + "')";
                DataTable dt1 = new DataTable();
                dt1 = dbClass.ConnectDataBaseReturnDT(chkfriendRequest);
                if (dt1.Rows.Count > 0)
                {
                    if (dt1.Rows[0]["FriendStatus"].ToString() == "1")
                    {
                        lblError.Text = "Already in friend list";
                        lblError.Visible = true;
                    }
                    if (dt1.Rows[0]["FriendStatus"].ToString() == "0")
                    {
                        lblError.Text = "Friend Request Pending";
                        lblError.Visible = true;
                    }
                    if (dt1.Rows[0]["FriendStatus"].ToString() == "2")
                    {
                        lblError.Text = "Friend Request deny";
                        lblError.Visible = true;
                    }
                }
                else
                {
                    string friendRequest = "Insert INTO Friends (MyId,FriendId) VALUES('" + Session["UserId"].ToString() + "','" + Request.QueryString["Id"].ToString() + "')";
                    dbClass.ConnectDataBaseToInsert(friendRequest);
                    lblError.Text = "Friend Request Send";
                    lblError.Visible = true;
                }
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }
    protected void ButtonPostScrap_Click(object sender, EventArgs e)
    {
        if (!object.Equals(Session["UserId"], null))
        {
            string postScrap = "Insert INTO Scrap (FromId,ToId,Message) VALUES('" + Session["UserId"].ToString() + "','" + Request.QueryString["Id"].ToString() + "','" + TextBoxScrap.Text + "')";
            dbClass.ConnectDataBaseToInsert(postScrap);
            Response.Redirect("UserDetails.aspx?Id=" + Request.QueryString["Id"].ToString());
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void lnkShowEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("EventPlanner.aspx");
    }
    protected void linkJobBank_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobBank.aspx");
    }
    protected void lnkSendMessage_Click(object sender, EventArgs e)
    {
        Response.Redirect("InternalMessaging.aspx");
    }
    protected void lnkCreateEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateEvent.aspx");
    }
    protected void lnkCreateVacancy_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobAdmin.aspx");
    }
}
