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

public partial class SearchIn : System.Web.UI.Page
{
    Registration_DS.SEARCHDataTable SimpleDT = new Registration_DS.SEARCHDataTable();
    Registration_DSTableAdapters.SEARCHTableAdapter SimpleAdapter = new Registration_DSTableAdapters.SEARCHTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try{
        lblsearch.Text = "";

        MaintainScrollPositionOnPostBack = true;
       SimpleDT = SimpleAdapter.SelectSimpleSearch(Session["a"].ToString(), Convert.ToInt32(Session["b"].ToString()), Convert.ToInt32(Session["c"].ToString()), Session["d"].ToString(), Session["e"].ToString(),Convert.ToInt32(Session["userid"]));
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

            lblsearch.Text = "Search Criteria - " + sex.ToString() + ", " + Session["b"].ToString() + "-" + Session["c"].ToString() + ", " + Session["d"].ToString() + ", " + Session["e"].ToString();

            BindItemsList();

            //listsearch.DataSource = SimpleDT;
           // listsearch.DataBind();
       
        
        
        }
        else
        {
            lblsearch.Text = "No match found";
            lbtnFirst.Visible = false;
            lbtnLast.Visible = false;
            lbtnPrevious.Visible = false;
            lbtnNext.Visible = false;

        }
    }
    catch (Exception)
    { }

    }
    protected void listsearch_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try{
        if (e.CommandName == "View")
        {
            Session["viewid"] = listsearch.DataKeys[e.Item.ItemIndex].ToString();
            Response.Redirect("user.aspx");
        }
    }
    catch (Exception)
    { }
    }


  //  pagging....


    protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName.Equals("Paging"))
        {

            CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());

            this.BindItemsList();

        }

    }

    protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");

        if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
        {

            lnkbtnPage.Enabled = false;

            lnkbtnPage.Style.Add("fone-size", "14px");

            lnkbtnPage.Font.Bold = true;
        }

    }

    protected void lbtnNext_Click(object sender, EventArgs e)
    {

        CurrentPage += 1;

        this.BindItemsList();

    }

    protected void lbtnPrevious_Click(object sender, EventArgs e)
    {

        CurrentPage -= 1;

        this.BindItemsList();

    }

    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        CurrentPage = (Convert.ToInt32(ViewState["TotalPages"]) - 1);

        this.BindItemsList();
    }

    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        CurrentPage = 0;
        this.BindItemsList();
    }

    private int CurrentPage
    {

        get
        {

            object objPage = ViewState["_CurrentPage"];

            int _CurrentPage = 0;

            if (objPage == null)
            {

                _CurrentPage = 0;

            }

            else
            {

                _CurrentPage = (int)objPage;

            }

            return _CurrentPage;

        }

        set { ViewState["_CurrentPage"] = value; }

    }

    private int fistIndex
    {

        get
        {



            int _FirstIndex = 0;

            if (ViewState["_FirstIndex"] == null)
            {

                _FirstIndex = 0;

            }

            else
            {

                _FirstIndex = Convert.ToInt32(ViewState["_FirstIndex"]);

            }

            return _FirstIndex;

        }

        set { ViewState["_FirstIndex"] = value; }

    }

    private int lastIndex
    {

        get
        {



            int _LastIndex = 0;

            if (ViewState["_LastIndex"] == null)
            {

                _LastIndex = 0;

            }

            else
            {

                _LastIndex = Convert.ToInt32(ViewState["_LastIndex"]);

            }

            return _LastIndex;

        }

        set { ViewState["_LastIndex"] = value; }

    }

    //private DataTable GetDataTable()
    //{

    //    DataTable dtItems = new DataTable();



    //    DataColumn dcName = new DataColumn();

    //    dcName.ColumnName = "title";

    //    dcName.DataType = System.Type.GetType("System.String");

    //    dtItems.Columns.Add(dcName);



    //    DataRow row;

    //    for (int i = 1; i <= 100; i++)
    //    {

    //        row = dtItems.NewRow();

    //        row["title"] = "Sample Row: I am putting here sample text for row " + i;

    //        dtItems.Rows.Add(row);



    //    }

    //    return dtItems;



    //}

    PagedDataSource _PageDataSource = new PagedDataSource();

    private void BindItemsList()
    {
        // DataTable dataTable = this.GetDataTable();


        _PageDataSource.DataSource = SimpleDT.DefaultView;
        //_PageDataSource.DataSource = dataTable.DefaultView;

        _PageDataSource.AllowPaging = true;

        _PageDataSource.PageSize = 5;

        _PageDataSource.CurrentPageIndex = CurrentPage;

        ViewState["TotalPages"] = _PageDataSource.PageCount;



        this.lblPageInfo.Text = "Page " + (CurrentPage + 1) + " of " + _PageDataSource.PageCount;

        this.lbtnPrevious.Enabled = !_PageDataSource.IsFirstPage;

        this.lbtnNext.Enabled = !_PageDataSource.IsLastPage;

        this.lbtnFirst.Enabled = !_PageDataSource.IsFirstPage;

        this.lbtnLast.Enabled = !_PageDataSource.IsLastPage;



        this.listsearch.DataSource = _PageDataSource;
        this.listsearch.DataBind();

        this.doPaging();

    }

    private void doPaging()
    {

        DataTable dt = new DataTable();

        dt.Columns.Add("PageIndex");

        dt.Columns.Add("PageText");



        fistIndex = CurrentPage - 5;



        if (CurrentPage > 5)
        {

            lastIndex = CurrentPage + 5;

        }

        else
        {

            lastIndex = 10;

        }

        if (lastIndex > Convert.ToInt32(ViewState["TotalPages"]))
        {

            lastIndex = Convert.ToInt32(ViewState["TotalPages"]);

            fistIndex = lastIndex - 10;

        }

        if (fistIndex < 0)
        {
            fistIndex = 0;

        }

        for (int i = fistIndex; i < lastIndex; i++)
        {

            DataRow dr = dt.NewRow();

            dr[0] = i;

            dr[1] = i + 1;

            dt.Rows.Add(dr);

        }
        this.dlPaging.DataSource = dt;

        this.dlPaging.DataBind();

    }



}
