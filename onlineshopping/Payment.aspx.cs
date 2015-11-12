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
using System.IO;

public partial class User_home : System.Web.UI.Page
{
    SqlConnection conn = null;

    string cart_id, amount, oder_id;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] == null)
        {
            Response.Redirect("User_Cart.aspx");
        }
        amount = Session["Total_Amount"].ToString();
        oder_id = Session["Order_id"].ToString();
        txtorderid.Text = oder_id;
        txtAmount.Text = amount;

    
        cart_id = Session["cart_id3"].ToString();
       
    }

    protected void BtnPay_Click(object sender, EventArgs e)
    {
        string card_no = txtcardno.Text;
        string card_type = cboType.Text;
        string name = TextBox2.Text;
        try
        {
            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Payment values(" + oder_id + ",'" + name + "','"+card_no+"','"+card_type+"')", conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("User_home.aspx");

        }
        catch (Exception jk)
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Field should not be blank ');", true);

        }
        finally
        {
            conn.Close();
        }
    }
}
