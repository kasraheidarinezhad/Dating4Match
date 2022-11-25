using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MyAccount : System.Web.UI.Page
{
    Account_DS.ACCOUNT_SELECTDataTable AccDT = new Account_DS.ACCOUNT_SELECTDataTable();
    Account_DSTableAdapters.ACCOUNT_SELECTTableAdapter AccAdapter = new Account_DSTableAdapters.ACCOUNT_SELECTTableAdapter();
    Registration_DS.REGI_SELECTDataTable RDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();
    Payment_DS.PAYMENT_SELECTDataTable PDT = new Payment_DS.PAYMENT_SELECTDataTable();
    Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter PAdapter = new Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
       
            AccDT = AccAdapter.SelectBYID(Convert.ToInt32( Session["userid"].ToString()));
          
           
            lblpid.Text = Session["PID"].ToString();
            lblprofile.Text = Session["PID"].ToString();
          
            lblplanname.Text = Session["plan"].ToString();



            if (Session["abc"].ToString() == "User")
            {
                if (Session["plan"].ToString() == "0")
                {
                    lblplanname.Text = "Free";
                    MultiView1.ActiveViewIndex = 0;
                }
                else
                {
                    MultiView1.ActiveViewIndex = 1;
                    lblplanname.Text = "Active";

                }
            }
            else
            {
                MultiView1.ActiveViewIndex = 2;
                lblprofile0.Text = Session["PID"].ToString();
                Label1.Visible = false;
                rdoenggage.Visible = false;
                rdonotengage.Visible = false;
            }



        if (Page.IsPostBack == false)
        {

            if (Session["status"].ToString() == "1")
            {
                rdonotengage.Checked = true;
                lblengage.Visible = false;
                rdoenggage.Checked = false;
                //CheckBox1.Checked = false;
            }
            else if (Session["status"].ToString() == "11")
            {
                rdonotengage.Checked = false;
                rdoenggage.Checked = true;
                lblengage.Visible = true;
               // CheckBox1.Checked = false;
            }
           
       }
    }
    catch (Exception)
    { }
    }
   
   
    protected void rdonotengage_CheckedChanged(object sender, EventArgs e)
    {
        try{
           
                RAdapter.AccountActivated(Convert.ToInt32(Session["userid"].ToString()),1);
                lblengage.Visible = false;
                CheckBox1.Checked = false;
                Session["status"] = "1";
                Session["abc"] = "User";
                Response.Redirect("MyAccount.aspx");
    }
    catch (Exception)
    { }
    }
    protected void rdoenggage_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            RAdapter.REGI_STATUS_ENGAGE(Convert.ToInt32(Session["userid"].ToString()));
            lblengage.Visible = true;
            Session["status"] = "11";
            Session["abc"] = "Engage"; Response.Redirect("MyAccount.aspx");
            //rdonotengage.Checked = false;
        }
        catch (Exception)
        { }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            if (CheckBox1.Checked == true)
            {
                rdoenggage.Checked = true;
                RAdapter.AccountDeactivate(Convert.ToInt32(Session["userid"].ToString()));

            }
            else
            {
                if (rdonotengage.Checked == true)
                {
                    RAdapter.AccountActivated(Convert.ToInt32(Session["userid"].ToString()),1);
                }
                else
                {
                    RAdapter.AccountDeactivate(Convert.ToInt32(Session["userid"].ToString()));
                    lblengage.Visible = true;
                }
            }
        }
        catch (Exception)
        { }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Upgrade.aspx");
    }
}
