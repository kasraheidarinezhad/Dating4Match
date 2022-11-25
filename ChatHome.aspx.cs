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

public partial class ChatHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;

        //if (Session["abc"].ToString() == "User")
        //{
        //    MultiView1.ActiveViewIndex = 2;
        //}
        //else if (Session["abc"].ToString() == "Visitor")
        //{
        //    MultiView1.ActiveViewIndex = 3;
        //}
        //else if (Session["abc"].ToString() == "New")
        //{
        //    MultiView1.ActiveViewIndex = 4;
        //}

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        if (txtsend.Text != "")
        {
            string name = Session["username"].ToString();
            string message = txtsend.Text;
            txtsend.Text = "";
            string my = name + "::" + message;

            Application["msg"] = Application["msg"] + my + Environment.NewLine;

            //txtmsg.Text = Application["msg"].ToString();
            // Application["msg"] = "";
            txtsend.Text = "";
        }
    }
}
