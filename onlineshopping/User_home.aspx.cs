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
    
    
    static string subQuery = null;
    static string mainquery = null;
    SqlConnection con = null;
    static string range;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
          
        if (IsPostBack == false)
        {
            
            addDetails();
            FillCompany();
        }

    }

   void addDetails()
    {
        try
        {
            //string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            con = new SqlConnection(connsectionstring1);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Product ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Product");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        catch (Exception e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error in FillProduct method');", true);

        }
        finally
        {
            con.Close();
        }
    }
   void addDetails(string query)
   {
       try
       {
           //string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
           con = new SqlConnection(connsectionstring1);
           con.Open();      
           SqlDataAdapter da = new SqlDataAdapter(query, con);
           DataSet ds = new DataSet();
           da.Fill(ds, "Product");
           DataList1.DataSource = ds.Tables[0];
           DataList1.DataBind();
       }
       catch (Exception e)
       {
           //Response.Write(query);
           ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error in FillProduct method');", true);

       }
       finally
       {
           con.Close();
       }

   }
   void FillCompany()
   {
       con = new SqlConnection(connsectionstring1);
       SqlDataAdapter sda = new SqlDataAdapter("select distinct company_name  from Product", con);
       DataSet ds = new DataSet();
       sda.Fill(ds, "Product");
       if (ds.Tables[0].Rows.Count > 0)
       {
           chklstBrand.DataSource = ds.Tables[0];
           chklstBrand.DataTextField = "company_name";
           chklstBrand.DataBind();
       }
       con.Close();

   }
   protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
   {
       ImageButton imgbtn = (ImageButton)sender;
       Label lblproductId = (Label)imgbtn.Parent.FindControl("lblProductId");
       Session["iid"] = lblproductId.Text;
       Response.Redirect("User_Mobile_details.aspx");//?id" + lblproductId.Text);
   }
  
   protected void chklstBrand_SelectedIndexChanged(object sender, EventArgs e)
   {
       string company_nm = null;
       mainquery = "select * from Product where";
       int count = 0;
       foreach (ListItem lstItm in chklstBrand.Items)
       {
           if (lstItm.Selected == true && company_nm == null)
           {
               company_nm = "'" + lstItm.Text + "'";
               count = 1;
           }
           else
               if (lstItm.Selected == true && company_nm != null)
               {
                   count = 1;
                   company_nm = company_nm + ", '" + lstItm.Text + "'";
               }
       }
       if (count != 0)
       {
           if (subQuery == null || subQuery.Contains("company_name"))
           {
               subQuery = "  company_name in (" + company_nm + ")";
               mainquery = mainquery + subQuery;
           }
           else
               if (subQuery != null && subQuery.Contains("company_name") == false)
               {
                   subQuery = subQuery + " and  company_name in (" + company_nm + ")";
                   mainquery = mainquery + subQuery;
               }
           addDetails(mainquery);
       }
       else
       {
           addDetails();
       }
   }

   protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
   {
       range = null;
       char[] sp = { '-' };
       mainquery = "select *  from Product where ";
       foreach (ListItem lstItmPrice in CheckBoxList1.Items)
       {
           if (lstItmPrice.Selected == true)
           {
               if (range == null && subQuery == null)
               {
                   string[] subStringValue = lstItmPrice.Text.Split(sp);
                   range = "original_price Between " + subStringValue[0] + " and " + subStringValue[1];
                   mainquery = mainquery + range;
               }
               if (range == null && subQuery != null)
               {
                   string[] subStringValue = lstItmPrice.Text.Split(sp);
                   range = "and original_price Between  " + subStringValue[0] + " and " + subStringValue[1];
                   mainquery = mainquery + subQuery + range;
               }
               addDetails(mainquery);
           }
       }
   }
}
