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

public partial class Home : System.Web.UI.MasterPage
{
    Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LoginAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
       // lbllogin.Text = "";
        if (Page.IsPostBack == false)
        {
            drpageto.Text = "27";

            if (Session["a"] != null || Session["b"] != null || Session["c"] != null || Session["d"] != null || Session["e"] != null)
            {
                drpsearch.SelectedValue = Session["a"].ToString();
                drpagefrom.Text = Session["b"].ToString();
                drpageto.Text = Session["c"].ToString();
                drpeducation.Text = Session["d"].ToString();
                drplocation.Text = Session["e"].ToString();
            }

        }

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        lbllogin.Text = "";
        if (txtuname.Text == "")
        {
            lbllogin.Text = "username !!";
        }
        else if (txtupass.Text == "")
        {
            lbllogin.Text = "password !!";
        }
        else
        {

            RegDT = RegAdapter.SelectRegistration();

            for (int i = 0; i < RegDT.Rows.Count; i++)
            {
                if (txtuname.Text == RegDT.Rows[i]["username"].ToString() && txtupass.Text == RegDT.Rows[i]["Password"].ToString())
                {
                    //if (RegDT.Rows["status"].ToString() == "1")
                    //{
                    //}
                    //else
                    //{

                    Session["userid"] = RegDT.Rows[i]["uid"].ToString();
                    Session["username"] = RegDT.Rows[i]["username"].ToString();
                    Session["fname"] = RegDT.Rows[i]["fname"].ToString();
                    Session["lname"] = RegDT.Rows[i]["lname"].ToString();
                    LoginAdapter.UpdateLoginCount(Convert.ToInt16(Session["userid"].ToString()));
                    Response.Redirect("main.aspx");
                    //}
                }

            }
            lbllogin.Text = "Invalid Credential";
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        lblsearcherror.Text = "";
        Registration_DS.SEARCHDataTable SimpleDT = new Registration_DS.SEARCHDataTable();
        Registration_DSTableAdapters.SEARCHTableAdapter SimpleAdapter = new Registration_DSTableAdapters.SEARCHTableAdapter();

        if (Convert.ToInt32(drpagefrom.SelectedIndex) > Convert.ToInt32(drpageto.SelectedIndex))
        {
            lblsearcherror.Text = "Select proper age !!";

        }

        Session["a"] = drpsearch.SelectedValue;
        Session["b"] = drpagefrom.SelectedItem.Text;
        Session["c"] = drpageto.SelectedItem.Text;
       // Session["d"] = drpeducation.SelectedItem.Text;
      //  Session["e"] = drplocation.SelectedItem.Text;
        Response.Redirect("Search.aspx");
        //Response.Redirect("Search.aspx?a=" + drpsearch.SelectedValue + "&b=" + drpagefrom.SelectedItem.Text + "&c=" + drpageto.SelectedItem.Text + "&d=" + drpeducation.SelectedItem.Text + "&e=" + drplocation.SelectedItem.Text);

        //SimpleDT = SimpleAdapter.SelectSimpleSearch(drpsearch.SelectedValue, Convert.ToInt32(drpagefrom.SelectedItem.Text), Convert.ToInt32(drpageto.SelectedItem.Text), drpeducation.SelectedItem.Text, drplocation.SelectedItem.Text);
        //if (SimpleDT.Rows.Count > 0)
        //{
        //    listsearch.DataSource = SimpleDT;
        //    listsearch.DataBind();
        //}
    }
}
