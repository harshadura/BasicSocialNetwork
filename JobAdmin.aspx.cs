using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class JobAdmin : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonCreateJob_Click(object sender, EventArgs e)
    {
        string RegisterQuery = "INSERT INTO [VacanciesTable] (JobName,JobDes,ClosingDate,Company) VALUES('" + TextJobName.Text + "','" + TextBoxDes.Text + "','" + TextBoxDate.Text + "','" + TextCompany.Text + "')";
        dbClass.ConnectDataBaseToInsert(RegisterQuery);
        
        //Response.Redirect("~/JobAdmin.aspx");
        
        Response.Write("<script>alert('Vacancy saved successfully!')</script>");
        TextBoxDate.Text = "";
        TextBoxDes.Text = "";
        TextCompany.Text = "";
        TextJobName.Text = "";
    }
}