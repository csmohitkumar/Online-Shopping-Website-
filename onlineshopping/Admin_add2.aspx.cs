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
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Wizard1.PreRender += new EventHandler(Wizard1_PreRender);
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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        addProduct();
        addFeatures();
    }
    void addProduct()
    {
        string c_name, m_no, qun, disco, price, Tmemory, Tos, Tstatus,img_path;
        c_name = txtCompanyName.Text;
        m_no = txtModelNumber.Text;
        qun = txtStock.Text;
        disco = TxtDiscount.Text;
        price = txtOriginalPrice.Text;
        Tmemory = txtMemory.Text+" " + cboMemory2.Text;
        Tos = cboOS.Text;
        Tstatus = cboStatus.Text;
        img_path = imagepath();
        if (img_path == "false")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please select new Image');", true);
        }
       try
        {

            string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Product values('" + c_name + "','" + m_no + "','" + qun + "','" + disco + "','" + price + "','" + Tmemory + "','" + Tos + "','" + Tstatus + "','" + img_path + "')", conn);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('success');", true);
       }
        catch (Exception jk)
        {
           
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Model Number Already exist');", true);

        }
        finally
        {
            conn.Close();
       }
    }
    void addFeatures()
    {
        string m_no, screen, screen_desc, camera, camera_desc, ram, ram_desc, blueTooth, Gprs, Wifi;
        m_no = txtModelNumber.Text;
        if (chkScreenSize.Checked == true)
        {
        
            screen = "true";
            screen_desc = txtScreenSize.Text;
        }
        else
        {
            screen = "false";
            screen_desc ="Not applicable";
        }
        if (chkCamera.Checked == true)
        {
            
            camera = "true";
            camera_desc = txtCamera.Text;
        }
        else
        {
            camera = "false";
            camera_desc = "Not applicable";
        }
        if (chkRam.Checked == true)
        {
            
            ram = "true";
            ram_desc = txtRam.Text;
        }
        else
        {
            ram = "false";
            ram_desc = "Not applicable";
        }
        if (chkBluetooth.Checked == true)
        {
            blueTooth = "true";
        }
        else
        {
            blueTooth = "false";
        }
        if (chkGPRS.Checked == true)
        {
            Gprs = "true";
        }
        else
        {
            Gprs = "false";
        }
        if (chkWIFI.Checked == true)
        {
            Wifi = "true";
        }
        else
        {
            Wifi = "false";
        }
        try
        {

            string connsectionstring1 = ConfigurationManager.ConnectionStrings["Onlineshopping"].ConnectionString;
            conn = new SqlConnection(connsectionstring1);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Features values('" + m_no + "','" + screen + "','" + screen_desc + "','" + camera + "','" + camera_desc + "','" + ram + "','" + ram_desc + "','" + blueTooth + "','" + Gprs +"','"+Wifi+ "')", conn);
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
    string imagepath()
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
