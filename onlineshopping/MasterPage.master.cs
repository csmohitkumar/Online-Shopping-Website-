using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //admin_panel.Visible = false;
        //Customer_panal.Visible = false;

        if (Session["userID"] == null)
        {
            Customer_panal.Visible = true;
            admin_panel.Visible = false;
            lblsignIn.Visible = true;
            lblRegister.Visible = true;
            lblUserNameWelcome.Text = "";
            lblLogout.Visible = true;
        }
        else
        {
            lblLogout.Visible = false;
            lblsignIn.Visible = false;
            lblRegister.Visible = false;
            lblUserNameWelcome.Text = Session["userID"].ToString();
        }
        if (Session["Check"] == "client")
        {
            lblsignIn.Visible = true;
            lblRegister.Visible = true;
            lblLogout.Visible = true;
            admin_panel.Visible = false;
            Customer_panal.Visible = true;
        }
        if (Session["Check"] == "Admin")
        {
            lblsignIn.Visible = true;
            lblRegister.Visible = true;
            lblLogout.Visible = true;
            Customer_panal.Visible = false;
            admin_panel.Visible = true;
        }
       

    }
}
