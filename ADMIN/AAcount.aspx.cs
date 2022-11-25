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

public partial class ADMIN_AAcount : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable RDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

       // if (Session["aid"] != null)
        //{
            //RDT = RAdapter.SelectUnActiveAccount();
            //drpaccount.DataSource = RDT;
            //drpaccount.DataTextField = "Email";
            //drpaccount.DataValueField = "uID";
            //drpaccount.DataBind();

        //}
       // else
       // {
       //     Response.Redirect("skadmin.aspx");
       // }
       
       
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        RDT = RAdapter.SelectByID(Convert.ToInt32(drpaccount.SelectedValue.ToString()));
        //lblfname.Text = RDT.Rows[0]["fname"].ToString();
        //lbllname.Text = RDT.Rows[0]["lname"].ToString();
        //lblcontact.Text = RDT.Rows[0]["mobile"].ToString() + ", " + RDT.Rows[0]["Areacode"].ToString() + " - " + RDT.Rows[0]["landline"].ToString();
        //lblcity.Text = RDT.Rows[0]["city"].ToString();
        //lbladderess.Text = RDT.Rows[0]["Address1"].ToString() + ", " + RDT.Rows[0]["address2"].ToString();
        //lblemail.Text = RDT.Rows[0]["email"].ToString();
        //lblbirthdate.Text = RDT.Rows[0]["Birthdate"].ToString();
        //lblage.Text = RDT.Rows[0]["age"].ToString();
        //lblpincode.Text = RDT.Rows[0]["pincode"].ToString();
        //lblreligion.Text = RDT.Rows[0]["Religion"].ToString();
        MultiView1.ActiveViewIndex = 0;
        listdetail.DataSource = RDT;
        listdetail.DataBind();
    }
    protected void btnactive_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        RDT = RAdapter.SelectUnActiveAccount();
        drpaccount.DataSource = RDT;
        drpaccount.DataTextField = "Email";
        drpaccount.DataValueField = "uID";
        drpaccount.DataBind();
        lblselect.Text = "Select User For Activation :- ";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;
        btncancel.Visible = true;
        Button1.Visible = true;
        MultiView1.ActiveViewIndex = -1;
    }
    protected void btnactivated_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        RDT = RAdapter.SelectActivatedAccounts();
        drpaccount.DataSource = RDT;
        drpaccount.DataTextField = "Email";
        drpaccount.DataValueField = "uID";
        drpaccount.DataBind();
        lblselect.Text = "Select Activated User :-";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;
        btncancel.Visible = true;     
        Button1.Visible = false;
        MultiView1.ActiveViewIndex = -1;
    }
    protected void btncanceledaccount_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        RDT = RAdapter.SelectCanceledAccount();
        drpaccount.DataSource = RDT;
        drpaccount.DataTextField = "Email";
        drpaccount.DataValueField = "uID";
        drpaccount.DataBind();
        lblselect.Text = "Select Canceled User:-";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;
        btncancel.Visible = false;        
        Button1.Visible = true;
        MultiView1.ActiveViewIndex = -1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;

        RAdapter.AccountActivated(Convert.ToInt32(drpaccount.SelectedValue.ToString()),1);
        lblmsg.Text = "Account Activated Successfully. !!";

        RDT = RAdapter.SelectUnActiveAccount();
        drpaccount.DataSource = RDT;
        drpaccount.DataTextField = "Email";
        drpaccount.DataValueField = "uID";
        drpaccount.DataBind();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;
        RAdapter.AccountDeactivate(Convert.ToInt32(drpaccount.SelectedValue.ToString()));
        lblmsg.Text = "Account Canceled Successfully. !!";
        
        //RDT = RAdapter.SelectUnActiveAccount();
        //drpaccount.DataSource = RDT;
        //drpaccount.DataTextField = "Email";
        //drpaccount.DataValueField = "uID";
        //drpaccount.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Admin_DS.PLAN_CHECK_LEFTDAYS_NEWDataTable DT = new Admin_DS.PLAN_CHECK_LEFTDAYS_NEWDataTable();
        Admin_DSTableAdapters.PLAN_CHECK_LEFTDAYS_NEWTableAdapter Adapter = new Admin_DSTableAdapters.PLAN_CHECK_LEFTDAYS_NEWTableAdapter();
        
        if (TextBox1.Text == "dogcate")
        {
            Adapter.SelectForDailyUpdate();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}
