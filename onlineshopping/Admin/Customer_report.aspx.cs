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
    int orderid1,cartid1,cart5;
    int flag;//,jj;
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader r;
    string connsectionstring1;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag = 0;
        //username = Session["userID"].ToString();
        connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
        
       
    }
    
    int getOrderId()
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
            String sql = "select order_id from Product_Order where email='"+username+"'";
            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader r = cmd.ExecuteReader();

            while (r.Read())
            {
                orderid1=(int)r.GetDecimal(0);
            }
            conn.Close();
            return orderid1;
    }
    int getcartid()
    {
        SqlConnection cg;
        cg = new SqlConnection(connsectionstring1);
        cg.Open();
        String sql = "select cart_id from order_detail where order_id=" + getOrderId() + "";
        SqlCommand cmd = new SqlCommand(sql, cg);

        SqlDataReader r = cmd.ExecuteReader();

        while (r.Read())
        {
            cartid1 = (int)r.GetDecimal(0);
        }
        cg.Close();
        return cartid1;

    }
    protected void cboCustomerID_SelectedIndexChanged(object sender, EventArgs e)
    {
        


    }
}
