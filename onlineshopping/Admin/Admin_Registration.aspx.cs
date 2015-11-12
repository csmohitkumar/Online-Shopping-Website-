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

public partial class User_Registration : System.Web.UI.Page
{
    string name, email, password1, question, ans,status1;
    SqlConnection conn=null;
    protected void Page_Load(object sender, EventArgs e)
    {
        status1 = "Admin";
    }
  
    protected void btnBack_Click(object sender, EventArgs e)
    {

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtAnswer.Text = "";
        txtPassword.Text = "";
        txtEmail.Text = "";
        txtAnswer.Text = "";
        cboquestion.Text = "";
        cbo.Text = "";

    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        bool value=ValidateEmail(txtEmail.Text);
        if (value == true && chkTerms.Checked)
        {
            getvalue();
            add();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please Insert valid E_Mail address and Accept the terms');", true);
        }

    }
    void getvalue()
    {
        
        
    }
    void add()
    {
       try
        {
            name = txtname.Text;
            email = txtEmail.Text;
            password1 = txtPassword.Text;
            question = cboquestion.Text;
            ans = txtAnswer.Text;

            string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Customer values('"+name+"','"+email+"','"+password1+"','"+question+"','"+ans+"','"+status1+"')", conn);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Sign Up successful');", true);
            Response.Redirect("User_home.aspx");

        }
        catch (Exception m)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('E-mail address already in use..try with diffrent E-mail');", true);

        }
       finally
        {
            conn.Close();
        }
    }
    bool ValidateEmail(string email)
    {
        try
        {
            var address5 = new System.Net.Mail.MailAddress(email);
            return true;
        }
        catch
        {
            return false;
        }
    }

}
