using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Footer : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkAbout_Click(object sender, EventArgs e)
    {
        Response.Redirect("About.aspx");
    }
    protected void lnkApps_Click(object sender, EventArgs e)
    {
        Response.Redirect("Apps.aspx");
    }
    protected void lnkJobBank_Click(object sender, EventArgs e)
    {
        Response.Redirect("JobBank.aspx");
    }
    protected void lnkEvents_Click(object sender, EventArgs e)
    {
        Response.Redirect("EventPlanner.aspx");
    }
    protected void lnkGames_Click(object sender, EventArgs e)
    {
        Response.Redirect("Games.aspx");
    }
    protected void lnkSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}
