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

public partial class User_Cart : System.Web.UI.Page
{
    SqlConnection con;
    string cart_id1,pro_id;
    int total_price;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart_id3"] == null)
        {
            Response.Redirect("User_home.aspx");
        }
            cart_id1 = Session["cart_id3"].ToString();
            pro_id = Session["iid"].ToString();
       
       
        if (IsPostBack == false)
        {
            BindDetails();
           fill_quentity();
           Label6.Text = totalPriceAllQuentity();
        }
    }
    void BindDetails()
    {

            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT cart.*,cart_detail.* FROM cart INNER JOIN cart_detail ON cart.cart_id = cart_detail.cart_id where cart.cart_id= " + int.Parse(cart_id1) + " ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cart");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            con.Close();
     
    }
    public string getpricePer(string proid)
    {
        string p_price = "false";
        SqlConnection ggscon = null;
        ggscon = new SqlConnection(connsectionstring1);
        string url15 = "select original_price from Product where model_Number ='" + proid + "'";
        ggscon.Open();
        SqlCommand cmd = new SqlCommand(url15, ggscon);
        SqlDataReader rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            p_price = rs.GetString(0);

        }
        ggscon.Close();
        return p_price;
    }
        public string getimage(string pid)
        {
            string path ="false";
            SqlConnection ggcon = null ;
            ggcon = new SqlConnection(connsectionstring1);
            string url1 = "select image_path from Product where model_Number ='"+pro_id+"'";
            ggcon.Open();
            SqlCommand cmd = new SqlCommand(url1, ggcon);
            SqlDataReader rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                 path=rs.GetString(0);
                 
            }
            ggcon.Close();
            return path;
            

        }
        public void fill_quentity()
        {
           string que="1";
           foreach (DataListItem item in DataList1.Items)
           {
               
               int qty = 0;
               
                string url1 = "select stocks from Product where model_Number ='" + pro_id + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(url1, con);
                SqlDataReader rs = cmd.ExecuteReader();

                while (rs.Read())
                {
                    que = rs.GetString(0);
                }
                con.Close();
                DropDownList itemque = (DropDownList)item.FindControl("cboQuentity");
                itemque.Items.Clear();
                itemque.Items.Add("quentity");
                for (int i = 0; i < (int.Parse(que)); i++)
                {
                    itemque.Items.Add((i + 1).ToString());
                }
           }
        }
      
        int getPrice(string  p_id7)
        {
            int pricePerQuentity = 0;
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("select original_price from  Product where model_Number ='" + p_id7 + "'", con);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                pricePerQuentity = int.Parse(rs.GetString(0));
            }
            con.Close();
            return pricePerQuentity;
        }

        protected void cboQuentity_SelectedIndexChanged(object sender, EventArgs e)
        {
            double total = 0.0,final=0;
            DropDownList quentity_one = (DropDownList)sender;
            int quentity1 = int.Parse(quentity_one.Text);
            Label priceone = (Label)quentity_one.Parent.FindControl("lblpriceperPice");
            double price = double.Parse(priceone.Text);
            Label current_total = (Label)quentity_one.Parent.FindControl("lblTotalPrice");
            double curr_total = double.Parse(current_total.Text);
            Label product_id = (Label)quentity_one.Parent.FindControl("lblmodelnumber1");
            total = quentity1 * getPrice(product_id.Text);
            int currentQue_in_db=getQuentity(cart_id1,product_id.Text);
            if (quentity1 > currentQue_in_db)
            {
                final = (quentity1 - currentQue_in_db) * getPrice(product_id.Text);
                updatePrice(total, cart_id1);
                updatequentity(quentity1, cart_id1, product_id.Text, total);
            }
            else
            {
                final = (currentQue_in_db - quentity1) * getPrice(product_id.Text);
                updatePrice(total, cart_id1);
                updatequentity(quentity1, cart_id1, product_id.Text, total);
            }

            //updatePrice(total,cart_id1);
            //updatequentity(quentity1,cart_id1, product_id.Text,total);
            BindDetails();
            fill_quentity();
            Label6.Text = totalPriceAllQuentity();
        
        }
        int getQuentity(string cart_id1, string pp_id)
        {
            int que3 = 0;
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("select quentity from  cart_detail  where cart_id =" + cart_id1 + " and product_id ='" + pp_id + "'", con);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                que3=(int)rs.GetDecimal(0);
            }
            con.Close();
            return que3;
           
        }


        void updatePrice(double final5, string c_id)
        {
            SqlConnection connect;
            connect = new SqlConnection(connsectionstring1);
            connect.Open();
            SqlCommand cmd = new SqlCommand("update cart set total_price=" + totalPriceAllQuentity() + " where cart_id=" + c_id + "", connect);
            cmd.ExecuteNonQuery();
            connect.Close();
        }
        void updatequentity(int quentity1, string cart_id1,string p_id4, double qui)
        {
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("update cart_detail set quentity=" + quentity1 + ", price="+qui+" where cart_id=" + cart_id1 + " and product_id='" + p_id4 + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();    

        }
       
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
           // Label6.Text = "kladlkjasl";// totalPriceAllQuentity().ToString();
            

        }
         
        string totalPriceAllQuentity()
        {
            double totalvalue = 0;
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("select price from  cart_detail  where cart_id =" + cart_id1 + "", con);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                totalvalue = totalvalue+(Double)rs.GetDecimal(0);
                
            }
            
            con.Close();
            
            return totalvalue.ToString();
        }

        
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbutton = (ImageButton)sender;
            Label model = (Label)imgbutton.Parent.FindControl("lblmodelnumber1");
            Label priceone = (Label)imgbutton.Parent.FindControl("lblpriceperPice");
            double price = double.Parse(priceone.Text);
            updatecart_total_price(priceone.Text);    
            deletecart_Detail(cart_id1, model.Text);
            BindDetails();
            fill_quentity();
        }
        void deletecart_Detail(string cart_no, string p_id4)
        {
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE from cart_detail where cart_id=" + cart_no + " and product_id='" + p_id4 + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        void updatecart_total_price(string px)
        {

            double outdated_price = 0.0, new_price = 0.0 ;
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlCommand cmd = new SqlCommand("select total_price from  cart where cart_id ='" + cart_id1 + "'", con);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                outdated_price = (double)rs.GetDecimal(0);
            }
            con.Close();
            new_price = outdated_price - double.Parse(px);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("update cart set total_price=" + new_price + " where cart_id=" + cart_id1 + "", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            
        }
        protected void btnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("User_home.aspx");
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["Total_Amount"] = Label6.Text;
            if (Session["userID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Order.aspx");
            }
        }
}
