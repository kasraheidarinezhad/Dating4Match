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

public partial class Password : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable RDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtcurrentpass.Focus();
        MaintainScrollPositionOnPostBack = true;
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        try
        {
            RDT = RAdapter.SelectByID(Convert.ToInt32(Session["userid"].ToString()));

            if (txtcurrentpass.Text == RDT.Rows[0]["password"].ToString()) 
            {

                RAdapter.CHANGEPASSWORD(Convert.ToInt32(Session["userid"].ToString()), txtnewpass.Text);
                lblmsg.Text = "Password Changed Successfully.";
            }
            else
            {
            lblmsg.Text="Wrong Current Password !!";
            }
        }
        catch (Exception)
        { }

    }
}
