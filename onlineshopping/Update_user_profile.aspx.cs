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

public partial class User_Reset_Password : System.Web.UI.Page
{
    string emaila, question, answer, dataquestion, dataanswer, sql, username, password;
    int flag;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    string connsectionstring1;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag = 0;
        connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;

        if (Session["userID"] == null)
        {

        }
        else
        {
            display();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

            update_data();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Updated successfuly');", true);


    }
    void update_data()
    {
        try
        {

            string name = txtName.Text;
            string password = txtPassword.Text;
            string question = DropDownList1.Text;
            string ans = TextBox1.Text;
            string text = Session["userID"].ToString();
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("update Customer set Name='" + name + "',password='" + password + "',question='" + question + "',answer='" + ans + "' where email='" + text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Field should not be blank');", true);
        }
    }
    void display()
    {
        con = new SqlConnection(connsectionstring1);
        con.Open();
        string text1 = Session["userID"].ToString();
        string slectuname = "select * from Customer where email='"+text1+"'";
        SqlCommand cmd = new SqlCommand(slectuname, con);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            txtName.Text = rs.GetString(0);
            txtPassword.Text = rs.GetString(2);
            DropDownList1.Text = rs.GetString(3);
            TextBox1.Text = rs.GetString(4);
        }
       
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_home.aspx");
    }
}
