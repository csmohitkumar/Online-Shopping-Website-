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

using System.Data.SqlClient;
using System.Collections.Generic;


public partial class User_Mobile_details : System.Web.UI.Page
{
    String id,date1,mk;
    Decimal did,tp;
    SqlConnection con;
    int pricex, id6, tprice;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Session["iid"].ToString();
        con = new SqlConnection(connsectionstring1);
         date1 = DateTime.Now.Date.ToShortDateString(); 
        if (IsPostBack == false)
        {
            BindDetails();
        }
    }

   void BindDetails()
    {
       
      //  try
        {
            
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Product PRO inner join Features FT on PRO.model_Number = FT.model_Number where PRO.model_Number= '" + id + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Product");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
       // catch (Exception e)
        {
           // ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error');", true);

        }
        //finally
        {
            con.Close();
        }
    }



   protected void btnAddCart_Click(object sender, ImageClickEventArgs e)
   {
       ImageButton button1 = (ImageButton)sender;

       Label lblprice12 = (Label)button1.Parent.FindControl("lblPrice1");
       //Label lblurl = (Label)button1.Parent.FindControl("Image4");
       int p = int.Parse(lblprice12.Text);
       pricex = p;
       Session_first_time_check();
 
   }
   void Session_first_time_check()
   {
       
       int price = 0;

       if (Session["cartuser"] == null)
       {
           con.Open();
           SqlCommand cmd = new SqlCommand("insert into cart values('" + date1 + "'," + price + ")", con);
           cmd.ExecuteNonQuery();
           con.Close();
           id6 = getcartid();
           add_cart_details();
           update_first();
           Session["cartuser"] = "true";
           Session["cart_id3"] = mk;
           Response.Redirect("User_Cart.aspx");
       }
       else
       {
           id6 = getcartid();
           Response.Write(id6);
          
           add_cart_details();
           totalPrice();
           con.Close();
           Session["cart_id3"] = mk;
           Response.Redirect("User_Cart.aspx");
       }
           
       
       
   }
   
   int getcartid()
   {
       int a=0;
       decimal p;
       SqlConnection scon;
       string connsectionstring5 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
       scon = new SqlConnection(connsectionstring5);
       scon.Open();
        string slectuname = "select cart_id from cart ";
        SqlCommand cmd = new SqlCommand(slectuname, scon);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
             did= rs.GetDecimal(0);
        }
        int iid = int.Parse(did.ToString());
        mk = iid.ToString();
        scon.Close();
        return iid ;
        
   }
   void add_cart_details()
   {
       //int cart_id1 = getcartid();
       string p_id = id;
       int quentity = 1;
       Response.Write(id6);
       int price = pricex;
       con.Open();
       SqlCommand cmd = new SqlCommand("insert into cart_detail values(" + id6 + ",'" + p_id +"',"+quentity+","+price+")", con);
       cmd.ExecuteNonQuery();
       con.Close();

   }
   void add_cart()
   {
       con.Open();
       SqlCommand cmd = new SqlCommand("update cart set total_price=" + pricex + " where cart_id=" + id6 + "", con);
       cmd.ExecuteNonQuery();
       con.Close();
   }
   string getprice()
   {
       string p = null;
       SqlConnection sscon;
       sscon = new SqlConnection(connsectionstring1);
       sscon.Open();
       string slectuname = "select original_price from Product where model_Number='"+id+"'";
       SqlCommand cmd = new SqlCommand(slectuname, sscon);
       SqlDataReader rs = cmd.ExecuteReader();
       while (rs.Read())
       {
           p = rs.GetString(0);
       }
        sscon.Close();
       return p;
   }
   void update_first()
   {
       string price1 = getprice();
       int mainprice = int.Parse(price1);
       con.Open();
       SqlCommand cmd = new SqlCommand("update cart set total_price=" + price1 + " where cart_id=" + id6 + "", con);
       cmd.ExecuteNonQuery();
       con.Close();
   }
   void update_first(int pr)
   {
       
       con.Open();
       SqlCommand cmd = new SqlCommand("update cart set total_price=" + pr + " where cart_id=" + id6 + "", con);
       cmd.ExecuteNonQuery();
       con.Close();
   }
   void totalPrice()
   {
       tprice = 0;
       SqlConnection stcon;
          stcon = new SqlConnection(connsectionstring1);
       stcon.Open();
       string slectuname = "select total_price from cart where cart_id=" + id6 + "";
       SqlCommand cmd = new SqlCommand(slectuname, stcon);
       SqlDataReader rs = cmd.ExecuteReader();
       while (rs.Read())
       {
           tp = rs.GetDecimal(0);
       }
       string p_price=getprice();
       int product_price = int.Parse(p_price.ToString());

       tprice = (int)tp;
       
       int total_price = product_price +tprice;
       Response.Write(tp);
       stcon.Close();
       update_first(total_price);
       
       
       
   }
}
