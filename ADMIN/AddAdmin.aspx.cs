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

public partial class AddAdmin : System.Web.UI.Page
{
    Admin_DS.ADMIN_SELECTDataTable ADT = new Admin_DS.ADMIN_SELECTDataTable();
    Admin_DSTableAdapters.ADMIN_SELECTTableAdapter AAdapter = new Admin_DSTableAdapters.ADMIN_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        ADT = AAdapter.SelectAdmin();
        GVAdmin.DataSource = ADT;
        GVAdmin.DataBind();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int insert = AAdapter.Insert(txtfname.Text, txtlname.Text, txtmobile.Text, txtemail.Text, txtbranch.Text, txtcode.Text, txtpass.Text,Convert.ToInt32(TextBox1.Text));

        lblmsg.Text = "Done !!";
        txtfname.Text = "";
        txtlname.Text = "";
        txtmobile.Text = "";
        txtemail.Text = "";
        txtbranch.Text = "";
        txtcode.Text = "";
        
    }
}
