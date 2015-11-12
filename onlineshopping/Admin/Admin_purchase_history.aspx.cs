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
        
        if (IsPostBack == false)
        {
            BindDetails();
        }
    }
    void BindDetails()
    {
         //jj = 90;
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        //string jj="mo@gmail.com";
        SqlDataAdapter da = new SqlDataAdapter("SELECT Product_Order.order_id, Product_Order.email, Product_Order.date, Customer.Name, cart_detail.product_id, cart_detail.quentity, cart_detail.price FROM cart INNER JOIN cart_detail ON cart.cart_id = cart_detail.cart_id INNER JOIN order_detail ON cart.cart_id = order_detail.cart_id INNER JOIN Product_Order ON order_detail.order_id = Product_Order.order_id INNER JOIN Customer ON Product_Order.email = Customer.email", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "cart");
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
        conn.Close();

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
}
