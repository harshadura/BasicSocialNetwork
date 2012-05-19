using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class CreateEvent : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ButtonCreateEvent_Click(object sender, EventArgs e)
    {
        string RegisterQuery = "INSERT INTO [EventsTable] (Time,Date,Topic,Description) VALUES('" + TextBoxTime.Text + "','" + TextBoxDate.Text + "','" + TextBoxTopic.Text + "','" + TextBoxDes.Text + "')";
        dbClass.ConnectDataBaseToInsert(RegisterQuery);
        //Response.Redirect("~/CreateEvent.aspx");

        Response.Write("<script>alert('Event saved successfully!')</script>");
        TextBoxDate.Text = "";
        TextBoxDes.Text = "";
        TextBoxTime.Text = "";
        TextBoxTopic.Text = "";
    }
}


