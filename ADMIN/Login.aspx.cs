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

public partial class SkAdminPanel : System.Web.UI.Page
{
    Admin_DS.ADMIN_SELECTDataTable ADT = new Admin_DS.ADMIN_SELECTDataTable();
    Admin_DSTableAdapters.ADMIN_SELECTTableAdapter AAdapter = new Admin_DSTableAdapters.ADMIN_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        ADT = AAdapter.SelectAdmin();

        for (int i = 0; i < ADT.Rows.Count; i++)
        {
            if (txtusename.Text == ADT.Rows[i]["Email"].ToString() && txtpassword.Text == ADT.Rows[i]["Password"].ToString())
            {
                Session["admin"] = ADT.Rows[i]["fname"].ToString() + " " +ADT.Rows[i]["lname"].ToString();
                Session["aid"] = ADT.Rows[i]["id"].ToString();
                Session["type"] = ADT.Rows[i]["type"].ToString();
                Session["code"] = ADT.Rows[i]["brnchcode"].ToString();
                Session["branch"] = ADT.Rows[i]["branch"].ToString();
                Response.Redirect("Admin.aspx");
            }
        
        }
        lblmsg.Text = "Invalid Credential !!";

    }
}
