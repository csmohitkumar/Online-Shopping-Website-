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

public partial class Login : System.Web.UI.Page
{
    private string username, password;
    int f;
    protected void Page_Load(object sender, EventArgs e)
    {
        f = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        username = txtUsername.Text;
        password = txtPassword.Text;
        if ((username == "" && password == "") || (username == "" || password == ""))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('User Name or password should not be EMPTY ');", true);
        }
     
        else
        {
            string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            SqlConnection conn = new SqlConnection(connsectionstring1);
            conn.Open();
            String sql = "select email,password,status from Customer";
            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader r = cmd.ExecuteReader();

            while (r.Read())
            {

                if (username == (r.GetString(0)) && password == (r.GetString(1)) && r.GetString(2)=="customer")
                {
                    f = 1;
                    break;
                }
                if (username == (r.GetString(0)) && password == (r.GetString(1)) && r.GetString(2) == "Admin")
                {
                    f = 2;
                    break;
                }

            }
            conn.Close();
            if (f == 1)
            {
                
                Session["userID"] = username;
                Session["Check"] = "client";
                Response.Redirect("User_home.aspx");
                
            }
            else if (f == 2)
            {

                Session["userID"] = username;
                Session["Check"] = "Admin";
                Response.Redirect("Admin/Admin_add2.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('User Name Not Valid');", true);
            }
        }
    
    }
}
