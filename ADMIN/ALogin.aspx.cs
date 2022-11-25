using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_ALogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (txtname.Text == "meera" && txtpass.Text == "12345")
        {
            Response.Redirect("AdminAccount.aspx");
        }
        else
        {
            lbl.Text = "Invalid Detail";
        }
    }
}