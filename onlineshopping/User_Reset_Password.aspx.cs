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
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader r;
    string connsectionstring1;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag = 0;
        connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        emaila = txtEmail.Text;
        question = DropDownList1.SelectedItem.Value;
        answer = TextBox1.Text;
        SqlConnection conn = new SqlConnection(connsectionstring1);
        conn.Open();
        sql = "select * from Customer WHERE email ='" + emaila + "'";
        cmd = new SqlCommand(sql, conn);
        SqlDataReader r=cmd.ExecuteReader();
        while (r.Read())
        {
            string user = r[1].ToString();
            dataquestion = r[3].ToString();
            dataanswer = r[4].ToString();
            
            if (dataquestion.Equals(question) && dataanswer.Equals(answer))
            {
                username = user;
                flag = 1;
                break;
            }
        }
        conn.Close();
        if (flag == 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Wrong E-mail address ');", true);
        }
        if (flag == 1)
        {
            txtEmail.Enabled = false;
            TextBox1.Enabled = false;
            DropDownList1.Enabled = false;
            Button1.Enabled = false;
            Button2.Enabled = false;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button3.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        password = TextBox2.Text;
        try
        {
            SqlConnection conn = new SqlConnection(connsectionstring1);
            conn.Open();
            cmd = new SqlCommand("UPDATE Customer SET password='" + password + "' WHERE email ='" + txtEmail.Text + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("User_home.aspx");

        }
        catch (Exception rt)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('password not reseted');", true);

        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_home.aspx");
    }
}
