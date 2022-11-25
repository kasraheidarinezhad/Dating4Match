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

public partial class Alert : System.Web.UI.Page
{
    Partner_DS.PARTNER_SELECTDataTable PDT = new Partner_DS.PARTNER_SELECTDataTable();
    Partner_DSTableAdapters.PARTNER_SELECTTableAdapter PAdapter = new Partner_DSTableAdapters.PARTNER_SELECTTableAdapter();

    Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter =new Registration_DSTableAdapters.REGI_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
            if (Session["sex"].ToString() == "MALE")
            {
                lblsex.Text = "Bride";
            }
            else if (Session["sex"].ToString() == "FEMALE")
            {
                lblsex.Text = "Groom";
            }

            PDT = PAdapter.SelectByUsername(Session["username"].ToString());

            lblagefrom.Text = PDT.Rows[0]["agefrom"].ToString();

            lblageto.Text = PDT.Rows[0]["ageto"].ToString();
            lbleducation.Text = PDT.Rows[0]["education"].ToString();
            lblfamily.Text = PDT.Rows[0]["familytype"].ToString();
            lblheightfrom.Text = PDT.Rows[0]["heightfrom"].ToString();
            lblheightto.Text = PDT.Rows[0]["heightto"].ToString();
            lbllocation.Text = PDT.Rows[0]["location"].ToString();
            lblmangal.Text = PDT.Rows[0]["mangal"].ToString();

