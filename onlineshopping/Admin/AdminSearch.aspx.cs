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
using System.Collections.Generic;
using System.IO;

public partial class Admin_add2 : System.Web.UI.Page
{
    SqlConnection conn;
    string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
    string imagepath = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Wizard1.PreRender += new EventHandler(Wizard1_PreRender);
        if (IsPostBack == false)
        {
            fill_ModelNumber();
        }
    }
    protected void Wizard1_PreRender(object sender, EventArgs e)
    {
        Repeater SideBarList = Wizard1.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
        SideBarList.DataSource = Wizard1.WizardSteps;
        SideBarList.DataBind();

    }
    protected string GetClassForWizardStep(object wizardStep)
    {
        WizardStep step = wizardStep as WizardStep;

        if (step == null)
        {
            return "";
        }
        int stepIndex = Wizard1.WizardSteps.IndexOf(step);

        if (stepIndex < Wizard1.ActiveStepIndex)
        {
            return "prevStep";
        }
        else if (stepIndex > Wizard1.ActiveStepIndex)
        {
            return "nextStep";
        }
        else
        {
            return "currentStep";
        }
    }
    void fill_ModelNumber()
    {
        try
        {

            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            string slectuname = "select model_Number from Product";
            SqlCommand cmd = new SqlCommand(slectuname, conn);
            SqlDataReader rs = cmd.ExecuteReader();
            cboModelNumberc.Items.Clear();
            cboModelNumberc.Items.Add("Select Model Number");
            while (rs.Read())
            {
                cboModelNumberc.Items.Add(rs.GetString(0));
            }
        }
        catch (Exception tt)
        {
        }
        finally
        {
            conn.Close();
        }
    }
    protected void cboModelNumberc_SelectedIndexChanged(object sender, EventArgs e)
    {
        searchProduct();
        serarch_Feature();
        if (chkupdate.Checked==true ||(chkview.Checked==true && chkupdate.Checked==true))
        {
            
            btnupdate.Visible = true;
        }
    }
    
    void searchProduct()
    {
        string a = "";

        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select * from Product where model_Number='" + cboModelNumberc.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
 
            txtCompanyName.Text = rs.GetString(0);
            txtStock.Text = rs.GetString(2);
            TxtDiscount.Text = rs.GetString(3);
            txtOriginalPrice.Text = rs.GetString(4);
            string memor = rs.GetString(5);
            
            int last = Convert.ToInt32(memor.LastIndexOf(' '));
            string memo = memor.Substring(0,last);
            txtMemory.Text = memo;


            int last2 = Convert.ToInt32(memor.LastIndexOf(' '));
            string size = memor.Substring(memo.Length+1);
            cboMemory2.Text = size;

            cboOS.Text = rs.GetString(6);
            cboStatus.Text = rs.GetString(7);
            imagepath = rs.GetString(8);
        }
        
            Image1.ImageUrl = imagepath;
    }
 
    void serarch_Feature()
    {
        conn = new SqlConnection(connsectionstring1);
        conn.Open();
        string slectuname = "select * from Features where model_Number='" + cboModelNumberc.Text + "'";
        SqlCommand cmd = new SqlCommand(slectuname, conn);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
           // txtScreenSize.Text = rs.GetString(1);
            if (rs.GetString(1) == "Not applicable")
            {
                chkScreenSize.Enabled = false;
            }
            else
            {
                txtScreenSize.Text = rs.GetString(1);
                chkScreenSize.Checked = true;
                txtScreenSize.Enabled = true;
            }

          //  txtProcessor.Text = rs.GetString(2);
            if (rs.GetString(2)== "Not applicable")
            {
                chkProcessor.Checked = false;
            }
            else
            {
                txtProcessor.Text = rs.GetString(2);
                chkProcessor.Checked = true;
                txtProcessor.Enabled = true;
            }
           // txtRam.Text = rs.GetString(3);
            if (rs.GetString(3) == "Not applicable")
            {

                chkRam.Checked = false;
            }
            else
            {
                chkRam.Checked = true;
                txtRam.Text = rs.GetString(3);
                txtRam.Enabled = true;
            }
            if (rs.GetString(4) == "Not applicable")
            {
                chk3G.Checked = false;
            }
            else
            {
                chk3G.Checked = true;
                cbo3gkk.Text = rs.GetString(4);
                cbo3gkk.Enabled = true;
            }

            if (rs.GetString(5) == "Not applicable")
            {

                chkBluetooth.Checked = false;
            }
            else
            {
                chkBluetooth.Checked = true;

                cboBluetooth.Text = rs.GetString(5);
                cboBluetooth.Enabled = true;
            }


            if (rs.GetString(6) == "Not applicable")
            {

                chkGPRS.Checked = false;
            }
            else
            {
                txtGprs.Text = rs.GetString(6);
                chkGPRS.Checked = true;
                txtGprs.Enabled = true;
            }


            if (rs.GetString(7) == "Not applicable")
            {

                chkWIFI.Checked = false;
            }
            else
            {
                txtwifi.Text = rs.GetString(7);
                chkWIFI.Checked = true;
                txtwifi.Enabled = true;
            }


            if (rs.GetString(8) == "Not applicable")
            {

                chkBattery.Checked = false;
            }
            else
            {
                txtBattery.Text = rs.GetString(8);
                chkBattery.Checked = true;
                txtBattery.Enabled = true;
            }
        }  

    }
    
    protected void chkImageUpdate_CheckedChanged(object sender, EventArgs e)
    {
            lbluploadImage.Visible = true;
            txtFileUpload.Visible = true;

            uploadImage.Visible = true;
    }
    protected void chkScreenSize_CheckedChanged(object sender, EventArgs e)
    {
        txtScreenSize.Enabled = true;
    }
    protected void chkProcessor_CheckedChanged(object sender, EventArgs e)
    {
        txtProcessor.Enabled = true;
    }
    protected void chkRam_CheckedChanged(object sender, EventArgs e)
    {
        txtRam.Enabled = true;
    }
    protected void chk3G_CheckedChanged(object sender, EventArgs e)
    {
        cbo3gkk.Enabled = true;
    }
    protected void chkBluetooth_CheckedChanged(object sender, EventArgs e)
    {
        cboBluetooth.Enabled = true; 
    }
    protected void chkGPRS_CheckedChanged(object sender, EventArgs e)
    {
        txtGprs.Enabled = true;
    }
    protected void chkWIFI_CheckedChanged(object sender, EventArgs e)
    {
        txtwifi.Enabled = true;
    }
    protected void chkchkBattery_CheckedChanged(object sender, EventArgs e)
    {
        txtBattery.Enabled = true;
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        UpdateProduct();
        UpdateFeatures();
       
    }
   void UpdateProduct()
    {
        string c_name, m_no, qun, disco, price, Tmemory, Tos, Tstatus,img_path;
        c_name = txtCompanyName.Text;
        m_no = cboModelNumberc.Text;
        qun = txtStock.Text;
        disco = TxtDiscount.Text;
        price = txtOriginalPrice.Text;
        Tmemory = txtMemory.Text+" " + cboMemory2.Text;
        Tos = cboOS.Text;
        Tstatus = cboStatus.Text;
        if (chkImageUpdate.Checked)
        {
            img_path = imagepath1();
        }
        else
        {
            img_path = imagepath;
        }
       try
        {

            string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            conn = new SqlConnection(connsectionstring1);
            conn.Open();

            string updateproduct = "update Product set  company_name='" + c_name + "', stocks='" + qun + "', discount='" + disco + "', original_price='" + price + "', memory='" + Tmemory + "', os='" + Tos + "', status='" + Tstatus + "', image_path='" + Tstatus + "' where model_Number='" + m_no + "'";

           SqlCommand cmd = new SqlCommand(updateproduct, conn);
           cmd.ExecuteNonQuery();
           ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('successful updated');", true);
       }
        catch (Exception jk)
        {
           
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Check the fields');", true);

        }
       finally
        {
            conn.Close();
       }
    }
   void UpdateFeatures()
    {
        string batteryc,ss3g,processor,m_no, screen_desc, ram_desc, blueTooth, Gprs, Wifi;
        m_no =cboModelNumberc.Text;
        if (chkScreenSize.Checked == true)
        {
            screen_desc = txtScreenSize.Text;
        }
        else
        {
            
            screen_desc ="Not applicable";
        }
        if (chkProcessor.Checked==true)
        {
            processor = txtProcessor.Text;
        }
        else
        {
          // camera = "false";
            processor = "Not applicable";
        }
        if (chkRam.Checked == true)
        {
            
          
            ram_desc = txtRam.Text;
        }
        else
        {
            
            ram_desc = "Not applicable";
        }
        if (chk3G.Checked==true)
        {
            ss3g=cbo3gkk.Text;
        }
        else
        {
            ss3g = "Not applicable";
        }
        if (chkBluetooth.Checked == true)
        {
            blueTooth = cboBluetooth.Text;
        }
        else
        {
            blueTooth = "Not applicable";
        }
        if (chkGPRS.Checked == true)
        {
            Gprs = txtGprs.Text;
        }
        else
        {
            Gprs = "Not applicable";
        }
        if (chkWIFI.Checked == true)
        {
            Wifi =txtwifi.Text;
        }
        else
        {
            Wifi = "Not applicable";
        }
        if(chkBattery.Checked==true)
        {
            batteryc=txtBattery.Text;

        }
        else
            batteryc="Not applicable";
        try
        {

            string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            conn = new SqlConnection(connsectionstring1);
            conn.Open();

            string updatefea = "update Features set  Screen='" + screen_desc + "', processor='" + processor + "', ram='" + ram_desc + "', s3g='" + ss3g + "', bluetooth='" + blueTooth + "', gprs='" + Gprs + "', wifi='" + Wifi + "', battery_capacity='" + batteryc + "'  where model_Number='"+m_no+"'";

           SqlCommand cmd = new SqlCommand(updatefea, conn);
            cmd.ExecuteNonQuery();
        }
        catch (Exception m)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Features problem');", true);

        }
        finally
        {
            conn.Close();
        }

    }
    string imagepath1()
    {
        string filename,path_of_image="false";
        string folder = Server.MapPath("~/Upload");
        if (uploadImage.HasFile)
        {
            if (uploadImage.PostedFile.ContentType.Equals("image/png") || uploadImage.PostedFile.ContentType.Equals("image/jpeg"))
            {
                filename = Path.GetFileName(uploadImage.FileName);
                uploadImage.SaveAs(folder + @"/" + uploadImage.FileName);
                path_of_image = "~/Upload/" + uploadImage.FileName;
               
            }
        }
        else
        {
        }
        return path_of_image;
    }



   
}
