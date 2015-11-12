using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_Admin_Delete_inventory : System.Web.UI.Page
{
    SqlConnection conn;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    string imagepath;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack == false)
        {
            fill_ModelNumber();
        }
    }
    void fill_ModelNumber()
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select model_Number from Product";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {

            DropDownList1.Items.Add(rs.GetString(0));
        }
        conn.Close();
    }
    void search()
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select * from Product where model_Number='" + DropDownList1.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {

            TextBox1.Text = rs.GetString(0);
            TextBox8.Text = rs.GetString(2);
            TextBox6.Text = rs.GetString(3);
            TextBox7.Text = rs.GetString(4);
            imagepath = rs.GetString(8);
        }
        
            Image4.ImageUrl = imagepath;
            conn.Close();
    

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        search();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname2 = "DELETE from Features where model_Number='" + DropDownList1.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname2, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        conn.Open();
        string slectuname = "DELETE from Product where model_Number='" + DropDownList1.Text + "'";
        cmd = new SqlCommand(slectuname, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Deleted successfully');", true);
        
    }
}
