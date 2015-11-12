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
        DropDownList1.Items.Clear();

        cbomodel2.Items.Clear();
        DropDownList1.Items.Add("Select First Product");
        cbomodel2.Items.Add("Select First Product");
        while (rs.Read())
        {
            DropDownList1.Items.Add(rs.GetString(0));
            cbomodel2.Items.Add(rs.GetString(0));
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
    void search2(string value)
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select * from Features where model_Number='" + DropDownList1.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {

            TextBox13.Text = rs.GetString(1);
            TextBox14.Text = rs.GetString(2);
            TextBox15.Text = rs.GetString(3);
            TextBox16.Text = rs.GetString(4);
            TextBox17.Text = rs.GetString(5);
            TextBox18.Text = rs.GetString(6);
            TextBox19.Text = rs.GetString(7);
            TextBox20.Text = rs.GetString(8);
        }
        conn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string model1, model2;
        model1 = DropDownList1.Text;
        
        search();
        search2(model1);
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        
        
    }
    protected void btnCompare_Click(object sender, EventArgs e)
    {
        
    }
    protected void cbomodel2_SelectedIndexChanged(object sender, EventArgs e)
    {
        search_second();
        search_second_feature();

    }
    void search_second()
    {
        string img2 = null;
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select * from Product where model_Number='" + cbomodel2.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {

            TextBox9.Text = rs.GetString(0);
            TextBox12.Text = rs.GetString(2);
            TextBox10.Text = rs.GetString(3);
            TextBox11.Text = rs.GetString(4);
            img2 = rs.GetString(8);
        }
        Image5.ImageUrl = img2;

        conn.Close();
    }
    void search_second_feature()
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select * from Features where model_Number='" + DropDownList1.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {

            TextBox21.Text = rs.GetString(1);
            TextBox22.Text = rs.GetString(2);
            TextBox23.Text = rs.GetString(3);
            TextBox24.Text = rs.GetString(4);
            TextBox25.Text = rs.GetString(5);
            TextBox26.Text = rs.GetString(6);
            TextBox27.Text = rs.GetString(7);
            TextBox28.Text = rs.GetString(8);
        }
        conn.Close();

    }
}
