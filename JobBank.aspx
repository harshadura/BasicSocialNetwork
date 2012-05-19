<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
   CodeFile="JobBank.aspx.cs" Inherits="JobBank" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">
	protected void Page_Load(Object sender, EventArgs e) {
		SqlConnection con = null;
		SqlCommand cmd = null;
		
		try {
			con = new SqlConnection(@"Data Source=HARSHA-HP\SQLEXPRESS; Initial Catalog=SLIITComDB; Integrated Security = true;");
            cmd = new SqlCommand("SELECT JobName,Company,ClosingDate,JobDes FROM [VacanciesTable]", con);
			
			con.Open();
			grid.DataSource = cmd.ExecuteReader();
			grid.DataBind();

		} catch (Exception err) {
			message.Text = "<p><font color=\"red\">Err: " + 
				err.Message + "</font></p>";
		} finally {
			if(con != null)
				con.Close();
		}
	}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
     <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <h2>Recent Job Vacancies</h2>
            </td>
        </tr>
     </table>
    
	<asp:datagrid id="grid" runat="server" />
	<asp:label id="message" runat="server" />
    
    <br /><br />
    </center>
</asp:Content>