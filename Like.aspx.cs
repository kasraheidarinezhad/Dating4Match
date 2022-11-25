using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Like : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter =new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    int no = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ///string query = "SELECT * FROM tbl_products ORDER BY Caption";
            //SqlDataAdapter da = new SqlDataAdapter(query, con);
            //DataSet ds = new DataSet();

            RegDT=RegAdapter.SelectRegistration();


            PagedDataSource page = new PagedDataSource();
           
                    //CustomPaging page = new CustomPaging();
                   // DataTable dt = ds.Tables[0];
                    page.PageSize = 2;
                    page.DataSource = RegDT;
                    page.CurrentPageIndex = 0;
                    no = 1;
                    Session["DT"] = RegDT;
                    Session["page"] = page;
                    bindData(page, RegDT);

                    //set these properties for multi columns in datalist
                    dlProducts.RepeatColumns = 5;
                    dlProducts.RepeatDirection = RepeatDirection.Horizontal;
                
            
        }

    }

    void bindData(PagedDataSource page, DataTable dt)
    {
        try
        {
            dlProducts.DataSource = page.AllowCustomPaging;//DoPaging;
               dlProducts.DataBind();
            lbtnPre.Enabled = !page.IsFirstPage; //Enable / Disable Navigation Button
            lbtnNext.Enabled = !page.IsLastPage;
            lblStatus.Text = NavigationIndicator(); //Build Navigation Indicator 

            //for creating page index
            DataTable dt1 = new DataTable();
            dt1.Columns.Add("PageIndex");
            dt1.Columns.Add("PageText");

            for (int i = 0; i < page.PageCount; i++)
            {
                DataRow dr = dt1.NewRow();
                dr[0] = i;
                dr[1] = i + 1;
                dt1.Rows.Add(dr);
            }
            dlPaging.DataSource = dt1;
 dlPaging.DataBind();
        }
        catch (Exception)
        {
        }
        finally
        {
            page = null;
        }
    }


string NavigationIndicator()
 {
        string str = string.Empty;     //Page x Of Y
        str = Convert.ToString(((PagedDataSource)Session["page"]).CurrentPageIndex + 1) + " of " + ((PagedDataSource)Session["PAGE"]).PageCount.ToString() + " Page(s)";
        return str;
    }

//DataList Paging :

protected void lbtnPre_Click(object sender, EventArgs e)
 {
     int pageIndex = ((PagedDataSource)Session["page"]).CurrentPageIndex;
     if (!((PagedDataSource)Session["page"]).IsFirstPage)
            //Decrements the pageIndex by 1 (Move to Previous page)
         ((PagedDataSource)Session["page"]).CurrentPageIndex -= 1;
        else
         ((PagedDataSource)Session["page"]).CurrentPageIndex = pageIndex;

        //Binds the DataList with new pageIndex
     bindData(((PagedDataSource)Session["page"]), ((DataTable)Session["DT"]));
    }

protected void lbtnNext_Click(object sender, EventArgs e)
 {
     int pageIndex = ((PagedDataSource)Session["page"]).CurrentPageIndex;
     if (!((PagedDataSource)Session["page"]).IsLastPage)
            //Increments the pageIndex by 1 (Move to Next page)
         ((PagedDataSource)Session["page"]).CurrentPageIndex += 1;
        else
         ((PagedDataSource)Session["page"]).CurrentPageIndex = pageIndex;

        //Binds the DataList with new pageIndex
     bindData(((PagedDataSource)Session["page"]), ((DataTable)Session["DT"]));
    }

protected void dlProducts_SelectedIndexChanged(object sender, EventArgs e)
 {
        Response.Redirect("~/product_details.aspx?partnumber=" + dlProducts.DataKeyField[dlProducts.SelectedIndex].ToString());
    }

protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
 {
        if (e.CommandName == "Select")
        {
            no = int.Parse(e.CommandArgument.ToString()) + 1;
            ((PagedDataSource)Session["page"]).CurrentPageIndex = int.Parse(e.CommandArgument.ToString());
            //Binds the DataList with new pageIndex
            bindData(((PagedDataSource)Session["page"]), ((DataTable)Session["DT"]));

        }
    }

protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
 {
        LinkButton btn = (LinkButton)e.Item.FindControl("lnkbtnPaging");

        if (btn.Text == no.ToString())
        {
            btn.ForeColor = System.Drawing.Color.Black;
            btn.Font.Underline = false;
            Response.Write(btn.Text);
            Response.Write(no);
        }
        else
        {
            btn.ForeColor = System.Drawing.Color.Blue;
            btn.Font.Underline = false;
        }
   }

}
