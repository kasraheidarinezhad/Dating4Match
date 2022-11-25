using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_AdminAccount : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable RDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Label4.Text = "NEW USER ACCOUNT";


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
        Button6.Visible = true;
        MultiView1.ActiveViewIndex = -1;
    }
    protected void Button2_Click(object sender, EventArgs e)
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
        Button6.Visible = false;
        MultiView1.ActiveViewIndex = -1;
        Label4.Text = "ACTIVATE USER ACCOUNT";
    }
    protected void Button3_Click(object sender, EventArgs e)
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
        Button6.Visible = true;
        MultiView1.ActiveViewIndex = -1;
        Label4.Text = "DEACTIVATE USER ACCOUNT";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;

        if (lblpid.Text.StartsWith("VT"))
        {
            RAdapter.AccountActivated(Convert.ToInt32(drpaccount.SelectedValue.ToString()), 5);
        }
        else if (lblpid.Text.StartsWith("MM"))
        {
            RAdapter.AccountActivated(Convert.ToInt32(drpaccount.SelectedValue.ToString()), 1);
        }
            lblmsg.Text = "Account Activated Successfully. !!";

        RDT = RAdapter.SelectUnActiveAccount();
        drpaccount.DataSource = RDT;
        drpaccount.DataTextField = "Email";
        drpaccount.DataValueField = "uID";
        drpaccount.DataBind(); MultiView1.ActiveViewIndex = -1;
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblselect.Visible = true;
        btnsubmit.Visible = true;
        drpaccount.Visible = true;
        RAdapter.AccountDeactivate(Convert.ToInt32(drpaccount.SelectedValue.ToString()));
        lblmsg.Text = "Account Deactivated Successfully. !!"; MultiView1.ActiveViewIndex = -1;

        RDT = RAdapter.SelectActivatedAccounts();
        drpaccount.DataSource = RDT;
        drpaccount.DataTextField = "Email";
        drpaccount.DataValueField = "uID";
        drpaccount.DataBind(); MultiView1.ActiveViewIndex = -1;


    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        RDT = RAdapter.SelectByID(Convert.ToInt32(drpaccount.SelectedValue.ToString()));
        lblpid.Text = RDT.Rows[0]["profileid"].ToString();
        MultiView1.ActiveViewIndex = 0;
        listdetail.DataSource = RDT;
        listdetail.DataBind();
    }
}