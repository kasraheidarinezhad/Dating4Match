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

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       lblsearch.Text = "";
        Registration_DS.SEARCHDataTable SimpleDT = new Registration_DS.SEARCHDataTable();
        Registration_DSTableAdapters.SEARCHTableAdapter SimpleAdapter = new Registration_DSTableAdapters.SEARCHTableAdapter();

        SimpleDT = SimpleAdapter.SelectSearchWithoutLogin(Session["a"].ToString(), Convert.ToInt32(Session["b"].ToString()), Convert.ToInt32(Session["c"].ToString()));
        if (SimpleDT.Rows.Count > 0)
        {
            string sex = Session["a"].ToString();
            if (sex == "MALE")
            {
                sex = "Groom";

            }
            else
            {
                sex = "Bride";
            }

            //lblsearch.Text = "Search Criteria - " + gender.ToString() + ", " + agefrom + "-" + ageto + ", " + education.ToString() + ", " + location.ToString();

            lblsearch.Text = "Search Criteria - " + sex.ToString() +", " + Session["b"].ToString() + "-" + Session["c"].ToString();

            listsearch.DataSource = SimpleDT;
            listsearch.DataBind();
        }
        else
        {
            lblsearch.Text = "No match found";
        
        }
    }
    protected void listsearch_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewmore")
        {
            Response.Redirect("registration.aspx");
        }
    }

}