            if (!IsPostBack)
            {

                Registration_DS.PARTNER_MATCHES1DataTable AlertDT = new Registration_DS.PARTNER_MATCHES1DataTable();
                Registration_DSTableAdapters.PARTNER_MATCHES1TableAdapter AlertAdapter = new Registration_DSTableAdapters.PARTNER_MATCHES1TableAdapter();

                AlertDT = AlertAdapter.SelectAlertCountt(Session["username"].ToString(), Session["sex"].ToString());
                //RegDT = RegAdapter.SelectMatchesProfile(Session["username"].ToString());
                listmatch.DataSource = AlertDT;
                listmatch.DataBind();
                pnlpaging.Visible = false;
            }
        }



        catch (Exception)
        { }

    }

    Alert_DS.REGI_SEARCH_PARTNER_ALERTDataTable AlertDTT = new Alert_DS.REGI_SEARCH_PARTNER_ALERTDataTable();
    Alert_DSTableAdapters.REGI_SEARCH_PARTNER_ALERTTableAdapter AlertAAdapter = new Alert_DSTableAdapters.REGI_SEARCH_PARTNER_ALERTTableAdapter();

    protected void btnsearchalert_Click(object sender, EventArgs e)
    {
        try
        {
           
            int agefrom = Convert.ToInt32(lblagefrom.Text);
            int ageto = Convert.ToInt32(lblageto.Text);

            string sex = "";
            if (Session["sex"].ToString() == "MALE")
            {
                sex = "FEMALE";
            }
            else
            {
                sex = "MALE";
            }

            string edu = "";
            if (chkeducation.Checked == true)
            {
                edu = lbleducation.Text;

            }
            else
            {
                edu = "ALL";
            }

            string city = "";
            if (chklocation.Checked == true)
            {
                city = lbllocation.Text;
            }
            else
            {
                city = "ALL";
            }

            if (chkage.Checked == true && chkftype.Checked == true)
            {
                AlertDTT = AlertAAdapter.SelectSearchAlert(1, sex, Convert.ToInt32(lblagefrom.Text), Convert.ToInt32(lblageto.Text), edu, city, lblfamily.Text);
                BindDataList();
               // listmatch.DataSource = AlertDTT;
               //listmatch.DataBind();

            }
            else if (chkftype.Checked == true && chkage.Checked == false)
            {
                AlertDTT = AlertAAdapter.SelectSearchAlert(3, sex, Convert.ToInt32(lblagefrom.Text), Convert.ToInt32(lblageto.Text), edu, city, lblfamily.Text);

               BindDataList();
              //  listmatch.DataSource = AlertDTT;
               // listmatch.DataBind();
            }
            else if (chkage.Checked == true && chkftype.Checked == false)
            {
                AlertDTT = AlertAAdapter.SelectSearchAlert(2, sex, Convert.ToInt32(lblagefrom.Text), Convert.ToInt32(lblageto.Text), edu, city, lblfamily.Text);

                BindDataList();
               // listmatch.DataSource = AlertDTT;
               //listmatch.DataBind();
            }
        }
        catch (Exception)
        { }
    }
    protected void listmatch_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "viewmore")
            {
                Session["viewid"] = listmatch.DataKeys[e.Item.ItemIndex].ToString();
                Response.Redirect("user.aspx");
            }
        }
        catch (Exception)
        { }
    }


    //paging ..

    protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try
        {

            if (e.CommandName.Equals("Paging"))
            {

                CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());

                this.BindDataList();

            }
        }
        catch (Exception)
        { }
    }

    protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        try
        {
            LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");

            if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
            {

                lnkbtnPage.Enabled = false;

                lnkbtnPage.Style.Add("fone-size", "14px");

                lnkbtnPage.Font.Bold = true;
            }
        }
        catch (Exception)
        { }

    }

    protected void lbtnNext_Click(object sender, EventArgs e)
    {

        CurrentPage += 1;

        this.BindDataList();

    }

    protected void lbtnPrevious_Click(object sender, EventArgs e)
    {

        CurrentPage -= 1;

        this.BindDataList();

    }

    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        CurrentPage = (Convert.ToInt32(ViewState["TotalPages"]) - 1);

        this.BindDataList();
    }

    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        CurrentPage = 0;
        this.BindDataList();
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


    PagedDataSource _PageDataSource = new PagedDataSource();

    private void BindDataList()
    {
        try
        {

            int agefrom = Convert.ToInt32(lblagefrom.Text);
            int ageto = Convert.ToInt32(lblageto.Text);

            string sex = "";
            if (Session["sex"].ToString() == "MALE")
            {
                sex = "FEMALE";
            }
            else
            {
                sex = "MALE";
            }

            string edu = "";
            if (chkeducation.Checked == true)
            {
                edu = lbleducation.Text;

            }
            else
            {
                edu = "ALL";
            }

            string city = "";
            if (chklocation.Checked == true)
            {
                city = lbllocation.Text;
            }
            else
            {
                city = "ALL";
            }


            if (chkage.Checked == true && chkftype.Checked == true)
            {
                AlertDTT = AlertAAdapter.SelectSearchAlert(1, sex, Convert.ToInt32(lblagefrom.Text), Convert.ToInt32(lblageto.Text), edu, city, lblfamily.Text);
                // BindDataList();
                //listmatch.DataSource = AlertDT;
                // listmatch.DataBind();

            }
            else if (chkftype.Checked == true && chkage.Checked == false)
            {
                AlertDTT = AlertAAdapter.SelectSearchAlert(3, sex, Convert.ToInt32(lblagefrom.Text), Convert.ToInt32(lblageto.Text), edu, city, lblfamily.Text);

                // BindDataList();
                //listmatch.DataSource = AlertDT;
                //listmatch.DataBind();
            }
            else if (chkage.Checked == true && chkftype.Checked == false)
            {
                AlertDTT = AlertAAdapter.SelectSearchAlert(2, sex, Convert.ToInt32(lblagefrom.Text), Convert.ToInt32(lblageto.Text), edu, city, lblfamily.Text);

                // BindDataList();
                // listmatch.DataSource = AlertDT;
                // listmatch.DataBind();
            }


            //RegDT = RegAdapter.SelectRegistration();
            if (AlertDTT.Rows.Count > 5)
            {
                pnlpaging.Visible = true;
            }
            else
            {
                pnlpaging.Visible = false;
            }

            _PageDataSource.DataSource = AlertDTT.DefaultView;


            _PageDataSource.AllowPaging = true;

            _PageDataSource.PageSize = 5;

            _PageDataSource.CurrentPageIndex = CurrentPage;

            ViewState["TotalPages"] = _PageDataSource.PageCount;



            this.lblPageInfo.Text = "Page " + (CurrentPage + 1) + " of " + _PageDataSource.PageCount;

            this.lbtnPrevious.Enabled = !_PageDataSource.IsFirstPage;

            this.lbtnNext.Enabled = !_PageDataSource.IsLastPage;

            this.lbtnFirst.Enabled = !_PageDataSource.IsFirstPage;

            this.lbtnLast.Enabled = !_PageDataSource.IsLastPage;



            this.listmatch.DataSource = _PageDataSource;

            this.listmatch.DataBind();

            //dListItems.DataBind();

            this.doPaging();
        }
        catch (Exception)
        { }
    }

    private void doPaging()
    {
        try
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
        catch (Exception)
        { }
    }


}
