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
    string baddress, bcity, bstate, bcountry, bpin, bcontact,date,email;
    string saddress, scity, sstate, scountry, spin, scontact;
    string cart_id;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] == null)
        {
            Response.Redirect("User_Cart.aspx");
        }
        email = Session["userID"].ToString();
        txtEmail.Text = email;
        txtdate.Text = DateTime.Now.Date.ToShortDateString();
        date = DateTime.Now.Date.ToShortDateString();
        cart_id = Session["cart_id3"].ToString();
        if (IsPostBack == false)
        {
           
        }

    }
    void getBillingAddress()
    {
        baddress = txtBaddress.Text;
        bcity = txtBcity.Text;
        bstate = txtBState.Text;
        bcountry = txtBCountry.Text;
        bpin = txtBzip.Text;
        bcontact = txtBMobileNumber.Text;
    }
    void getShippingAddress()
    {
        saddress = txtSAddress.Text;
        scity=txtSCity.Text;
        sstate = txtSState.Text;
        scountry = txtSCountry.Text;
        spin = txtSZip.Text;
        scontact = txtSMobileNumber.Text;
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void chkOption_CheckedChanged(object sender, EventArgs e)
    {
        if (chkOption.Checked)
        {
            txtSAddress.Enabled = false;
            txtSCity.Enabled = false;
            txtSCountry.Enabled = false;
            txtSState.Enabled = false;
            txtSZip.Enabled = false;
            txtSMobileNumber.Enabled = false;
            txtSAddress.Text = txtBaddress.Text;
            txtSCity.Text = txtBcity.Text;
            txtSState.Text = txtBState.Text;
            txtSCountry.Text = txtBCountry.Text;
            txtSZip.Text = txtBzip.Text;
            txtSMobileNumber.Text = txtBMobileNumber.Text;
            getShippingAddress();
        }
        else
        {
            getShippingAddress();
        }
    }

    void addOrder()
    {
       
       try
        {
            getBillingAddress();
            getShippingAddress();
           
            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            SqlCommand cmd22 = new SqlCommand("insert into Product_Order values('" + email + "','"+date+"','" + baddress + "','" + bcity + "','" + bstate + "','" + bcountry + "','" + bpin + "','" + bcontact + "','" + saddress + "','" + scity + "','" + sstate + "','" + scountry + "','" + spin + "','" + scontact + "')", conn);
            cmd22.ExecuteNonQuery();
           
        }
        catch (Exception jk)
        {

           //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Field should not be blank ');", true);

        }
        finally
        {
            conn.Close();
        }
    }
    int getOrderId()
    {
        
        int i = 0;
        SqlConnection ggscon = null;
        ggscon = new SqlConnection(connsectionstring1);
        string url15 = "select order_id from Product_Order";
        ggscon.Open();
        SqlCommand cmd = new SqlCommand(url15, ggscon);
        SqlDataReader rs = cmd.ExecuteReader();
        while(rs.Read())
        {
            i = (int)rs.GetDecimal(0);

        }
        Response.Write(i.ToString());
        ggscon.Close();
        return i;
    }

    void addOrderDetail()
    {

        try
        {
            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into order_detail values(" + getOrderId() + ",'" + cart_id + "')", conn);
            cmd.ExecuteNonQuery();
            
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

    protected void btnOrder_Click(object sender, EventArgs e)
    {
        addOrder();
        addOrderDetail();
        int iidk=getOrderId();
        Session["Order_id"] = iidk.ToString();
        Response.Redirect("Payment.aspx");
    }
}
